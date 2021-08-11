//
//  ContentView.swift
//  Tech News
//
//  Created by Andrickson Coste on 5/5/20.
//  Copyright © 2020 Qalab Inc. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkMamager()
    
    
    
    var body: some View {
        NavigationView{
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
                
            }
            .navigationBarTitle("Tech News")
        }
        .onAppear {
            self.networkManager.fecthData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//let post = [Post(id: "1", title: "Hello"), Post(id: "2", title: "Bonjour"), Post(id: "3", title: "Hola"), ]
