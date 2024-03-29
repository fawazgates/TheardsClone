//
//  LoginView.swift
//  Threads
//
//  Created by User on 03/03/24.
//

import Foundation
import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        VStack {
            Spacer()
            
            Image("Threads")
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 120)
                .padding()
            
            VStack {
                TextField("Enter your email..", text: $email)
                    .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    .modifier(ThreadsTextFieldModifier())
                
                SecureField("Enter your password..", text: $password)
                    .modifier(ThreadsTextFieldModifier())
            }
            NavigationLink {
                Text("Forgot password")
            } label: {
                Text("Forgot password")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .padding(.vertical)
                    .padding(.trailing, 28)
                    .foregroundColor(.black)
                    .frame(maxWidth: .infinity, alignment: .trailing)
            }
            Button {
            } label: {
                Text("Login")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 352, height: 44)
                    .background(.black)
                    .cornerRadius(8)
            }
            Spacer()
            
            Divider()
            
            NavigationLink {
                RegistrationView()
                    .navigationBarBackButtonHidden(true)
            } label: {
                HStack(spacing: 3) {
                    Text("Don't have an account?")
                    
                    Text("Sign Up")
                        .fontWeight(.semibold)
                }
                .foregroundColor(.black)
                .font(.footnote)
            }
            .padding(.vertical, 16)
        }
    }
}

#Preview {
    LoginView()
}
