Config = {}

Config.UseTarget = GetConvar('UseTarget', 'false') == 'true' -- Use qb-target interactions (don't change this, go to your server.cfg and add `setr UseTarget true` to use this and just that from true to false or the other way around)

Config.MaxInventoryWeight = 160000 -- Max weight a player can carry (default 120kg, written in grams)
Config.MaxInventorySlots = 40 -- Max inventory slots for a player

Config.CleanupDropTime = 15 * 20 -- How many seconds it takes for drops to be untouched before being deleted
Config.MaxDropViewDistance = 12.5 -- The distance in GTA Units that a drop can be seen
Config.UseItemDrop = false -- This will enable item object to spawn on drops instead of markers
Config.ItemDropObject = `sf_prop_sf_backpack_01a` -- if Config.UseItemDrop is true, this will be the prop that spawns for the item

Config.Progressbar = {
    Enable = false,         -- True to Enable the progressbar while opening inventory
    minT = 350,             -- Min Time for Inventory to open
    maxT = 500              -- Max Time for Inventory to open
}

Config.VendingObjects = {
    "prop_vend_soda_01",
    "prop_vend_soda_02",
    "prop_vend_water_01"
}

Config.BinObjects = {
    "prop_bin_05a",
}

Config.CraftingObject = `ex_prop_ex_toolchest_01` -- Only needed if not using target | Line 928 to change Target Models

Config.VendingItem = {
    [1] = {
        name = "kurkakola",
        price = 4,
        amount = 50,
        info = {},
        type = "item",
        slot = 1,
    },
    [2] = {
        name = "water_bottle",
        price = 4,
        amount = 50,
        info = {},
        type = "item",
        slot = 2,
    },
}

Config.CraftingItems = {
    [1] = {
        name = "lockpick",
        amount = 50,
        info = {},
        costs = {
            ["hqscrap_metal"] = 8,
        },
        type = "item",
        slot = 1,
        threshold = 0,
        points = 1,
    },
    [2] = {
        name = "advancedlockpick",
        amount = 50,
        info = {},
        costs = {
            ["hqscrap_metal"] = 8,
            ["hqcopper"] = 8,
        },
        type = "item",
        slot = 2,
        threshold = 0,
        points = 1,
    },
    [3] = {
        name = "lockpickset",
        amount = 50,
        info = {},
        costs = {
            ["hqscrap_metal"] = 10,
        },
        type = "item",
        slot = 3,
        threshold = 0,
        points = 1,
    },
    [4] = {
        name = "drill",
        amount = 50,
        info = {},
        costs = {
            ["hqscrap_metal"] = 10,
            ["hqsteel"] = 10,
            ["lockpickset"] = 3,
            ["hqplastic"] = 8,
            ["electronickit"] = 7,
        },
        type = "item",
        slot = 4,
        threshold = 0,
        points = 1,
    },
}

Config.AttachmentCraftingLocation = vector3(88.91, 3743.88, 40.77) -- Only needed if not using target

Config.AttachmentCrafting = {
    -- [1] = {
    --     name = "suppressor_attachment",
    --     amount = 50,
    --     info = {},
    --     costs = {
    --         ["metalscrap"] = 140,
    --         ["steel"] = 250,
    --         ["rubber"] = 60,
    --     },
    --     type = "item",
    --     slot = 1,
    --     threshold = 0,
    --     points = 1,
    -- },
    -- [2] = {
    --     name = "smallscope_attachment",
    --     amount = 50,
    --     info = {},
    --     costs = {
    --         ["metalscrap"] = 165,
    --         ["steel"] = 285,
    --         ["rubber"] = 75,
    --     },
    --     type = "item",
    --     slot = 2,
    --     threshold = 10,
    --     points = 2,
    -- },
    -- [3] = {
    --     name = "clip_attachment",
    --     amount = 50,
    --     info = {},
    --     costs = {
    --         ["metalscrap"] = 165,
    --         ["steel"] = 285,
    --         ["rubber"] = 75,
    --     },
    --     type = "item",
    --     slot = 3,
    --     threshold = 10,
    --     points = 3,
    -- },
}

BackEngineVehicles = {
    [`ninef`] = true,
    [`adder`] = true,
    [`vagner`] = true,
    [`t20`] = true,
    [`infernus`] = true,
    [`zentorno`] = true,
    [`reaper`] = true,
    [`comet2`] = true,
    [`comet3`] = true,
    [`jester`] = true,
    [`jester2`] = true,
    [`cheetah`] = true,
    [`cheetah2`] = true,
    [`prototipo`] = true,
    [`turismor`] = true,
    [`pfister811`] = true,
    [`ardent`] = true,
    [`nero`] = true,
    [`nero2`] = true,
    [`tempesta`] = true,
    [`vacca`] = true,
    [`bullet`] = true,
    [`osiris`] = true,
    [`entityxf`] = true,
    [`turismo2`] = true,
    [`fmj`] = true,
    [`re7b`] = true,
    [`tyrus`] = true,
    [`italigtb`] = true,
    [`penetrator`] = true,
    [`monroe`] = true,
    [`ninef2`] = true,
    [`stingergt`] = true,
    [`surfer`] = true,
    [`surfer2`] = true,
    [`gp1`] = true,
    [`autarch`] = true,
    [`tyrant`] = true
}

Config.MaximumAmmoValues = {
    ["pistol"] = 250,
    ["smg"] = 250,
    ["shotgun"] = 200,
    ["rifle"] = 250,
}

-- it works but this is for mh-stashes but this script is not released yet.
-- this is needed in the inventory config, or the get many errors.
-- all default true.
Config.Stashes = { 
    ["walletstash"] = true, 
    ["cashstash"] = true, 
    ["drugsstash"] = true, 
    ["weaponstash"] = true,
    ['smallbagstash'] = true,
    ['mediumbagstash'] = true,
    ['largebagstash'] = true,
    ["missionstash"] = true,
}

-- only jobs can open trunks of job vehicles,
-- if you are driving a police car you need to be a police to able to open this trunk, same for the amulance
-- this so other players can't steel stuff.
Config.OnlyJobCanOpenJobVehicleTrucks = true -- defailt true

-- vehicle class max trunk weight and slots
 
Config.TrunkSpace = {
    ['default'] = {  slots = 35, maxWeight = 60000 }, -- All the vehicle class that not listed here will use this as default
    [0] = { slots = 30, maxWeight = 38000 },   -- Compacts
    [1] = { slots = 40, maxWeight = 50000 },   -- Sedans
    [2] = { slots = 50, maxWeight = 75000 },   -- SUVs
    [3] = { slots = 35, maxWeight = 42000 },   -- Coupes
    [4] = { slots = 30, maxWeight = 38000 },   -- Muscle
    [5] = { slots = 25, maxWeight = 30000 },   -- Sports Classics
    [6] = { slots = 25, maxWeight = 30000 },   -- Sports
    [7] = { slots = 25, maxWeight = 30000 },   -- Super
    [8] = { slots = 15, maxWeight = 15000 },   -- Motorcycles
    [9] = { slots = 35, maxWeight = 60000 },   -- Off-road
    [12] = { slots = 35, maxWeight = 120000 }, -- Vans
    [13] = { slots = 0, maxWeight = 0 },       -- Cycles
    [14] = { slots = 50, maxWeight = 120000 }, -- Boats
    [15] = { slots = 50, maxWeight = 120000 }, -- Helicopters
    [16] = { slots = 50, maxWeight = 120000 }, -- Planes
}

Config.DropItems = {
    -- weed_skunk = `prop_stockade_wheel_flat`,
    -- lockpick = `v_res_tre_plant`,
    -- jerry_can = `prop_jerrycan_01a`,


    weapon_dagger = `prop_w_me_dagger`,
    weapon_bat = `p_cs_bbbat_01`,
    weapon_bottle = `prop_w_me_bottle`,
    weapon_crowbar = `prop_ing_crowbar`,
    --   weapon_flashlight = `w_pi_pistol_mag1`,
    weapon_golfclub = `prop_golf_iron_01`,
    weapon_hammer = `prop_tool_hammer`,
    weapon_hatchet = `prop_w_me_hatchet`,
    -- weapon_knuckle = `w_pi_pistol_mag1`,
    weapon_knife = `prop_cs_bowie_knife`,
    weapon_machete = `prop_ld_w_me_machette`,
    -- weapon_switchblade = `w_pi_pistol_mag1`,
    weapon_nightstick = `w_me_nightstick`,
    weapon_wrench = `prop_tool_wrench`,
    weapon_battleaxe = `prop_tool_fireaxe`,
    weapon_poolcue = `prop_pool_cue`,
    weapon_briefcase = `prop_security_case_01`,
    weapon_briefcase_02 = `prop_security_case_01`,
    weapon_garbagebag = `prop_rub_binbag_sd_01`,
    weapon_handcuffs = `prop_cs_cuffs_01`,
    weapon_bread = `v_ret_247_bread1`,

    --handguns
    weapon_pistol = `w_pi_combatpistol_luxe`,
    weapon_pistol_mk2 = `weapon_pistol_mk2`,
    weapon_combatpistol = `w_pi_combatpistol`,
    weapon_stungun = `w_pi_stungun`,
    weapon_pistol50 = `w_pi_pistol50`,
    weapon_snspistol = `w_pi_sns_pistol`,
    weapon_heavypistol = `w_pi_heavypistol`,
    weapon_vintagepistol = `w_pi_vintage_pistol`,
    weapon_revolver = `w_pi_heavypistol`,

    --submachine guns
    weapon_microsmg = `w_sb_microsmg`,
    weapon_smg = `w_sb_smg`,
    weapon_smg_mk2 = `w_sb_smg`,
    weapon_assaultsmg = `w_sb_smg`,
    weapon_combatpdw = `w_sb_smg`,
    weapon_machinepistol = `w_pi_appistol`,
    weapon_minismg = `w_sb_smg`,

    --shotguns
    weapon_pumpshotgun = `w_sg_pumpshotgun`,
    weapon_sawnoffshotgun = `w_sg_sawnoff`,
    weapon_musket = `w_ar_musket`,
    weapon_dbshotgun = `w_sg_pumpshotgun`,

    -- AR
    weapon_assaultrifle = `w_ar_assaultrifle`,
    weapon_assaultrifle_mk2 = `w_ar_assaultrifle`,
    weapon_carbinerifle = `w_ar_carbinerifle`,
    weapon_carbinerifle_mk2 = `w_ar_carbinerifle`,
    weapon_advancedrifle = `w_ar_advancedrifle`,
    weapon_specialcarbine = `w_ar_specialcarbine`,
    weapon_bullpuprifle = `w_ar_bullpuprifle`,


    --random weapon
    weapon_petrolcan = `prop_jerrycan_01a`,


    -- Ammo
    pistol_ammo = `prop_ld_ammo_pack_01`,
    rifle_ammo =    `prop_ld_ammo_pack_03`,
    smg_ammo =   `prop_ld_ammo_pack_03`,
    shotgun_ammo = `prop_ld_ammo_pack_02`,
    mg_ammo =  `prop_box_ammo01a`,
    snp_ammo  =  `prop_box_ammo01a`,


    -- Pistol Attachments
    pistol_defaultclip = `w_pi_sns_pistol_mag1`,
    pistol_extendedclip = `w_pi_sns_pistol_mag1`,
    --   pistol_flashlight = `w_pi_sns_pistol_mag1`,
    pistol_suppressor = `w_at_pi_supp`,
    pistol_luxuryfinish = `prop_paints_can05`,
    combatpistol_defaultclip = `w_pi_sns_pistol_mag1`,
    combatpistol_extendedclip = `w_pi_sns_pistol_mag1`,
    combatpistol_luxuryfinish = `prop_paints_can05`,
    appistol_defaultclip = `w_pi_sns_pistol_mag1`,
    appistol_extendedclip = `w_pi_sns_pistol_mag1`,
    appistol_luxuryfinish = `prop_paints_can05`,
    pistol50_defaultclip = `w_pi_sns_pistol_mag1`,
    pistol50_extendedclip = `w_pi_sns_pistol_mag1`,
    pistol50_luxuryfinish = `prop_paints_can05`,
    revolver_defaultclip = `w_pi_sns_pistol_mag1`,
    snspistol_defaultclip = `w_pi_sns_pistol_mag1`,
    snspistol_extendedclip = `w_pi_sns_pistol_mag1`,
    snspistol_grip = `w_at_ar_afgrip`,
    heavypistol_defaultclip = `w_pi_sns_pistol_mag1`,
    heavypistol_extendedclip = `w_pi_sns_pistol_mag1`,
    heavypistol_grip = `w_at_ar_afgrip`,
    vintagepistol_defaultclip = `w_pi_sns_pistol_mag1`,
    vintagepistol_extendedclip = `w_pi_sns_pistol_mag1`,

    --SMG attachments
    microsmg_defaultclip = `w_pi_sns_pistol_mag1`,
    microsmg_extendedclip = `w_pi_sns_pistol_mag1`,
    microsmg_scope = `w_at_scope_medium`,
    microsmg_luxuryfinish = `prop_paints_can05`,
    smg_defaultclip = `w_pi_sns_pistol_mag1`,
    smg_extendedclip = `w_pi_sns_pistol_mag1`,
    smg_suppressor = `w_pi_sns_pistol_mag1`,
    smg_drum = `w_mg_mg_mag1`,
    smg_scope = `w_at_scope_medium`,
    smg_luxuryfinish = `prop_paints_can05`,
    assaultsmg_defaultclip = `w_pi_sns_pistol_mag1`,
    assaultsmg_extendedclip = `w_pi_sns_pistol_mag1`,
    assaultsmg_luxuryfinish = `prop_paints_can05`,
    machinepistol_defaultclip = `w_pi_sns_pistol_mag1`,
    machinepistol_extendedclip = `w_pi_sns_pistol_mag1`,
    machinepistol_drum = `w_mg_mg_mag1`,
    combatpdw_defaultclip = `w_pi_sns_pistol_mag1`,
    combatpdw_extendedclip = `w_pi_sns_pistol_mag1`,
    combatpdw_drum = `w_mg_mg_mag1`,
    combatpdw_grip = `w_at_ar_afgrip`,

    -- RIFLE ATTACHMENTS
    assaultrifle_defaultclip = `w_ar_specialcarbine_mag2`,
    assaultrifle_extendedclip = `w_ar_specialcarbine_mag2`,
    assaultrifle_drum = `w_mg_mg_mag1`,
    rifle_grip = `w_at_ar_afgrip`,
    rifle_suppressor = `w_at_ar_supp`,
    assaultrifle_luxuryfinish = `prop_paints_can05`,
    carbinerifle_defaultclip = `w_ar_specialcarbine_mag2`,
    carbinerifle_extendedclip = `w_ar_specialcarbine_mag2`,
    carbinerifle_drum = `w_mg_mg_mag1`,
    carbinerifle_scope = `w_at_scope_medium`,
    carbinerifle_luxuryfinish = `prop_paints_can05`,
    combatpdw_scope = `w_at_scope_medium`,

    -- sniper
    weapon_sniperrifle = `w_sr_sniperrifle`,
    weapon_heavysniper = `w_sr_heavysniper`,
    weapon_marksmanrifle = `w_sr_marksmanrifle`,
    weapon_heavysniper_mk2 = `w_sr_heavysniper`,
    weapon_marksmanrifle_mk2 = `w_sr_marksmanrifle`,

    -- Thorwable
    weapon_molotov = `w_ex_molotov`,
    weapon_grenade = `w_ex_grenadefrag`,
    weapon_smokegrenade = `w_ex_grenadesmoke`,

    -- mat
    tosti = `prop_sandwich_01`,
    twerks_candy = `ng_proc_candy01a`,
    sandwich = `prop_sandwich_01`,

    -- drink
    water_bottle = `prop_ld_flow_bottle`,
    coffee = `p_amb_coffeecup_01`,
    kurkakola = `ng_proc_sodacan_01a`,
    -- ecola = `ng_proc_sodacan_01a`,
    ecola = `sprunk`,

    -- alkohol
    beer = `prop_prop_beer_pissh`,
    whiskey = `prop_bottle_richard`,
    vodka = `prop_vodka_bottle`,
    wine = `prop_wine_bot_01`,
    grapejuice = `prop_food_bs_juice03`,

    -- ID
    id_card = `p_ld_id_card_002`,
    driver_license = `prop_cs_swipe_card`,
    security_card_01 = `prop_cs_r_business_card`,
    security_card_02 = `prop_cs_r_business_card`,

    -- drugs
    weed_skunk = `prop_weed_bottle`,
    cokebaggy = `prop_meth_bag_01`,
    meth = `prop_meth_bag_01`,
    joint = `p_amb_joint_01`,
    cigar = `prop_sh_cigar_01`,
    rolling_paper = `p_cs_papers_01`,
    cigarette = `prop_cs_ciggy_01b`,

    --materials
    plastic = `prop_cs_cardbox_01`,
    metalscrap = `prop_cs_cardbox_01`,
    copper = `prop_cs_cardbox_01`,
    aluminum = `prop_cs_cardbox_01`,
    aluminumoxide = `prop_cs_cardbox_01`,
    iron = `prop_cs_cardbox_01`,
    ironoxide = `prop_cs_cardbox_01`,
    steel = `prop_cs_cardbox_01`,
    rubber = `prop_cs_cardbox_01`,
    glass = `prop_cs_cardbox_01`,
    cloth = `prop_cs_cardbox_01`,

    --tools
    lockpick = `prop_tool_screwdvr03`,
    advancedlockpick = `prop_tool_screwdvr03`,
    electronickit = `hei_prop_hst_usb_drive`,
    gatecrack = `hei_prop_hst_usb_drive`,
    thermite = `hei_prop_heist_thermite`,
    trojan_usb = `hei_prop_hst_usb_drive`,
    screwdriverset = `prop_tool_screwdvr03`,
    -- drill = `prop_tool_drill`,
    laserdrill = `hei_prop_heist_drill`,


    --vehicle tools
    repairkit = `prop_tool_box_06`,
    advancedrepairkit = `prop_tool_box_06`,
    cleaningkit = `prop_rag_01`,
    jerry_can = `w_am_jerrycan`,
    -- Medication
    firstaid = `prop_cs_pills`,
    bandage = `prop_cs_pills`,
    ifaks = `prop_cs_pills`,
    painkillers = `prop_cs_pills`,
    walkstick = `prop_cs_walking_stick`,

    -- Communication

    phone = `p_amb_phone_01`,
    radio = `prop_cs_walkie_talkie`,

    -- Theft and Jewelry
    rolex = `p_watch_04`,
    diamond_ring = `prop_jewel_03b`,
    goldchain = `p_jewel_necklace01_s`,
    goldbar = `hei_prop_heist_gold_bar`,
    --    radio = `prop_cs_walkie_talkie`,
    radio = `prop_cs_walkie_talkie`,

    -- Cops Tools
    armor = `prop_bodyarmour_03`,
    heavyarmor = `prop_bodyarmour_03`,
    empty_evidence_bag = `prop_meth_bag_01`,
    filled_evidence_bag = `prop_meth_bag_01`,

    -- Other Tools
    stickynote = `p_notepad_01_s`,
    parachute = `p_parachute_s`,
    binoculars = `prop_binoc_01`,
    lighter = `p_cs_lighter_01`,
    cash = `prop_anim_cash_pile_01`,
    markertesedler = `prop_anim_cash_pile_01`,


    -- Ransutstyr
    juvelen_bakrom = `prop_cs_r_business_card`,
    robbery_keycard_01 = `prop_cs_r_business_card`,
    robbery_keycard_02 = `prop_cs_r_business_card`,
    robbery_keycard_03 = `prop_cs_r_business_card`,
    robbery_keycard_04 = `prop_cs_r_business_card`,
    robbery_keycard_05 = `prop_cs_r_business_card`,
    robbery_keycard_06 = `prop_cs_r_business_card`,
    robbery_keycard_07 = `prop_cs_r_business_card`,

    -- jaksam
    doors_lockpick = `prop_tool_screwdvr03`,
    storbank_kort = `prop_cs_r_business_card`,
    hvelv_kort = `prop_cs_r_business_card`,
    eksplosiv = `prop_bomb_01`,

    -- Random
    cups = `prop_plastic_cup_02`,
    contract = `prop_cd_paper_pile3`,
    flyid = `prop_cs_swipe_card`,
    hacker_phone = `lb_phone_prop`,
    dogfood = `prop_paper_bag_01`,
    catfood = `prop_paper_bag_01`,
    chickenfood = `prop_paper_bag_01`,
    rentalpapers = `prop_cd_paper_pile3`,
    -- boombox = `prop_boombox_01`,
    security_card_03 = `prop_cs_r_business_card`,
    security_card_04 = `prop_cs_r_business_card`,
    spray = `prop_spraygun_01`,
    -- spray = `prop_rag_01`,

    --kq
    kq_outfitbag = `prop_cs_heist_bag_01`,

    towing_rope = `prop_trevor_rope_01`,

    -- sykehus
    crutch = `prop_cs_walking_stick`,
    wheelchair = `prop_wheelchair_01`,

    -- houserobbery
    powder = `prop_meth_bag_01`,
    watch = `p_watch_04`,
    toothpaste = `prop_toothpaste_01`,
    soap = `prop_toilet_soap_01`,
    shampoo = `prop_toilet_shamp_01`,
    romantic_book = `prop_cs_stock_book`,
    pencil = `prop_pencil_01`,
    notepad = `p_notepad_01_s`,
    necklace = `p_jewel_necklace01_s`,
    house_locator = `hei_prop_hst_usb_drive`,
    gold_watch = `p_watch_06`,
    gold_bracelet = `prop_jewel_03a`,
    earings = `p_tmom_earrings_s`,
    book = `prop_cs_stock_book`,
    bracelet = `prop_jewel_03a`,
    sculpture = `prop_toiletfoot_static`,
    j_phone = `lb_phone_prop`,
    tapeplayer = `prop_boombox_01`,
    coffemachine = `prop_coffee_mac_02`,
    bong = `prop_bong_01`,
    boombox = `prop_boombox_01`,
    console = `prop_console_01`,
    dj_deck = `prop_dj_deck_02`,
    shoebox = `prop_cs_cardbox_01`,
    fan = `prop_fan_01`,
    radio_alarm = `v_res_fa_radioalrm`,
    flat_television = `prop_tv_flat_michael`,
    television = `prop_tv_05`,
    monitor = `prop_monitor_w_large`,
    npc_phone = `lb_phone_prop`,
    printer = `prop_printer_02`,
    laptop = `prop_laptop_02_closed`,
    loot_bag = `prop_cs_heist_bag_01`,
    hack_laptop = `prop_laptop_02_closed`,
    toiletry = `prop_toilet_brush_01`,
    skull = `p_jewel_pickup33_s`,

    -- mask
    mask = `prop_mask_test_01`,

    --falsk legg
    info_usb = `hei_prop_hst_usb_drive`,
    clean_card = `p_ld_id_card_002`,


    --jaksam robberies creator
    hacking_computer = `prop_laptop_02_closed`,
    thermal_charge = `hei_prop_heist_thermite`,
    gas_mask = `prop_mask_test_01`,
    drill = `prop_tool_drill`,
    gold_ingot = `hei_prop_heist_gold_bar`,


    -- KamaKaZibO
    tablet = `prop_cs_tablet_02`,

    --tequilala
    appledrink = `prop_drink_whisky`,
    bananadrink = `prop_drink_whisky`,
    orangedrink = `prop_drink_whisky`,
    whiterum = `prop_drink_whisky`,
    brandy = `prop_drink_whisky`,
    wine_white = `prop_drink_whtwine`,
    wine_rose = `prop_drink_whtwine`,
    wine_red = `prop_drink_redwine`,
    tequila = `prop_drink_whtwine`,
    whiskey_richards = `prop_drink_whisky`,
    whiskey_macbeth = `prop_drink_whisky`,
    whiskey_mount = `prop_drink_whisky`,
    hamburger = `prop_cs_burger_01`,
    cheeseburger = `prop_cs_burger_01`,
    steak = `prop_cs_steak`,
    kiwi = `prop_bar_fruit`,
    sugar = `prop_food_sugarjar`,
    watermelon = `prop_bar_fruit`,
    banana = `prop_bar_fruit`,
    coconut = `prop_bar_fruit`,
    strawberry = `prop_bar_fruit`,
    apple = `prop_bar_fruit`,
    orange = `prop_bar_fruit`,
    daquiri = `prop_bar_fruit`,
    tracker = `hei_prop_hst_usb_drive`,

    -- ps-drugprocessing
    methtray = `prop_chem_vial_02`,
    coke = `prop_coke_block_01`,
    marijuana = `prop_weed_02`,

    -- GGC Custom Weapons -- Melees
    weapon_katana = `w_me_katana`,
    weapon_shiv = `w_me_shiv`,
    weapon_sledgehammer = `prop_tool_sledgeham`,
    weapon_karambit = `w_me_karambit`,
    weapon_keyboard = `w_me_keyboard`,

    -- GGC Custom Weapons -- Hand Guns
    weapon_glock17 = `w_pi_glock17_luxe`,
    weapon_glock18c = `w_pi_glock18c`,
    weapon_glock22 = `w_pi_glock22`,
    weapon_deagle = `deserteagle`,
    weapon_fnx45 = `w_pi_fnx45`,
    weapon_m1911 = `w_pi_m1911`,
    weapon_glock20 = `glock20`,
    weapon_glock19gen4 = `glock19gen4`,

    -- GGC Custom Weapons -- SMGs
    weapon_pmxfm = `pmx`,
    weapon_mac10 = `w_sb_mac10`,

    -- GGC Custom Weapons -- Rifles
    weapon_mk47fm = `MK47FluffysMods`,
    weapon_m6ic = `m6ic`,
    weapon_scarsc = `scarsc`,
    weapon_m4 = `w_ar_m4`,
    weapon_ak47 = `w_ar_ak47`,
    weapon_ak74 = `w_ar_ak74`,
    weapon_aks74 = `w_ar_assaultrifle_aks74`,
    weapon_groza = `w_ar_groza`,
    weapon_scarh = `w_ar_scarh`,

    -- Airsoft
    weapon_airsoftak47 = `airsoftak`,
    weapon_airsoftg36c = `airsoftg36`,
    weapon_airsoftglock20 = `airsoftglock20`,
    weapon_airsoftm4 = `airsoftm4a1`,
    weapon_airsoftm249 = `airsoftm249`,
    weapon_airsoftmicrouzi = `airsoftmicrouzi`,
    weapon_airsoftmp5 = `airsoftmp5`,
    weapon_airsoftr700 = `airsoftr700`,
    weapon_airsoftr870 = `airsoft870`,


    --R14 police
    nikon = `prop_pap_camera_01`,
    microfibercloth = `prop_rag_01`,

    basketball = `prop_bskball_01`,
    basketball_hoop = `stt_prop_hoop_small_01`,

    teddy = `v_ilev_mr_rasberryclean`,
    bunch_of_flowers = `prop_snow_flower_02`,
    rose = `prop_single_rose`,

    smalltv = `prop_tv_01`,
    mediumtv = `prop_tv_flat_03b`,
    bigtv = `prop_tv_flat_michael`,
}
