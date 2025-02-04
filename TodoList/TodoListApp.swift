//
//  TodoListApp.swift
//  TodoList
//
//  Created by levin marvyn on 28/01/2025.
//

import SwiftUI

@main
struct TodoListApp: App {
    var body: some Scene {
        WindowGroup {
            ListView()
                .environmentObject(TodoViewModel())
        }
    }
}

