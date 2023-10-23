//
//  EnviromentView.swift
//  SwiftUITutorial
//
//  Created by Maximo Josue Coronel Flores on 21/09/23.
//

import SwiftUI

struct EnviromentView: View {
    
    @EnvironmentObject var user: UserData
    
    var body: some View {
        Text(user.name)
    }
}

struct EnviromentView_Previews: PreviewProvider {
    static var previews: some View {
        EnviromentView().environmentObject(UserData())
    }
}
