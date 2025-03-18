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
    ]
}
