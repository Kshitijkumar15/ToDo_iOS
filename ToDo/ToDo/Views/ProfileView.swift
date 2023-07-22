//
//  ProfileView.swift
//  ToDo
//
//  Created by kshitij on 03/05/23.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewViewModel()
    var body: some View {
        NavigationView {
            VStack{
                
            }
            .navigationTitle("Profile")
        }
    }
}


struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
