import requests
import urllib.request
from bs4 import BeautifulSoup
import re

class Move:
    def __init__(self,n):
        self.name = n.strip()
        self.type = ""
        self.category = "n/a"
        self.min_power = 0
        self.max_power = 0
        self.accuracy = 0
        self.target = "n/a"
        self.cost = 0
        self.uses = 0
        self.description = ""
        self.sync = False
    
    def __str__(self):
        return "%s | %s | %s | %d-%d | %d | %s | %d | %d\n  %s" % (
            self.name, self.type, self.category,
            self.min_power, self.max_power, self.accuracy,
            self.target, self.cost, self.uses,
            self.description)
    
    def getTooltip(self):
        ret = ""
        if len(self.type) > 0:
            ret += "%s | %s<br>" % (self.type, self.category)
        else:
            ret += "%s<br>" % (self.category)
        if self.min_power > 0:
            ret += "Power: %d - %d<br>" % (self.min_power, self.max_power)
        if self.accuracy > 0:
            ret += "Accuracy: %d%%<br>" % self.accuracy
        ret += "Target: %s<br>" % self.target
        if self.cost > 0:
            ret += "Cost: %d<br>" % self.cost
        if self.uses > 0:
            ret += "Uses: %d<br>" % self.uses
        ret += self.description
        return ret

class Passive:
    def __init__(self,n,d):
        self.name = n
        self.description = d

    def __str__(self):
        return "%s | %s" % (self.name, self.description)

class SyncPair:
    def __init__(self,t,p,u):
        self.trainer = t
        self.pokemon = p
        self.url = "https://gamepress.gg" + u
        self.stats = [0, 0, 0, 0, 0, 0]
        self.type = "n/a"
        self.weak = "n/a"
        self.role = "n/a"
        self.potential = 3
        self.moves = []
        self.sync_move = 0
        self.passives = []
        self.imageurl = ""
    
    def __str__(self):
        ret = "%d* %s & %s | %s / %s / %s \nStats: %d/%d/%d/%d/%d/%d\nMoves:\n- %s\n- %s\n- %s\n- %s\nSync Move: %s\nPassives:\n" % (
            self.potential, self.trainer, self.pokemon,
            self.type, self.weak, self.role,
            self.stats[0], self.stats[1], self.stats[2],
            self.stats[3], self.stats[4], self.stats[5],
            self.moves[0], self.moves[1], self.moves[2], self.moves[3],
            self.sync_move)
        for i in self.passives:
            ret += "- %s\n" % i
        return ret
    
    def name(self):
        return "%s & %s" % (self.trainer, self.pokemon)

def fetch(url):
    resp = requests.get(url)
    if resp.ok:
        return resp.text
    else:
        print("ERROR")
        return resp.text

def getMoveInfo(m, sync=False):
    move_name = m.find("div", {"class": "sync-move-pokemon-page-title" if sync else "move-pokemon-page-title"}).get_text()
    move = Move(move_name)

    prefix = "sync" if sync else "move"

    # Get required fields
    m_type = m.find("tr", {"class": f"{prefix}-type"})
    m_category = m.find("tr", {"class": f"{prefix}-category"})
    m_power = m.find("th", text="Power")
    m_accuracy = m.find("th", text="Accuracy")
    m_target = m.find("tr", {"class": f"{prefix}-target"})
    m_uses = m.find("tr", {"class": f"{prefix}-uses"})
    m_cost = m.find("tr", {"class": f"{prefix}-cost"})

    # Make sure fields exist before writing information
    if m_type:
        move.type = m_type.find("td").get_text()
    if m_category:
        move.category = re.search("/([^/]*).png", m_category.find("img")["src"]).group(1).replace("%20", " ")
    if m_power:
        move.min_power = int(m_power.parent.find("span", {"class": "min-power"}).get_text())
        move.max_power = int(m_power.parent.find("span", {"class": "max-power"}).get_text())
    if m_accuracy:
        try:
            move.accuracy = int(m_accuracy.parent.find("td").get_text())
        except:
            move.accuracy = 0
    if m_target:
        move.target = m_target.find("td").get_text()
    if m_uses:
        move.uses = int(m_uses.find("td").get_text())
    if m_cost:
        move.cost = len(m_cost.findAll("div", {"class": "pokemon-cost-box-PG"}))

    if not sync:
        move.description = m.find("div", {"class": "move-effect"}).get_text()

    return move

