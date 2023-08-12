//
//  ToDoListViewViewModel.swift
//  ToDo
//
//  Created by kshitij on 03/05/23.
//
import FirebaseFirestore
import Foundation
//primary tab
//single to do list item view(each item on row list)

class ToDoListViewViewModel: ObservableObject{
    @Published var showingNewItemView = false
    
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
    }
    
    func delete(id: String){
        let db = Firestore.firestore()
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
        
    }
}


