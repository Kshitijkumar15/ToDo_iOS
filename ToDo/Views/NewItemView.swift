//
//  NewItemView.swift
//  ToDo
//
//  Created by kshitij on 03/05/23.
//

import SwiftUI

struct NewItemView: View {
    @StateObject var viewModel=NewItemViewViewModel()
    var body: some View {
        VStack{
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.system(size: 32))
                .bold()
                .padding()
            
            Form{
                TextField("Title", text: $viewModel.title)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                DatePicker("Due date", selection: $viewModel.dueDate)
                    .datePickerStyle(GraphicalDatePickerStyle())
                
                TDButton(title:"save", background:.pink){
                    viewModel.save()
                }
            }
        }
      
    }
}

struct NewItemView_Previews: PreviewProvider {
    static var previews: some View {
        NewItemView()
    }
}
