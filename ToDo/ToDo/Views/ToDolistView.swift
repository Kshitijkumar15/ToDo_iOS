//
//  ToDoListView.swift
//  ToDo
//
//  Created by kshitij on 03/05/23.
//

import SwiftUI


struct ToDoListView: View {
    @StateObject var viewModel = ToDoListViewViewModel()
    private let userID: String
    
    init(userId: String) {
        self.userId = userId
    }

    var body: some View {
        NavigationView {
            VStack{
                
            }
            .navigationTitle("To Do List")
            .toolbar {
                Button{
                   //Action
                }label: {
                    Image(systemName: "plus")
                }
                
            }
        }
    }
}

struct ToDoListView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoListView(userId: "")
    }
}
