//
//  LoginView.swift
//  ToDo
//
//  Created by kshitij on 03/05/23.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewViewModel()
    var body: some View {
        NavigationView{
            VStack{
                HeaderView(title: "To Do List", subtitle: "Let's Get Things Done!", angle: 15, background:.red )
                
                
                Form {
                    
                    if !viewModel.errorMessage.isEmpty{
                        Text(viewModel.errorMessage).foregroundColor(Color.red)
                    }
                    
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                    
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    TDButton(title: "Log In",
                             background: .blue){
                        viewModel.login()
                    }
                .padding()
                        
                }
                .offset(y: -50)
                    VStack{
                        Text("New User ?")
                        NavigationLink("Create an account",
                                       destination: RegisterView())
                    }
                }
                .padding(.bottom, 50)
                    
                    Spacer()
                    
                }
            }
        }
    
    
    struct LoginView_Previews: PreviewProvider {
        static var previews: some View {
            LoginView()
        }
    }
    

