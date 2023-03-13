//
//  TennisElbowView.swift
//  extensiLE
//
//  Created by Becca GW on 2023-03-07.
//

import SwiftUI

struct TennisElbowView: View {
    public var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            VStack(alignment: .center) {
                Image("extensiLE Logo V4")
                    .resizable()
                    .frame(width: 200, height: 80, alignment: .center)
                    .padding()
                Text("About Lateral Epicondylitis")
                Text("Lateral epicondylitis (LE) caused by incorrect wrist mechanics is investigated, which is often associated with one-handed backhand strokes in tennis. LE is a discomforting condition that is caused by inflammation of the elbow tendons and is directly correlated to chronic and excessive elbow strain. This inflammation causes substantial pain in the forearm and may even result in the loss of function of the affected area.")
                    .font(.custom("Inter", size: 16))
                    .foregroundColor(Color(red: 0.67, green: 0.88, blue: 1))
            }
            
//            Text("About Lateral Epicondylitis")
//                .font(.custom("Inter", size: 16))
//                .foregroundColor(Color(red: 1, green: 1, blue: 1))
//                .background(Color(red: 1, green: 1, blue: 1))
        }
        
    }
}



struct TennisElbowView_Previews: PreviewProvider {
    static var previews: some View {
        TennisElbowView()
    }
}
