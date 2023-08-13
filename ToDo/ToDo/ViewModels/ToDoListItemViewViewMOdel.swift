//
//  ToDoListItemViewViewModel.swift
//  ToDo
//  Created by kshitij on 08/05/23.


import FirebaseAuth
import FirebaseFirestore
import Foundation

class ToDoListItemViewViewModel: ObservableObject{
    init() {}
    
    func toggleIsDone(item: ToDoListItem){
        var newItem = item
        newItem.setDone(!item.isDone)
        
        guard let userId = Auth.auth().currentUser?.uid else{
            return
        }
        
        let db = Firestore.firestore()
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(newItem.id)
            .setData(newItem.asDictionary())
    }
   
  
}
