//
//  PlayingView.swift
//  MovieDB-Clone
//
//  Created by Joao Gabriel Dourado Cervo on 25/03/21.
//

import SwiftUI

struct PlayingView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Now playing")
                    .fontWeight(.bold)
                Spacer()
                Text("See all")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    NavigationLink(
                        destination: DetailView(movie: movies[0]),
                        label: {
                            MovieView(movie: movies[0])
                        })
                    NavigationLink(
                        destination: DetailView(movie: movies[1]),
                        label: {
                            MovieView(movie: movies[1])
                        })
                    NavigationLink(
                        destination: DetailView(movie: movies[2]),
                        label: {
                            MovieView(movie: movies[2])
                        })
                }
            }
            
        }
    }
}

struct PlayingView_Previews: PreviewProvider {
    static var previews: some View {
        PlayingView()
    }
}
