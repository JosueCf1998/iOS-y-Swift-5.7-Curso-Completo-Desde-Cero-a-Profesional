//
//  ContentView.swift
//  SwiftUITutorial
//
//  Created by Maximo Josue Coronel Flores on 19/09/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            VStack(alignment: .leading, spacing: 20) {
                
                Text("Hola Mi Nombre es Josue Coronel!")
                    .font(.largeTitle)
                    .foregroundColor(Color.blue)
                    .padding()
                    .background(Color.gray)
                
                Spacer()
                
                ZStack() {
                    Text("")
                        .frame(maxWidth: .infinity,
                               maxHeight: .infinity)
                        .background(Color.gray)
                        .padding(20)
                    Text("")
                        .frame(maxWidth: .infinity,
                               maxHeight: .infinity)
                        .background(Color.green)
                        .padding(40)
                    Text("")
                        .frame(maxWidth: .infinity,
                               maxHeight: .infinity)
                        .background(Color.blue)
                        .padding(60)
                    Text("")
                        .frame(maxWidth: .infinity,
                               maxHeight: .infinity)
                        .background(Color.red)
                        .padding(80)
                }
                
                Spacer()
                
                HStack {
                    Text("Hola Mundo!")
                        .padding()
                        .background(Color.gray)
                    Spacer()
                    Text("Hola Mundo2!")
                        .padding()
                        .background(Color.gray)
                }
            }
            .background(Color.yellow)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
