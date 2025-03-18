import Foundation

enum Item: String {
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
//    case bottle = ""
    case claimCheck = "Claim-Check"
}

extension Item {
    var imageName: String { rawValue }
}
