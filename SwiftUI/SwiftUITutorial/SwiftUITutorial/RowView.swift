//
//  RowView.swift
//  SwiftUITutorial
//
//  Created by Maximo Josue Coronel Flores on 19/09/23.
//

import SwiftUI

struct RowView: View {
    
    var programmer: Programmer
    
    var body: some View {
        HStack {
            programmer.avatar
                .resizable()
                .frame(width: 40,height: 40)
                .padding(10)
            VStack(alignment: .leading) {
                Text(programmer.name)
                    .font(.title)
                Text(programmer.languages)
                    .font(.subheadline)
            }
            Spacer()
            if programmer.favorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
                    .padding(10)
            }
        }
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(programmer: Programmer(id: 1, name: "Josue", languages: "Swift, Angular", avatar: Image(systemName: "person.fill"), favorite: true))
            .previewLayout(.fixed(width: 400, height: 60))
    }
}
