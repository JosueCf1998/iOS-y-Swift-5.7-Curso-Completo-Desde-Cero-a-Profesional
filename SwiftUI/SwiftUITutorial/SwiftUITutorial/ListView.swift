//
//  ListView.swift
//  SwiftUITutorial
//
//  Created by Maximo Josue Coronel Flores on 19/09/23.
//

import SwiftUI

final class ProgrammmersModelData: ObservableObject {
    
    @Published var programmers = [
        Programmer(id: 0, name: "Josue", languages: "Swift", avatar: Image(systemName: "person.fill"), favorite: false),
        Programmer(id: 1, name: "Franco", languages: "Kotlin", avatar: Image(systemName: "person"), favorite: true),
        Programmer(id: 2, name: "Miguel", languages: "JavaScript", avatar: Image(systemName: "person.fill"), favorite: true),
        Programmer(id: 3, name: "Eduardo", languages: "Python", avatar: Image(systemName: "person"), favorite: false),
    ]
}

struct ListView: View {
    
    @EnvironmentObject var programmersModelData: ProgrammmersModelData
    @State private var showFavorites = false
    
    private  var filteredProgrammers: [Programmer] {
        return programmersModelData.programmers.filter { programmer in
            return !showFavorites || programmer.favorite
        }
    }
    
    var body: some View {
        NavigationView {
            
            VStack {
                Toggle(isOn: $showFavorites) {
                    Text("Mostrar Favoritos")
                }
                .padding()
                
                List(filteredProgrammers, id: \.id) { programmer in
                    NavigationLink(destination: ListDetailView(programmer: programmer, favorite: $programmersModelData.programmers[programmer.id].favorite)) {
                        RowView(programmer: programmer)
                    }
                }
            }
            .navigationTitle("Programmers")
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView().environmentObject(ProgrammmersModelData())
    }
}
