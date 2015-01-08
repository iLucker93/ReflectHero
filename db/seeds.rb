Item.create!([
  {name: "knife", format: "weapon", price_sell: 25, weight: 40, attack: 17, defence: 0, slots: 4, jobs: "all", genders: "both", weapon_lvl: 1, refine: true, script: ""},
  {name: "Main Gauche", format: "weapon", price_sell: 1200, weight: 60, attack: 43, defence: 0, slots: 3, jobs: "all", genders: "both", weapon_lvl: 1, refine: true, script: ""},
  {name: "empty bottle", format: "etc", price_sell: 3, weight: 2, attack: 0, defence: 0, slots: 0, jobs: "all", genders: "both", weapon_lvl: 0, refine: false, script: ""},
  {name: "garlet", format: "etc", price_sell: 20, weight: 40, attack: 0, defence: 0, slots: 0, jobs: "all", genders: "both", weapon_lvl: 0, refine: false, script: ""}
])
Map.create!([
  {name: "new_zone03"}
])
Monster.create!([
  {name: "Poring", lvl: 1, hp: 50, sp: 0, exp: 2, jexp: 1, atk: 1, def: 0, mdef: 5, str: 1, agi: 1, vit: 1, int: 0, dex: 6, luk: 30, map_id: 1, element: "water_3", item_drop: 3, item_chance: 10.0, equip_drop: 1, equip_chance: 10.0, quest_drop: 3, quest_chance: 15.0, card_drop: 4001, card_chance: 0.01},
  {name: "Poporing", lvl: 14, hp: 344, sp: 0, exp: 81, jexp: 44, atk: 72, def: 0, mdef: 10, str: 1, agi: 14, vit: 14, int: 0, dex: 19, luk: 15, map_id: 1, element: "poison_1", item_drop: 4, item_chance: 2.0, equip_drop: 2, equip_chance: 0.05, quest_drop: 4, quest_chance: 15.0, card_drop: 4033, card_chance: 0.01}
])