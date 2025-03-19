import SwiftUI
import SwiftData

struct ContentView: View {
    
    @Environment(\.modelContext) private var modelContext
//    @Query private var items: [Item]
    
    private var tracker = Tracker()

    var body: some View {
        VStack {
            HStack {
                Button("Reset") {
                    reset()
                }
            }
            Divider()
            HStack(alignment: .top, spacing: 8) {
                VStack(alignment: .leading, spacing: 8) {
                    inventoryView
                    HStack {
                        equipmentView
                        keyItemsView
                    }
                    medallionsView
                }
                songsView
            }
        }
        .padding()
//        .focusedValue(\.currentTracker, $tracker)
    }
    
    private var inventoryView: some View {
        Grid {
            ForEach(tracker.inventory.indices, id: \.self) { row in
                GridRow {
                    ForEach(tracker.inventory[row]) { tracked in
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
    
    private var equipmentView: some View {
        Grid {
            ForEach(tracker.equipment.indices, id: \.self) { row in
                GridRow {
                    ForEach(tracker.equipment[row]) { tracked in
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
    
    private var keyItemsView: some View {
        Grid {
            ForEach(tracker.keyItems.indices, id: \.self) { row in
                GridRow {
                    ForEach(tracker.keyItems[row]) { tracked in
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
    
    private var medallionsView: some View {
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
    
    private var songsView: some View {
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
    
    private func toggleItem(_ trackedItem: TrackedItem) {
        trackedItem.isSelected.toggle()
//        modelContext.insert(trackedItem)
    }
    
    private func reset() {
        tracker.reset()
    }
}

#Preview {
    ContentView()
//        .modelContainer(for: Item.self, inMemory: true)
}
