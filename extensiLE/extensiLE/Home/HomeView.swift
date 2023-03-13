//
//  HomeView.swift
//  extensiLE
//
//  Created by Becca GW on 2023-02-28.
//

import SwiftUI
import PythonKit

struct HomeView: View {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
                
            VStack(alignment: .center) {
                Image("extensiLE Logo V4")
                    .resizable()
                    .frame(width: 200, height: 80, alignment: .center)
                    .padding()
                
                Button(action: {
                    self.sayHi()
                }, label: {
                    Text("Press me")
                })

            }
                .background(Color(red: 0, green: 0, blue: 0))
        }
    }
    func sayHi() {
        let sys = Python.import("sys")
        sys.path.append("/Users/bgwyllie/Documents/GitHub/extensiLE_app/extensiLE/extensiLE/Algorithms")
        let example = Python.import("StrokeClassification")
//        print("Python Version: \(sys.version)")
        let response = example.hello()
        print(response)
    }
   

}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
