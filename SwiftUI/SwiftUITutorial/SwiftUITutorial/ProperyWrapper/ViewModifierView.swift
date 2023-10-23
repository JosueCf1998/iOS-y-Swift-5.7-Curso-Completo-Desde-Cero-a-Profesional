//
//  ViewModifierView.swift
//  SwiftUITutorial
//
//  Created by Maximo Josue Coronel Flores on 21/09/23.
//

import SwiftUI

struct NewButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.body)
            .foregroundColor(.white)
            .padding()
            .background(Color.blue)
            .cornerRadius(20)
    }
}

extension View {
    func newButtonModifier() -> some View {
        self.modifier(NewButtonModifier())
    }
}

struct ViewModifierView: View {
    var body: some View {
        VStack {
            Text("Suscribete a MoureDev")
                .bold()
                .padding()
            Button("Subscribirse") {
                print("Se ha suscribido al Canal de MoureDev")
            }
            //.modifier(NewButtonModifier()) //Otra forma no muy buena 
            .newButtonModifier()
        }
    }
}

struct ViewModifierView_Previews: PreviewProvider {
    static var previews: some View {
        ViewModifierView()
    }
}
