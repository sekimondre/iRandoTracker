import Foundation

final class Files {
    
    private let fileManager: FileManager = .default
    
    private let directory: FileManager.SearchPathDirectory = .applicationSupportDirectory
    
    private var rootURL: URL {
        get throws {
            let url  = try fileManager.url(
                for: .applicationSupportDirectory,
                in: .userDomainMask,
                appropriateFor: nil,
                create: true
            )
            print(url)
            return url
        }
    }
    
    func write(_ data: Data, file: String, extension: String) throws {
        let fileURL = try rootURL.appendingPathComponent(file).appendingPathExtension(`extension`)
        try data.write(to: fileURL, options: [.atomic])
    }
    
    func read(file: String, extension: String) throws -> Data {
        let fileURL = try rootURL.appendingPathComponent(file).appendingPathExtension(`extension`)
        let data = try Data(contentsOf: fileURL, options: [.uncached])
        return data
    }
    
    func delete(file: String, extension: String) throws {
        let fileURL = try rootURL.appendingPathComponent(file).appendingPathExtension(`extension`)
        try fileManager.removeItem(at: fileURL)
    }
}
