//
//  ContentView.swift
//  SwiftUITabbar
//
//  Created by ZMF on 2025/2/28.
//

import SwiftUI

struct ContentView: View {
    @State private var navTitle: String = ""
    
    var body: some View {
        NavigationView {
            TabView {
                HomeView()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("首页")
                    }
                    .onAppear {
                        navTitle = ""
                    }
                
                MeView()
                    .tabItem {
                        Image(systemName: "person.fill")
                        Text("我的")
                    }
                    .onAppear {
                        navTitle = "我的"
                    }
            }
            .navigationBarHidden(navTitle.count == 0)
            .navigationBarTitle(navTitle, displayMode: .inline)
        }
    }
}

#Preview {
    ContentView()
}
