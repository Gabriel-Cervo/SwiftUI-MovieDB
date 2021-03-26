//
//  PopularMoviesView.swift
//  MovieDB-Clone
//
//  Created by Joao Gabriel Dourado Cervo on 25/03/21.
//

import SwiftUI

struct PopularMoviesView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Popular Movies")
                .font(.title3)
            
            NavigationLink(
                destination: DetailView(movie: movies[3]),
                label: {
                    MiniMovieView(movie: movies[3])
            })
            
            NavigationLink(
                destination: DetailView(movie: movies[4]),
                label: {
                    MiniMovieView(movie: movies[4])
            })
            
            NavigationLink(
                destination: DetailView(movie: movies[6]),
                label: {
                    MiniMovieView(movie: movies[6])
            })
        }
    }
}

struct PopularMoviesView_Previews: PreviewProvider {
    static var previews: some View {
        PopularMoviesView()
    }
}
