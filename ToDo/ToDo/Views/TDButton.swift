//
//  TDButton.swift
//  ToDo
//
//  Created by kshitij on 05/05/23.
//

import SwiftUI

struct TDButton: View {
    let title: String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        Button{
            action()
        } label:{
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(Color.blue)
            
            Text(title)
                .foregroundColor(Color.white)
                .bold()

            }
        }
    }
}

struct TDButton_Previews: PreviewProvider {
    static var previews: some View {
        TDButton(title: "value", background: .pink) {
            //Action
        }
    }
}
