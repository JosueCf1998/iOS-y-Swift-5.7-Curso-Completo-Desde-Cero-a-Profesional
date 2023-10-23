//
//  ImageView.swift
//  SwiftUITutorial
//
//  Created by Maximo Josue Coronel Flores on 19/09/23.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        VStack {
            Image("avenger-logo")
                .resizable()
                .padding(50)
                .frame(width: 300, height: 300)
                .background(.gray)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.blue, lineWidth: 4))
                .shadow(color: Color.gray, radius: 10)
            
            Image(systemName: "person")
                .resizable()
                .padding(50)
                .frame(width: 300, height: 300)
                .background(.gray)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.blue, lineWidth: 4))
                .shadow(color: Color.gray, radius: 10)
                .foregroundColor(.blue)
        }
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
