//
//  RecordPlayView.swift
//  extensiLE
//
//  Created by Becca GW on 2023-03-07.
//

import SwiftUI

struct RecordPlayView: View {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack(alignment: .center) {
                Image("extensiLE Logo V4")
                    .resizable()
                    .frame(width: 200, height: 80, alignment: .center)
                    .padding()
                
                Text("Select Device")
                    .foregroundColor(CustomColors.BlueText)
                Divider()
                Text("Make sure your Bluetooth is turn on and the device is in range")
                    .foregroundColor(CustomColors.BlueText)
                    .frame(width: 270)
                    .multilineTextAlignment(.center)
                Divider()
                VStack{
                    VStack {
                        CustomColors.MenuColor.frame(width:300, height: 1) // / UIScreen.main.scale)
                    }
                    
                    HStack {
                        Text("Cedric's extensiLE")
                            .foregroundColor(CustomColors.White)
                        Image(systemName:"battery.75")
                            .foregroundColor(CustomColors.White)
                            .font(.system(size: 35, weight: .thin))
                            .frame(maxWidth: 125, alignment: .trailing)
                    }
                    VStack {
                        CustomColors.MenuColor.frame(width:300, height: 1) // / UIScreen.main.scale)
                    }
                    Divider()
                    HStack {
                        Text("Milena's extensiLE")
                            .foregroundColor(CustomColors.White)
                        Image(systemName:"battery.50")
                            .foregroundColor(CustomColors.White)
                            .font(.system(size: 35, weight: .thin))
                            .frame(maxWidth: 125, alignment: .trailing)
                    }
                    Divider()
                    VStack {
                        CustomColors.MenuColor.frame(width:300, height: 1) // / UIScreen.main.scale)
                    }
                    Divider()
                    HStack {
                        Text("Teresa's extensiLE")
                            .foregroundColor(CustomColors.White)
                        Image(systemName:"battery.100")
                            .foregroundColor(CustomColors.White)
                            .font(.system(size: 35, weight: .thin))
                            .frame(maxWidth: 125, alignment: .trailing)
                    }
                    
                    VStack {
                        CustomColors.MenuColor.frame(width:300, height: 1) // / UIScreen.main.scale)
                    }
                }
                Button("PAIR DEVICE", action: {})
                    .frame(width: 220, height: 50, alignment: .center)
                    .background(CustomColors.logoBlue)
                    .foregroundColor(.black)
                    .cornerRadius(10)
                    .font(.custom("Inter", size: 22))
                    .padding()
                
                Text("Not seeing your device?")
                    .foregroundColor(Color(.white))
                    .underline()
            }
        }
    }
}

struct RecordPlayView_Previews: PreviewProvider {
    static var previews: some View {
        RecordPlayView()
    }
}
