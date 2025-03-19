import Foundation

enum Item: String {
    
    // Equipment
    case kokiriSword = "Kokirie-Sword-3D"
    case masterSword = "Master-Sword-3D"
    case biggoronSword = "Biggorons-Sword"
    case dekuShield = "Deku-Shield-3D"
    case hylianShield = "Hylian-Shield-3D"
    case mirrorShield = "Mirror-Shield-3D"
    case kokiriTunic = "Kokiri-Tunic-3D"
    case goronTunic = "Goron-Tunic-3D"
    case zoraTunic = "Zora-Tunic-3D"
    case normalBoots = "Kokiri-Boots-3D"
    case ironBoots = "Iron-Boots-3D"
    case hoverBoots = "Hover-Boots-3D"
    
    // Key items
    case goronBracelet = "Gorons-Bracelet-3D"
    case silverGauntlets = "Silver-Gauntlets-3D"
    case goldenGauntlets = "Golden-Gauntlets-3D"
    case silverScale = "Silve-Scale-3D"
    case goldenScale = "Golden-Scale-3D"
    case adultWallet = "OoT3D_Adult's_Wallet_Icon"
    case giantWallet = "Giants-Wallet"
    case magic = "Magic-Jar-Small-3D"
    case gerudoCard = "Gerudo-Token"
    
    // Inventory
    case dekuStick = "Deku-Stick-3D"
    case dekuNuts = "Deku-Nut-3D"
    case bombs = "Bomb-3D"
    case bow = "Bow-3D"
    case fireArrows = "Arrow-Fire-3D"
    case iceArrows = "Arrow-Ice-3D"
    case lightArrows = "Arrow-Light-3D"
    case slingshot = "Slingshot-3D"
    case ocarina = "Fairy-Ocarina-3D"
    case bombchus = "Bombchu-3D"
    case hookshot = "Hookshot-3D"
    case boomerang = "Boomerang-3D"
    case lensOfTruth = "Lens-of-Truth-3D"
    case magicBeans = "Magic-Bean-3D"
    case megatonHammer = "Megaton-Hammer-3D"
    case dinsFire = "Dins-Fire-3D"
    case faroresWind = "Farores-Wind-3D"
    case nayruslove = "Nayrus-Love-3D"
    case bottle = "OoT3D_Bottle_Icon"
    case claimCheck = "Claim-Check"
    
    // Songs
    case zeldaLullaby = "OoT3D_Zelda's_Lullaby_Icon"
    case eponasSong = "OoT3D_Epona's_Song_Icon"
    case sariasSong = "OoT3D_Saria's_Song_Icon"
    case sunsSong = "OoT3D_Sun's_Song_Icon"
    case songOfTime = "OoT3D_Song_of_Time_Icon"
    case songOfStorms = "OoT3D_Song_of_Storms_Icon"
    case minuetOfForest = "OoT3D_Minuet_of_Forest_Icon"
    case boleroOfFire = "OoT3D_Bolero_of_Fire_Icon"
    case serenadeOfWater = "OoT3D_Serenade_of_Water_Icon"
    case requiemOfSpirit = "OoT3D_Requiem_of_Spirit_Icon"
    case nocturneOfShadow = "OoT3D_Nocturne_of_Shadow_Icon"
    case preludeOfLight = "OoT3D_Prelude_of_Light_Icon"
    
    // Medallions
    case forestMedallion = "Forest-Medallion"
    case fireMedallion = "Fire-Medallion"
    case waterMedallion = "Water-Medallion"
    case shadowMedallion = "Shadow-Medallion"
    case spiritMedallion = "Spirit-Medallion"
    case lightMedallion = "Light-Medallion-3D-Icon"
    
    // Stones
    case kokiriEmerald = "Kokiris-Emerald"
    case goronRuby = "Gorons-Ruby"
    case zoraSapphire = "Zoras-Sapphire"
}

extension Item {
    var imageName: String { rawValue }
}
