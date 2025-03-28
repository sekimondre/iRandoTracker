import Foundation

final class TrackerData {
    
    var trackedKeys: Set<String> = []
    
    private let files: Files = .init()
    
    func save() throws {
        let data = try JSONEncoder().encode(trackedKeys)
        try files.write(data, file: "tracker", extension: "json")
    }
    
    func load() {
        do {
            let data = try files.read(file: "tracker", extension: "json")
            trackedKeys = try JSONDecoder().decode(Set<String>.self, from: data)
        } catch {
            trackedKeys = Set(Item.defaultStarterKeys)
        }
    }
}
