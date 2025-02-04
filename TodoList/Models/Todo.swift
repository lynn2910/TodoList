import Foundation

enum Priority: String, CaseIterable {
    case low = "Low"
    case normal = "Normal"
    case high = "High"
}

struct Todo: Identifiable {
    var id = UUID()
    var title: String
    var isCompleted: Bool
    var priority: Priority
    
    static var testData = [
        Todo(title: "Task 1", isCompleted: true, priority: .high),
        Todo(title: "Task 2", isCompleted: false, priority: .normal),
        Todo(title: "Task 3", isCompleted: true, priority: .low),
        Todo(title: "Task 4", isCompleted: false, priority: .high)
    ]
    
}

