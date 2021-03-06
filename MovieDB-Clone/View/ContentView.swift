//
//  ContentView.swift
//  MovieDB-Clone
//
//  Created by Joao Gabriel Dourado Cervo on 25/03/21.
//

import SwiftUI

struct ContentView: View {
    @State var searchText: String = ""
    @State var isSeeAllActive: Bool = false
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    Text("MovieDB")
                        .font(.title)
                    
                    TextField("Search", text: $searchText)
                        .font(.system(.subheadline))
                        .padding(6)
                        .background(Color.init(white: 0.8, opacity: 0.3))
                        .cornerRadius(5)
                    
                    Divider()
                    
                    PlayingView(isSeeAllActive: $isSeeAllActive)
                        .padding(.vertical)
                    
                    Divider()
                        .padding(.top)
                    
                    PopularMoviesView()
                        .padding(.top)
                }
                .padding()
            }
            .navigationTitle("")
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
        }
        .sheet(isPresented: $isSeeAllActive, content: {
            AllMoviesView()
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
