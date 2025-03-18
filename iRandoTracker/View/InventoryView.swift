import SwiftUI

struct InventoryView: View {
    
    let inventory: [[TrackedItem]]
    
    var body: some View {
        Grid {
            ForEach(inventory.indices, id: \.self) { row in
                GridRow {
                    ForEach(inventory[row]) { tracked in
                        Image(tracked.item.imageName)
                            .if(!tracked.isSelected) {
                                $0.grayscale(1.0).opacity(0.5)
                            }
                            .onTapGesture {
                                toggleItem(tracked)
                            }
                    }
                }
            }
        }
    }
    
    private func toggleItem(_ trackedItem: TrackedItem) {
        trackedItem.isSelected.toggle()
//        modelContext.insert(trackedItem)
    }
}

#Preview {
    InventoryView(inventory: Tracker().inventory)
}
