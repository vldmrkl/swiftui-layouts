//
//  ContentView.swift
//  Instagram
//
//  Created by Volodymyr Klymenko on 2020-02-06.
//  Copyright © 2020 Volodymyr Klymenko. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            FeedView()
                .tabItem {
                    Image(systemName: "house.fill")
            }
            Text("Explore")
                .tabItem {
                    Image(systemName: "magnifyingglass")
            }
            Text("Create a post")
                .tabItem {
                    Image(systemName: "plus.square")
            }
            Text("Activity")
                .tabItem {
                    Image(systemName: "suit.heart")
            }
            Text("My profile")
                .tabItem {
                    Image(systemName: "person.crop.circle")
            }
        }
        .accentColor(Color.black)
        .edgesIgnoringSafeArea(.top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            ContentView().previewDevice(PreviewDevice(rawValue: "iPhone SE"))
            ContentView().previewDevice(PreviewDevice(rawValue: "iPhone XS"))
        }
    }
}
