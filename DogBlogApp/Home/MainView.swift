//
//  TabBar.swift
//  DogBlogApp
//
//  Created by Derefaa Cline on 5/11/23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            HomePage()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
            BlogList()
                .tabItem {
                    Label("Blog", systemImage: "newspaper.fill")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            
    }
}
