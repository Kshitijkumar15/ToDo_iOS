//
//  NewItemView.swift
//  ToDo
//
//  Created by kshitij on 03/05/23.
//

import SwiftUI

struct NewItemView: View {
    @StateObject var viewModel=NewItemViewViewModel()
    @Binding var newItemPresented:Bool
    
    var body: some View {
        VStack{
            Text("Hello")
                .font(.system(size: 32))
                .bold()
                .padding()
            
            Form{
                TextField("Title", text: $viewModel.title)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                DatePicker("Due date", selection: $viewModel.dueDate)
                    .datePickerStyle(GraphicalDatePickerStyle())
                
                TDButton(title:"save", background: .blue){
                    if viewModel.canSave{
                        viewModel.save()
                        newItemPresented = false
                    }
                    else
                    {
                        viewModel.showAlert=true
                    }
                }
                .padding()
            }
            .alert(isPresented: $viewModel.showAlert){
                Alert(title: Text("Error"),message: Text("Please fill in all fields and select due date today or newer.")
                )
            }
        }
      
    }
}

struct NewItemView_Previews: PreviewProvider {
    static var previews: some View {
        NewItemView(newItemPresented: Binding(get: {
            return true
        }, set: { _ in
            
        }))
    }
}
