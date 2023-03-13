//
//  ContentView.swift
//  extensiLE
//
//  Created by Becca GW on 2023-02-28.
//

import SwiftUI
import PythonKit

struct CustomColors {
    static let logoBlue = Color("LogoBlue")
    static let BlueText = Color("BlueText")
    static let MenuColor = Color("MenuColor")
    static let Grey = Color("Grey")
    static let SelectedMenu = Color("SelectedMenu")
    static let White = Color("White")
}

struct ContentView: View {
//    init() {
//        UITabBar.appearance().unselectedItemTintColor = UIColor(CustomColors.MenuColor)
//    }
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            RecordPlayView()
                .tabItem {
                    Label("Record", systemImage: "plus.circle")
                }
            TennisElbowView()
                .tabItem {
                    Label("Education", systemImage: "tennisball")
                }
            AccountView()
                .tabItem {
                    Label("Account", systemImage: "person")
                }
        }
        .accentColor(CustomColors.SelectedMenu)
    }
    
    func runPythonCode() {
        print("HELLO")
        let sys = Python.import("sys")
        sys.path.append("/Users/bgwyllie/Documents/GitHub/extensiLE_app/extensiLE/extensiLE/Algorithms")
        let example = Python.import("sample")
        let response = example.hello()
        print("response", response)
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
