//
//  AllMoviesView.swift
//  MovieDB-Clone
//
//  Created by Joao Gabriel Dourado Cervo on 26/03/21.
//

import SwiftUI

struct AllMoviesView: View {
    var body: some View {
        VStack {
            Text("All Movies")
                .font(.title)
            
            Divider()
            
            List(movies, id: \.self.title) { movie in
                MiniMovieView(movie: movie)
            }
            .padding(.leading, -10)
        }
        .padding()
    }
}

struct AllMoviesView_Previews: PreviewProvider {
    static var previews: some View {
        AllMoviesView()
    }
}
