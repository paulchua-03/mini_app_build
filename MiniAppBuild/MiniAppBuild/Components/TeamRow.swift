//
//  TeamRow.swift
//  MiniAppBuild
//
//  Created by Paul Angelo Chua on 11/30/25.
//

import Foundation
import SwiftUI

struct TeamRow: View {
    @State private var username = ""
    @State private var password = ""

    var body: some View {
        NavigationView {
            ZStack {
                Color.red
                    .ignoresSafeArea()
                    .opacity(0.5)
                NavigationStack {
                    Text("Login")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                    TextField("Username", text: $username)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.white)
                        .cornerRadius(5.0)
                    SecureField("Password", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.white)
                        .cornerRadius(5.0)
                    Button("Login") {
                        
                    }
                    .foregroundColor(Color.white)
                    .frame(width: 300, height: 50)
                    .background(Color.red)
                    .cornerRadius(5.0)

                    
                }
                .padding()
            }
        }
        
    }
}

#Preview {
    TeamRow()
}
