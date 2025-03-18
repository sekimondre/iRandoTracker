import SwiftUI

struct EquipmentView: View {
    
    let equipment: [[TrackedItem]]
    
    var body: some View {
        Grid {
            ForEach(equipment.indices, id: \.self) { row in
                GridRow {
                    ForEach(equipment[row]) { tracked in
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
    EquipmentView(equipment: Tracker().equipment)
}
