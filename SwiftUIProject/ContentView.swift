//
//  ContentView.swift
//  SwiftUIProject
//
//  Created by Michael Khavin on 07.08.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var counter = 0.0
    @State private var isAlertPresented = false
    @State private var text = ""
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Hello, world!")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.blue)
                    .padding()
                    .background(.green)
                
                Button("Button") {
                }
                
                Circle().frame(width: 30, height: 30)
                
                HStack {
                    Text("Hello, world!")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.blue)
                        .padding()
                        .background(.green)
                    
                    Button("Button") {
                    }
                    
                    Circle().frame(width: 30, height: 30)
                }
                
                VStack {
                    Text("\(counter)")
                    Slider(value: $counter,
                           in: 0...10)
                    
                    Button("Type on me", action: {
                        isAlertPresented = true
                    })
                }
                
                Spacer()
            }
            .alert("Hello world",
                   isPresented: $isAlertPresented) {}
                .searchable(text: $text)
                .frame(maxWidth: .infinity,
                       alignment: .leading)
                .padding(.leading, 16)
                .padding(.trailing, 16)
                .padding(.top, 5)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
