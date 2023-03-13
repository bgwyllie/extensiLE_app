//
//  AccountView.swift
//  extensiLE
//
//  Created by Becca GW on 2023-03-07.
//

import SwiftUI

struct SettingOptions: Identifiable {
    let label: String
    let icon: Image
    let id = UUID()
}

private var settingOptions = [
    SettingOptions(label: "Change password", icon: Image(systemName: "lock")),
    SettingOptions(label: "Help", icon: Image(systemName: "questionmark.circle"))
]


struct AccountView: View {
   
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack(alignment: .center) {
                Image("extensiLE Logo V4")
                    .resizable()
                    .frame(width: 200, height: 80, alignment: .center)
                    .padding()
                
                Text("Serena Williams")
                    .foregroundColor(CustomColors.BlueText)
                Divider()
                Text("swilliams@gmail.com")
                    .foregroundColor(CustomColors.BlueText)
                
                Divider()
                Divider()
                Divider()
                
                VStack(alignment: .leading){
                    HStack {
                        Image(systemName: "lock")
                            .foregroundColor(CustomColors.MenuColor)
                            .font(.system(size: 35, weight: .thin))

                        Text("Change password")
                            .foregroundColor(CustomColors.MenuColor)
                        Image(systemName: "chevron.right")
                            .foregroundColor(CustomColors.Grey)
                            .font(.system(size: 35, weight: .thin))
                            .frame(maxWidth: 100, alignment: .trailing)
                    }
                    VStack {
                        CustomColors.MenuColor.frame(width:300, height: 1) // / UIScreen.main.scale)
                    }
                    HStack {
                        Image(systemName: "questionmark.circle")
                            .foregroundColor(CustomColors.MenuColor)
                            .font(.system(size: 35, weight: .thin))

                        Text("Help")
                            .foregroundColor(CustomColors.MenuColor)
                        Image(systemName: "chevron.right")
                            .foregroundColor(CustomColors.Grey)
                            .font(.system(size: 35, weight: .thin))
                            .frame(maxWidth: 200, alignment: .trailing)
                    }
                    VStack {
                        CustomColors.MenuColor.frame(width:300, height: 1) // / UIScreen.main.scale)
                    }
                    HStack {
                        Image(systemName: "lock.shield")
                            .foregroundColor(CustomColors.MenuColor)
                            .font(.system(size: 35, weight: .thin))
                        Text("Privacy and data sharing")
                            .foregroundColor(CustomColors.MenuColor)
                        Image(systemName: "chevron.right")
                            .foregroundColor(CustomColors.Grey)
                            .font(.system(size: 35, weight: .thin))
                            .frame(maxWidth: 50, alignment: .trailing)
                    }
                    VStack {
                        CustomColors.MenuColor.frame(width:300, height: 1) // / UIScreen.main.scale)
                    }
                    HStack {
                        Image(systemName: "tennisball")
                            .foregroundColor(CustomColors.MenuColor)
                            .font(.system(size: 35, weight: .thin))

                        Text("About")
                            .foregroundColor(CustomColors.MenuColor)
                        Image(systemName: "chevron.right")
                            .foregroundColor(CustomColors.Grey)
                            .font(.system(size: 35, weight: .thin))
                            .frame(maxWidth: 190, alignment: .trailing)
                    }
                    VStack {
                        CustomColors.MenuColor.frame(width:300, height: 1) // / UIScreen.main.scale)
                    }
                    HStack {
                        Image(systemName: "rectangle.portrait.and.arrow.forward")
                            .foregroundColor(CustomColors.MenuColor)
                            .font(.system(size: 35, weight: .thin))

                        Text("Logout")
                            .foregroundColor(CustomColors.MenuColor)
                        Image(systemName: "chevron.right")
                            .foregroundColor(CustomColors.Grey)
                            .font(.system(size: 35, weight: .thin))
                            .frame(maxWidth: 175, alignment: .trailing)
                    }
                }
            }
        }
    }
}


struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
