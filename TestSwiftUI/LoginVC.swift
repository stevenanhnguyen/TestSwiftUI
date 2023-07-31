//
//  LoginVC.swift
//  TestSwiftUI
//
//  Created by TuNA on 31/07/2023.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack {
            Text("Login View ")
                .font(.title)
            // Add your login form components here
            Text("Placeholder")
            
            Button("Button") {
                // Button action here
            }
            .font(.title)
            .fontWeight(.bold)
            .foregroundColor(Color.white)
            .frame(width: UIScreen.main.bounds.width - 40, height: 60)
            .background(Color.green)
            .cornerRadius(10) // Optional: Add corner radius for rounded corners

//            Spacer() // Clear center view -> under top view
            
        }
        .padding()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LoginView()
            LoginView().previewLayout(.fixed(width: 573.0, height: 320))
        }
    }
}
