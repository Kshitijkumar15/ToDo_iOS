//
//  RegisterViewViewModel.swift
//  ToDo
//
//  Created by kshitij on 03/05/23.
//
import FirebaseFirestore
import FirebaseAuth
import Foundation
class RegisterViewViewModel: ObservableObject{
    @Published var name = ""
    @Published var email = ""
    @Published var password = ""
    
    init () {}
    func register(){
        guard validate () else{
            return
        }
        
        Auth.auth().createUser(withEmail: email, password: password) {[weak self]
            result, error in
            guard let userID = result?.user.uid else {
                return 
                
            }
            
        }
        
    }
    private func insertUserRecord(id: String){
        let newUser = User(id: id,
                           name: name,
                           email: email,
                           joined: Date().timeIntervalSince1970)
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(id)
            .setData(newUser.asDictionary())
        
    }
    
    private func validate () -> Bool{
        guard !name.trimmingCharacters(in: .whitespaces).isEmpty,
              !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else{
            return false
        }
        guard email.contains("@") && email.contains(".") else{
            return false
        }
        guard password.count >= 6 else{
        return false
        }
        return true
    }
}
