//
//  ContentView.swift
//  SwiftUITest
//
//  Created by DmitriiG on 27.02.2023.
//

import SwiftUI
import UIKit

struct ContentView: View {
    
    var body: some View {
        
        TabView {
            TestViews()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Feed")
                }
            LoginView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
            MyUniverse()
                .tabItem {
                    Image(systemName: "music.note")
                    Text("Player")
                }
            Text("Video")
                .tabItem {
                    Image(systemName: "play.tv.fill")
                    Text("Video")
                }
            Text("Recorder")
                .tabItem {
                    Image(systemName: "mic.fill")
                    Text("Recorder")
                }
        }
        .onAppear() {
            UITabBar.appearance().backgroundColor = UIColor(Color(red: 242/255, green: 242/255, blue: 247/255, opacity: 100))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
