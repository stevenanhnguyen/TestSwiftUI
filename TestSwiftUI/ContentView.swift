//
//  ContentView.swift
//  TestSwiftUI
//
//  Created by TuNA on 31/07/2023.
//

import SwiftUI

struct DestinationView: View {
    var body: some View {
        VStack {
            Text("Destination View")
                .font(.title)
            NavigationLink("Back to Login", destination: LoginView())
                .padding()
        }
    }
}

struct ContentView: View {
    @State var isShowAlert: Bool = false
    @State var message: String = ""
    
    var body: some View {
        HStack {
            ExtractedView(number: 10, isShowAlert: $isShowAlert, message: $message)
            ExtractedView(number: 10, isShowAlert: $isShowAlert, message: $message)
            ExtractedView(number: 22, isShowAlert: $isShowAlert, message: $message)
        }
        .alert(isPresented: $isShowAlert, content: {
            Alert(title: Text("Error"),
                  message: Text(message))
        })
    }
}

//struct ContentView: View {
//    var body: some View {
//        NavigationView {
//            VStack {
//                Image(systemName: "globe")
//                    .imageScale(.large)
//                    .foregroundColor(.accentColor)
//                Text("Hello, world!")
//
//                // Add the NavigationLink to DestinationView
//                NavigationLink(destination: DestinationView()) {
//                    Text("Go to Destination")
//                }
//
//                // Add the NavigationLink to LoginView
//                NavigationLink(destination: LoginView()) {
//                    Text("Login")
//                }
//            }
//            .padding()
//            .navigationBarTitle("Home", displayMode: .inline)
//        }
//    }
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView().previewLayout(.fixed(width: 573.0, height: 320))
        }
    }
}

struct ExtractedView: View {
    @State var number: Int
    @Binding var isShowAlert: Bool
    @Binding var message: String
    
    var body: some View {
        VStack(alignment: .center) {
            Button(action: {
                if number < 20 {
                    number += 1
                } else {
                    isShowAlert = true
                    message = "Maximum"
                }
                
            }) {
                Image(systemName: "arrowtriangle.up.fill")
                    .resizable()
                    .frame(width: 50.0, height: 50.0)
                    .foregroundColor(.red)
            }
            .frame(width: 50.0, height: 50.0)
            Text("\(number)")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.blue)
                .multilineTextAlignment(.center)
            Button(action: {
                if number > 0 {
                    number -= 1
                } else {
                    isShowAlert = true
                    message = "Minimum"
                }
            }) {
                Image(systemName: "arrowtriangle.down.fill")
                    .resizable()
                    .frame(width: 50.0, height: 50.0)
            }
            .frame(width: 50.0, height: 50.0)
        }
    }
}
