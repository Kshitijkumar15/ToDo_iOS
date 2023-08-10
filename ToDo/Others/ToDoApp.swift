//
//  ToDoApp.swift
//  ToDo
//
//  Created by kshitij on 03/05/23.
//
import Firebase
import SwiftUI
@main
struct ToDoApp: App {
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            
        
            MainView()
        }
    }
}
