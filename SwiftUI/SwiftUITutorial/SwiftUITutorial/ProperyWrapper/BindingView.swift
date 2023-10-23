//
//  BindingView.swift
//  SwiftUITutorial
//
//  Created by Maximo Josue Coronel Flores on 20/09/23.
//

import SwiftUI

struct BindingView: View {
    @Binding var value: Int
    @ObservedObject var user: UserData
    @State private var selection: Int?
    
    var body: some View {
        VStack {
            Button("Suma 2") {
                value += 2
            }
            Button("Actualizar Datos") {
                user.name = "Maximo Josue Coronel Flores"
                user.age = 26
            }
            NavigationLink(destination: EnviromentView(),tag: 1, selection: $selection) {
                Button("Ir a EnvironmentView"){
                    selection = 1
                }
            }
        }
    }
}

struct BindingView_Previews: PreviewProvider {
    static var previews: some View {
        BindingView(value: .constant(5), user: UserData())
    }
}
