//
//  TodoViewModel.swift
//  TodoList
//
//  Created by colin cedric on 04/02/2025.
//

import Foundation

class TodoViewModel: ObservableObject {
    @Published var todos: [Todo] = []
    
    init() {
        getTodos()
    }
    
    func getTodos() {
        
    }
}

