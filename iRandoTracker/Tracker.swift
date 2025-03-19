final class Tracker {
    
    let equipment: [[TrackedItem]] = [
        [
            .init(item: .kokiriSword),
            .init(item: .masterSword),
            .init(item: .biggoronSword)
        ],
        [
            .init(item: .dekuShield),
            .init(item: .hylianShield),
            .init(item: .mirrorShield)
        ],
        [
            .init(item: .kokiriTunic, isSelected: true),
            .init(item: .goronTunic),
            .init(item: .zoraTunic)
        ],
        [
            .init(item: .normalBoots, isSelected: true),
            .init(item: .ironBoots),
            .init(item: .hoverBoots)
        ],
    ]
    
    let inventory: [[TrackedItem]] = [
        [
            .init(item: .dekuStick, isSelected: true),
            .init(item: .dekuNuts, isSelected: true),
            .init(item: .bombs),
            .init(item: .bow),
            .init(item: .fireArrows),
            .init(item: .dinsFire),
        ],
        [
            .init(item: .slingshot),
            .init(item: .ocarina),
            .init(item: .bombchus),
            .init(item: .hookshot),
            .init(item: .iceArrows),
            .init(item: .faroresWind),
        ],
        [
            .init(item: .boomerang),
            .init(item: .lensOfTruth),
            .init(item: .magicBeans),
            .init(item: .megatonHammer),
            .init(item: .lightArrows),
            .init(item: .nayruslove),
        ],
        [
            .init(item: .bottle),
            .init(item: .bottle),
            .init(item: .bottle),
            .init(item: .bottle),
            .init(item: .claimCheck),
//            .init(item: .nayruslove),
        ],
    ]
    
    let keyItems: [[TrackedItem]] = [
        [
            .init(item: .goronBracelet),
            .init(item: .silverGauntlets),
            .init(item: .goldenGauntlets),
        ],
        [
            .init(item: .adultWallet),
            .init(item: .giantWallet),
            .init(item: .magic),
        ],
        [
            .init(item: .silverScale),
            .init(item: .goldenScale),
            .init(item: .gerudoCard),
        ],
        [
            .init(item: .kokiriEmerald),
            .init(item: .goronRuby),
            .init(item: .zoraSapphire),
        ]
    ]
    
    let songs: [TrackedItem] = [
        .init(item: .zeldaLullaby),
        .init(item: .eponasSong),
        .init(item: .sariasSong),
        .init(item: .sunsSong),
        .init(item: .songOfTime),
        .init(item: .songOfStorms),
        .init(item: .minuetOfForest),
        .init(item: .boleroOfFire),
        .init(item: .serenadeOfWater),
        .init(item: .requiemOfSpirit),
        .init(item: .nocturneOfShadow),
        .init(item: .preludeOfLight),
    ]
    
    let medallions: [TrackedItem] = [
        .init(item: .forestMedallion),
        .init(item: .fireMedallion),
        .init(item: .waterMedallion),
        .init(item: .shadowMedallion),
        .init(item: .spiritMedallion),
        .init(item: .lightMedallion),
    ]
}
