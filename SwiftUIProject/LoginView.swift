//
//  VKProfileView.swift
//  SwiftUIProject
//
//  Created by Michael Khavin on 08.08.2022.
//

import SwiftUI

struct LoginView: View {
    @State var login = ""
    @State var password = ""
    
    var body: some View {
        VStack {
            Spacer()
            
            Image("VKLogo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100, alignment: .center)
                .padding()
            
            Spacer()
            
            VStack {
                TextField("Login", text: $login)
                Divider()
                SecureField("Password", text: $password)
            }
            .frame(width: 300)
            .padding()
            .background(.bar)
            .cornerRadius(12)
            
            Spacer()
            
            Button("Login") {}
                .frame(width: 200)
                .font(.title2)
                .foregroundColor(.white)
                .padding()
                .background(.blue)
                .cornerRadius(12)
            
            Spacer()
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
