//
//  LoginViewModel.swift
//  extensiLE
//
//  Created by Becca GW on 2023-02-28.
//

import SwiftUI
import Combine

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    var errorMessage = ""
}

extension LoginViewModel {
    func loginUser() -> Bool {
        if email == "bgwyllie@dev.com",
           password == "1234" {
            let token = UUID().uuidString
            UserDefaults.standard.set(token, forKey: "token")
//            CapstoneAppManager.Authenticated.send(true)
            
            return true
        } else {
            errorMessage = "Invalid credentials"
            return false
        }
    }
}