def getSyncPairInfo(pair):
    content = fetch(pair.url)
    c = content
    soup = BeautifulSoup(content, "html.parser")

    # Get the table for basic sync pair information
    poke_info = soup.find("table", {"id": "pokemon-table"}).findAll("tr")

    # Extract data from the table
    pair.type = poke_info[0].find("td").get_text()
    pair.weak = poke_info[1].find("td").get_text()
    pair.role = poke_info[2].find("td").get_text()
    potential_img = poke_info[3].find("img")["src"]
    pair.potential = int(re.search("(\d)-star", potential_img).group(1))

    moves = soup.find("div", {"class": "view-moves-on-pokemon-node"}).findAll("div", {"class": "views-row"})
    sync_move = soup.find("div", {"class": "view-sync-move-on-pokemon-node"})
    passives = soup.find("div", {"class": "view-passive-skill-on-pokemon-node"}).findAll("div", {"class": "views-row"})

    # Fetch data for all moves
    for m in moves:
        move = getMoveInfo(m)
        pair.moves.append(move)

    # Fill rest of moveset with empty moves if there are less than 4 moves
    while len(pair.moves) < 4:
        pair.moves.append(Move("Empty"))

    # Get sync move info
    pair.sync_move = getMoveInfo(sync_move, True)
    pair.sync_move.description = soup.find("div", {"class": "sync-move-pokemon-page-right"}).get_text()

    # Get the name and description of passive abilities
    for p in passives:
        name = p.find("div", {"class": "passive-title"}).get_text()
        description = p.find("div", {"class": "passive-skill-effect"}).get_text()
        pair.passives.append(Passive(name, description))


def getGridPairs():
    content = fetch("https://pokemon-masters-stuff.github.io")

def getSyncPairs():
    content = fetch("https://gamepress.gg/pokemonmasters/database/sync-pair-list")

    sync_pairs = []

    soup = BeautifulSoup(content, "html.parser")

    stat_indices = [0, 1, 3, 2, 4, 5]

    pair_rows = soup.findAll("tr", {"class": "sync-pairs-new-row"})
    for p in pair_rows:
        # Get pair name and url from title
        title_cell = p.find("td", {"class": "title-cell"})
        name = title_cell.get_text()
        url = title_cell.find("a")["href"]

        # Create Pair object from split trainer and pokemon name
        partners = name.split("&")
        pair = SyncPair(partners[0].strip(), partners[1].strip(), url)

        # Extract image url, not every pair has an image
        image = re.search('src="(.*.png.*)"', str(title_cell))
        if image:
            pair.imageurl = "https://gamepress.gg" + image.group(1)

        # Extract stats from stat table
        stats = p.find("tbody").findAll("td")
        for i in range(6):
            pair.stats[stat_indices[i]] = int(stats[i].get_text())
        
        sync_pairs.append(pair)
    
    print("Found %d Sync Pairs" % len(sync_pairs))
    for p in range(len(sync_pairs)):
        print("Sync Pair %d/%d" % (p+1, len(sync_pairs)))
        getSyncPairInfo(sync_pairs[p])
    
    return sync_pairs

