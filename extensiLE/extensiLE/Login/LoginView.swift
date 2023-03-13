//
//  LoginView.swift
//  extensiLE
//
//  Created by Becca GW on 2023-02-28.
//

import SwiftUI
import Combine

struct OutlinedTextFieldStyle: TextFieldStyle {
    
    @State var icon: Image?
    
    func _body(configuration: TextField<Self._Label>) -> some View {
        HStack {
            if icon != nil {
                icon
                    .foregroundColor(CustomColors.BlueText)
            }
            configuration
        }
        .padding()
        .overlay {
            RoundedRectangle(cornerRadius: 8, style: .continuous)
                .stroke(CustomColors.BlueText, lineWidth: 2)
        }
    }
}

struct LoginView: View {
    @ObservedObject var loginViewModel = LoginViewModel()
//    @ObservedObject var homeViewModel = HomeViewModel()
    @State var navigated = false
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            VStack(alignment: .center) {
                Image("extensiLE Logo V4")
                    .resizable()
                    .frame(width: 325, height: 130, alignment: .center)
                    .padding()
                
                TextField("Email", text: $loginViewModel.email)
                    .textFieldStyle(OutlinedTextFieldStyle(icon: Image(systemName:"at")))
//                    .keyboardType(.emailAddress)
//                    .textContentType(.emailAddress)
                    .frame(width: 230, height: 40, alignment: .center)
//                    .autocapitalization(.none)
//                    .font(.custom("Inter", size: 20))
                    .padding()
                
                SecureField("Password", text:$loginViewModel.password)
                    .foregroundColor(CustomColors.BlueText)
                    .textContentType(.password)
                    .frame(width: 230, height: 40, alignment: .center)
                    .textFieldStyle(OutlinedTextFieldStyle(icon: Image(systemName:"lock")))
//                    .font(.custom("Inter", size: 20))
                    .padding()
                
                NavigationLink("HomeView", destination: HomeView(), isActive: $navigated)
                
                Button("LOGIN", action: {
                    self.navigated.toggle()
                    print("BNAC", self.navigated)
                })
                    .frame(width: 220, height: 50, alignment: .center)
                    .background(CustomColors.logoBlue)
                    .foregroundColor(.black)
                    .cornerRadius(10)
                    .font(.custom("Inter", size: 22))
                    .padding()
                
                Text("Forgot Password?")
                    .underline()
                    .font(.custom("Inter", size: 18))
                    .foregroundColor(CustomColors.MenuColor)
                    .padding()
                
                Text("Create Account")
                    .underline()
                    .font(.custom("Inter", size: 18))
                    .foregroundColor(CustomColors.MenuColor)
                    .padding()
            }
        }
    }
}
