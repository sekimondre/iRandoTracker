import SwiftUI

struct RandomizerCommands: Commands {
    
    @FocusedBinding(\.currentTracker) var tracker
    
    var body: some Commands {
        CommandMenu("Randomizer") {
            Button("Reset") {
                tracker?.reset()
            }
            .keyboardShortcut("r", modifiers: [.command])
        }
    }
}

private struct TrackerKey: FocusedValueKey {
    typealias Value = Binding<Tracker>
}

extension FocusedValues {
    var currentTracker: Binding<Tracker>? {
        get { self[TrackerKey.self] }
        set { self[TrackerKey.self] = newValue }
    }
}
