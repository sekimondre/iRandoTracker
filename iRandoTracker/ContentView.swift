//

import SwiftUI
import SwiftData

@Observable
final class TrackedItem: Identifiable {
    let item: Item
    var isSelected: Bool
    
    init(item: Item, isSelected: Bool = false) {
        self.item = item
        self.isSelected = isSelected
    }
}



struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
//    @Query private var items: [Item]
    
    private var tracker = Tracker()

    var body: some View {
        HStack(alignment: .top, spacing: 8) {
            EquipmentView(equipment: tracker.equipment)
            InventoryView(inventory: tracker.inventory)
        }
    }
    
    private func toggleItem(_ trackedItem: TrackedItem) {
        trackedItem.isSelected.toggle()
//        modelContext.insert(trackedItem)
    }
}

#Preview {
    ContentView()
//        .modelContainer(for: Item.self, inMemory: true)
}