def createHTML(pairs):
    html = '''<html>
        <meta charset="UTF-8"> 
        <head>
        <link rel="stylesheet" href="style.css">
        </head>
        <body>

        <div class="main">
        <br>
        <h3>RARITY FILTER</h3>
        <div class="rarity-button filter" id="1"><a>1★</a></div>
        <div class="rarity-button filter" id="2"><a>2★</a></div>
        <div class="rarity-button filter" id="3"><a>3★</a></div>
        <div class="rarity-button filter" id="4"><a>4★</a></div>
        <div class="rarity-button filter" id="5"><a>5★</a></div>
        <br><br>
        <h3>TYPE FILTER</h3>
        <div class="type-button filter" id="Normal"><img src="images/Normal.png"/></div>
        <div class="type-button filter" id="Fire"><img src="images/Fire.png"/></div>
        <div class="type-button filter" id="Water"><img src="images/Water.png"/></div>
        <div class="type-button filter" id="Grass"><img src="images/Grass.png"/></div>
        <div class="type-button filter" id="Flying"><img src="images/Flying.png"/></div>
        <div class="type-button filter" id="Electric"><img src="images/Electric.png"/></div>
        <div class="type-button filter" id="Bug"><img src="images/Bug.png"/></div>
        <div class="type-button filter" id="Fighting"><img src="images/Fighting.png"/></div>
        <div class="type-button filter" id="Rock"><img src="images/Rock.png"/></div>
        <div class="type-button filter" id="Ground"><img src="images/Ground.png"/></div>
        <div class="type-button filter" id="Steel"><img src="images/Steel.png"/></div>
        <div class="type-button filter" id="Psychic"><img src="images/Psychic.png"/></div>
        <div class="type-button filter" id="Dark"><img src="images/Dark.png"/></div>
        <div class="type-button filter" id="Ghost"><img src="images/Ghost.png"/></div>
        <div class="type-button filter" id="Fairy"><img src="images/Fairy.png"/></div>
        <div class="type-button filter" id="Dragon"><img src="images/Dragon.png"/></div>
        <div class="type-button filter" id="Ice"><img src="images/Ice.png"/></div>
        <div class="type-button filter" id="Poison"><img src="images/Poison.png"/></div>
        <br>
        <button class="type-button-all-on filter filter-all"><a>All On</a></button>
        <button class="type-button-all-off filter filter-all"><a>All Off</a></button>
        <br><br>
        <h3>WEAKNESS FILTER</h3>
        <div class="weak-button filter" id="Normal"><img src="images/Normal.png"/></div>
        <div class="weak-button filter" id="Fire"><img src="images/Fire.png"/></div>
        <div class="weak-button filter" id="Water"><img src="images/Water.png"/></div>
        <div class="weak-button filter" id="Grass"><img src="images/Grass.png"/></div>
        <div class="weak-button filter" id="Flying"><img src="images/Flying.png"/></div>
        <div class="weak-button filter" id="Electric"><img src="images/Electric.png"/></div>
        <div class="weak-button filter" id="Bug"><img src="images/Bug.png"/></div>
        <div class="weak-button filter" id="Fighting"><img src="images/Fighting.png"/></div>
        <div class="weak-button filter" id="Rock"><img src="images/Rock.png"/></div>
        <div class="weak-button filter" id="Ground"><img src="images/Ground.png"/></div>
        <div class="weak-button filter" id="Steel"><img src="images/Steel.png"/></div>
        <div class="weak-button filter" id="Psychic"><img src="images/Psychic.png"/></div>
        <div class="weak-button filter" id="Dark"><img src="images/Dark.png"/></div>
        <div class="weak-button filter" id="Ghost"><img src="images/Ghost.png"/></div>
        <div class="weak-button filter" id="Fairy"><img src="images/Fairy.png"/></div>
        <div class="weak-button filter" id="Dragon"><img src="images/Dragon.png"/></div>
        <div class="weak-button filter" id="Ice"><img src="images/Ice.png"/></div>
        <div class="weak-button filter" id="Poison"><img src="images/Poison.png"/></div>
        <br>
        <button class="weak-button-all-on filter filter-all"><a>All On</a></button>
        <button class="weak-button-all-off filter filter-all"><a>All Off</a></button>
        <br><br>
        <h3>ROLE FILTER</h3>
        <div class="role-button filter" id="Strike (Physical)"><a>Strike (Physical)</a></div>
        <div class="role-button filter" id="Strike (Special)"><a>Strike (Special)</a></div>
        <div class="role-button filter" id="Tech"><a>Tech</a></div>
        <div class="role-button filter" id="Support"><a>Support</a></div>
        <br><br><br>
        <table>
        <thead>
        <tr>
        <th class="headerSort" tabindex="0" role="columnheader button" title="Sort ascending">Icon</th>
        <th class="headerSort" tabindex="0" role="columnheader button" title="Sort ascending">Name</th>
        <th class="headerSort" tabindex="0" role="columnheader button" title="Sort ascending">Rarity</th>
        <th class="headerSort" tabindex="0" role="columnheader button" title="Sort ascending">Type</th>
        <th class="headerSort" tabindex="0" role="columnheader button" title="Sort ascending">Weak</th>
        <th class="headerSort" tabindex="0" role="columnheader button" title="Sort ascending">Role</th>
        <th class="headerSort" tabindex="0" role="columnheader button" title="Sort ascending">HP</th>
        <th class="headerSort" tabindex="0" role="columnheader button" title="Sort ascending">ATK</th>
        <th class="headerSort" tabindex="0" role="columnheader button" title="Sort ascending">DEF</th>
        <th class="headerSort" tabindex="0" role="columnheader button" title="Sort ascending">SPA</th>
        <th class="headerSort" tabindex="0" role="columnheader button" title="Sort ascending">SPD</th>
        <th class="headerSort" tabindex="0" role="columnheader button" title="Sort ascending">SPE</th>
        <th class="headerSort" tabindex="0" role="columnheader button" title="Sort ascending">Moves</th>
        <th class="headerSort" tabindex="0" role="columnheader button" title="Sort ascending">Sync Move</th>
        <th class="headerSort" tabindex="0" role="columnheader button" title="Sort ascending">Passives</th>
        </tr>
        </thead>
        <tbody>
        '''
    
    for p in pairs:
        html += '''<tr class="sync-pair">
            <td><img src="%s"/></td>
            <td>%s & %s</td>
            <td class="rarity">%d★</td>
            <td class="type" id="%s"><img src="images/%s.png"/></td>
            <td class="weak" id="%s"><img src="images/%s.png"/></td>
            <td class="role" id="%s">%s</td>
            <td>%d</td>
            <td>%d</td>
            <td>%d</td>
            <td>%d</td>
            <td>%d</td>
            <td>%d</td>
            <td>
            <span class="tooltip">
                <a class="move">%s</a>
                <span class="tooltiptext tooltiptext-long">
                    %s
                </span>
            </span><br>
            <div class="seperator"/>
            <span class="tooltip">
                <a class="move">%s</a>
                <span class="tooltiptext tooltiptext-long">
                    %s
                </span>
            </span><br>
            <div class="seperator"/>
            <span class="tooltip">
                <a class="move">%s</a>
                <span class="tooltiptext tooltiptext-long">
                    %s
                </span>
            </span><br>
            <div class="seperator"/>
            <span class="tooltip">
                <a class="move">%s</a>
                <span class="tooltiptext tooltiptext-long">
                    %s
                </span>
            </span><br>
            </td>
            <td>
            <span class="tooltip">
                <a class="move sync-move">%s</a>
                <span class="tooltiptext tooltiptext-long">
                    %s
                </span>
            </span><br>
            </td>
            <td>
            ''' % (p.imageurl, p.trainer, p.pokemon,
                p.potential, p.type, p.type,
                p.weak, p.weak, p.role, p.role,
                p.stats[0], p.stats[1], p.stats[2],
                p.stats[3], p.stats[4], p.stats[5],
                p.moves[0].name, p.moves[0].getTooltip(),
                p.moves[1].name, p.moves[1].getTooltip(),
                p.moves[2].name, p.moves[2].getTooltip(),
                p.moves[3].name, p.moves[3].getTooltip(),
                p.sync_move.name, p.sync_move.getTooltip())
        for i in p.passives:
            html += '''<span class="tooltip">
                <a class="passive">%s</a>
                <span class="tooltiptext tooltiptext-long">
                    %s
                </span>
                </span><br>
                ''' % (i.name, i.description)

        html += "</td></tr>"

    html += '''</tbody>
        </table>
        </div>

        <script>
            off_rarity = [];
            off_types = [];
            off_weaks = [];
            off_roles = [];

            function update() {
                var pairs = document.querySelectorAll(".sync-pair");
                pairs.forEach(p => {
                    var rarity = p.querySelector(".rarity").innerHTML.substring(0, 1);
                    var type = p.querySelector(".type").id;
                    var weak = p.querySelector(".weak").id;
                    var role = p.querySelector(".role").id;

                    if (off_rarity.includes(rarity) || off_types.includes(type) ||
                        off_weaks.includes(weak) || off_roles.includes(role)) {
                        p.classList.add("sync-pair-hidden");
                    } else {
                        p.className = "sync-pair";
                    }
                });
            }

            var rarity_buttons = document.querySelectorAll(".rarity-button");
            rarity_buttons.forEach(b =>
                b.addEventListener("click", function() {
                    if (off_rarity.includes(b.id)) {
                        b.classList.remove("filter-off");
                        off_rarity.splice(off_rarity.indexOf(b.id), 1);
                    } else {
                        b.classList.add("filter-off");
                        off_rarity.push(b.id);
                    }
                    update();
                })
            );

            var type_buttons = document.querySelectorAll(".type-button");
            type_buttons.forEach(b =>
                b.addEventListener("click", function() {
                    if (off_types.includes(b.id)) {
                        b.classList.remove("filter-off");
                        off_types.splice(off_types.indexOf(b.id), 1);
                    } else {
                        b.classList.add("filter-off");
                        off_types.push(b.id);
                    }
                    update();
                })
            );

            var weak_buttons = document.querySelectorAll(".weak-button");
            weak_buttons.forEach(b =>
                b.addEventListener("click", function() {
                    if (off_weaks.includes(b.id)) {
                        b.classList.remove("filter-off");
                        off_weaks.splice(off_weaks.indexOf(b.id), 1);
                    } else {
                        b.classList.add("filter-off");
                        off_weaks.push(b.id);
                    }
                    update();
                })
            );

            var role_buttons = document.querySelectorAll(".role-button");
            role_buttons.forEach(b =>
                b.addEventListener("click", function() {
                    if (off_roles.includes(b.id)) {
                        b.classList.remove("filter-off");
                        off_roles.splice(off_roles.indexOf(b.id), 1);
                    } else {
                        b.classList.add("filter-off");
                        off_roles.push(b.id);
                    }
                    update();
                })
            );

            document.querySelector(".type-button-all-on").addEventListener("click", function() {
                off_types = []
                type_buttons.forEach(b => {
                    b.classList.remove("filter-off");
                });
                update();
            });

            document.querySelector(".weak-button-all-on").addEventListener("click", function() {
                off_weaks = []
                weak_buttons.forEach(b => {
                    b.classList.remove("filter-off");
                });
                update();
            });

            document.querySelector(".type-button-all-off").addEventListener("click", function() {
                type_buttons.forEach(b => {
                    if (!b.className.includes("filter-off")) {
                        b.classList.add("filter-off");
                        off_types.push(b.id);
                    }
                });
                update();
            });

            document.querySelector(".weak-button-all-off").addEventListener("click", function() {
                weak_buttons.forEach(b => {
                    if (!b.className.includes("filter-off")) {
                        b.classList.add("filter-off");
                        off_weaks.push(b.id);
                    }
                });
                update();
            });
        </script>

        </body>
        </html>
        '''

    f = open("index.html", "w")
    f.write(html)
    f.close()


def downloadIcons(pairs):
    opener = urllib.request.build_opener()
    # 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2228.0 Safari/537.3'
    opener.addheaders = [('User-agent', 'Mozilla/5.0')]
    for i in range(len(pairs)):
        try:
            fileurl = pairs[i].imageurl
            filename = "icons" + fileurl[fileurl.rfind('/'):fileurl.rfind('?')]
            filename = filename.replace("%20", "")
            data = opener.open(fileurl).read()
            f = open(filename, "wb")
            f.write(data)
            f.close()
            pairs[i].imageurl = filename
            print("Downloading Icons %d/%d [SUCCESS] %s" % (i + 1, len(pairs), filename))
        except:
            print("Downloading Icons %d/%d [FAILED] %s" % (i + 1, len(pairs), filename))

def main():
    sync_pairs = getSyncPairs()

    downloadIcons(sync_pairs)

    print("Creating HTML...")

    createHTML(sync_pairs)

if __name__ == "__main__":
    main()