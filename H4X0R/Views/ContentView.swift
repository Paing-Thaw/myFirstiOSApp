//
//  ContentView.swift
//  H4X0R
//
//  Created by June's MacBook on 11/12/20.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = Network()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts){ post in
                
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text("UpVotes \(String(post.points))")
                            .frame(width: 80)
                        Text(post.title)
                    }
                }
                
            }
            .navigationBarTitle("H4X0R NEWS")
        }.onAppear(perform: {
            self.networkManager.fetchData()
        })
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewDevice("iPhone 11")
            ContentView()
        }
    }
}


//let posts = [
//    Post(id: "1", title: "Hello" ),
//    Post(id: "2", title: "Bonjour" ),
//    Post(id: "3", title: "Hi" )
//]
