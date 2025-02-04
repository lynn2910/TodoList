//
//  AddTodoView.swift
//  TodoList
//
//  Created by levin marvyn on 28/01/2025.
//

import SwiftUI

struct AddTodoView: View {
    
    @State private var todoTitle: String = ""
    @State private var priority: Priority = .normal;
    
    var body: some View {
        VStack {
            TextField("Enter your task", text: $todoTitle)
                .padding(.horizontal)
                .frame(height: 55)
                .background(Color(.systemGray4))
                .cornerRadius(10)
            
            Picker("Priority", selection: $priority) {
                ForEach(Priority.allCases, id: \.self) {priority in
                    Text(priority.rawValue)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            
            Button {
                
            } label: {
                Text("SAVE")
                    .foregroundStyle(.white)
                    .font(.headline)
                    // equivalent du 100vw
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.accentColor)
                    .cornerRadius(10)
                
            }
            Spacer()

        }
        .padding(14)
        .navigationTitle("Add a Todo")
    }
}

// Ici on hérite pas de la navigation
//#Preview {
//    AddTodoView()
//}

#Preview {
    NavigationView {
        AddTodoView()
    }
}


