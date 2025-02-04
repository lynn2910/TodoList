import SwiftUI

struct ListView: View {
    
    @EnvironmentObject var todoVM: TodoViewModel
    
    var body: some View {
        // barre de navigation pour edit et add et page d'accueil
        NavigationView {
            // tâches sous forme de liste
            List {
                ForEach(todoVM.todos) {todo in
                    RowView(todo: todo)
                        .onTapGesture {
                            self.todoVM.update(todo: todo)
                        }
                }
                .onDelete(perform: todoVM.deleteTodo)
                .onMove(perform: todoVM.moveTodo)
            }
            .listStyle(PlainListStyle())
            .navigationTitle("Todo")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    EditButton()
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    // renvoie sur page vide et bouton de retour déjà implémenté sur la page vide
                    NavigationLink("Add", destination: AddTodoView())
                }
            }
        }
    }
}

#Preview {
    ListView()
        .environmentObject(TodoViewModel())
}

