import SwiftUI
import SwiftData

struct ContentView: View {
    
    @Environment(\.modelContext) private var modelContext
//    @Query private var items: [Item]
    
    private var tracker = Tracker()

    var body: some View {
        HStack(alignment: .top, spacing: 8) {
            VStack(alignment: .leading, spacing: 8) {
                InventoryView(inventory: tracker.inventory)
                HStack {
                    EquipmentView(equipment: tracker.equipment)
                    KeyItemsView(keyItems: tracker.keyItems)
                }
                Grid {
                    GridRow {
                        ForEach(tracker.medallions) { tracked in
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
            Grid {
                ForEach(tracker.songs) { tracked in
                    GridRow {
                        Image(tracked.item.imageName)
                            .resizable()
                            .frame(width: 52, height: 30)
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
        .padding()
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
