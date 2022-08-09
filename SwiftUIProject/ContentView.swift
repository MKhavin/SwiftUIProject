//
//  ContentView.swift
//  SwiftUIProject
//
//  Created by Michael Khavin on 07.08.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            FeedView()
                .tabItem {
                    Label("Feed", systemImage: "house.fill")
                }
            LoginView()
                .tabItem {
                    Label("Profile", systemImage: "person.fill")
                }
            Text("Player")
                .tabItem {
                    Label("Player", systemImage: "music.note")
                }
            Text("Video")
                .tabItem {
                    Label("Video", systemImage: "play.rectangle.fill")
                }
            Text("Recorder")
                .tabItem {
                    Label("Recorder", systemImage: "record.circle.fill")
                }
        }
        .onAppear {
            UITabBar.appearance().scrollEdgeAppearance = UITabBarAppearance()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
