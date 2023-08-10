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

    init(userId: String){
        self.userID = userId
        
    }
    
    
    var body: some View {
        NavigationView {
            VStack{
                
            }
            .navigationTitle("To Do List")
            .toolbar {
                Button{
                   //Action
                    viewModel.showingNewItemView = true
                }label: {
                    Image(systemName: "plus")
                }
                
            }
            .sheet(isPresented: $viewModel.showingNewItemView){
                NewItemView(newItemPresented: $viewModel.showingNewItemView)
            }
        }
    }
}

struct ToDoListView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoListView(userId: "")
    }
}
