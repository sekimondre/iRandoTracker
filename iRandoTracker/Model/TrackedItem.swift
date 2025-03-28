import SwiftUI

@Observable
final class TrackedItem: Identifiable {
    var item: Item
    var isSelected: Bool
    
    init(item: Item, isSelected: Bool = false) {
        self.item = item
        self.isSelected = isSelected
    }
}
