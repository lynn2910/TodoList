//
//  RowView.swift
//  TodoList
//
//  Created by levin marvyn on 28/01/2025.
//

import SwiftUI

struct RowView: View {
    
    let todo: Todo
    
    var body: some View {
        HStack {
            Image(systemName: todo.isCompleted ? "checkmark.circle" : "circle")
                .foregroundStyle(todo.isCompleted ? .green : .red)
            Text(todo.title)
            
            Spacer()

            Text(todo.priority.rawValue)
                .font(.footnote)
                .padding(3)
                .foregroundColor(Color(.systemGray2))
                .frame(width: 62)
                .overlay(
                    Capsule()
                        .stroke(Color(.systemGray2), lineWidth: 0.75)
                )
        }
        // style sur tout le HStack
        .font(.title2)
        .padding(.vertical, 10)
    }
}

#Preview {
    RowView(todo: Todo.testData[0])
}

