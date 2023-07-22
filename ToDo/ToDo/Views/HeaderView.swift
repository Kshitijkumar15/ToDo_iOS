//
//  HeaderView.swift
//  ToDo
//
//  Created by kshitij on 03/05/23.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let subtitle: String
    let angle: Double
    let background: Color
    
    var body: some View {
        VStack {
            ZStack{
                RoundedRectangle(cornerRadius: 0)
                    .foregroundColor(background)
                    .rotationEffect(Angle(degrees: angle))
                VStack{
                    Text(title)
                        .font(.system(size: 50))
                        .foregroundColor(Color.white)
                        .bold()
                    Text(subtitle)
                        .font(.system(size: 30))
                        .foregroundColor(Color.white)
                }
                .padding(.top, 150)
                
            }
            .frame(width: UIScreen.main.bounds.width * 3, height: 350)
            .offset(y:-180)
            Spacer()
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(title: "title", subtitle: "subtitle", angle: 15, background: .blue)
    }
}
