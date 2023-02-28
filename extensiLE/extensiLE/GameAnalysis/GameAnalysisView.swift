//
//  GameAnalysisView.swift
//  extensiLE
//
//  Created by Becca GW on 2023-02-28.
//

import SwiftUI

struct GameAnalysisView: View {
    @State var navigated = false
    
    public var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            VStack(alignment: .center) {
                Image("extensiLE Logo V4")
                    .resizable()
                    .frame(width: 200, height: 80, alignment: .center)
                    .padding()
                
                Spacer()
                
                Text("Date")
                Text("Play Type")
                
                Divider()
                    .frame(width: 370, alignment: .center)
                    .foregroundColor(CustomColors.Grey)
            }
            
            
            VStack(alignment: .center) {
                Divider()
                    .frame(width: 370)
                Text("Backhand Angle (Avg)")
                    .foregroundColor(CustomColors.Grey)
                Text("Tensile Insert")
                    .foregroundColor(CustomColors.Grey)
                Text("Duration")
                    .foregroundColor(CustomColors.Grey)
                Text("Exposure Time")
                    .foregroundColor(CustomColors.Grey)
                Divider()
                    .frame(width: 370)
                
//                NavigationLink("SeeAllStatsView", destination: SeeAllStatsView(), isActive: $navigated)
                
                Button("See All Play Statistics", action: {
                    self.navigated.toggle()
                })
                .foregroundColor(CustomColors.Grey)
            }
        }
    }
}

struct GameAnalysisView_Previews: PreviewProvider {
    static var previews: some View {
        GameAnalysisView()
    }
}
