//
//  MiniMovieView.swift
//  MovieDB-Clone
//
//  Created by Joao Gabriel Dourado Cervo on 25/03/21.
//

import SwiftUI

struct MiniMovieView: View {
    var movie: Movie
    
    var body: some View {
        HStack {
            movie.image
                .resizable()
                .frame(width: 80, height: 120)
                .cornerRadius(10.0)
            
            VStack(alignment: .leading) {
                Text(movie.title)
                    .lineLimit(1)
                
                Text(movie.description)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .padding(.vertical, 1)
                    .lineLimit(3)
                
                HStack() {
                    Image(systemName: "star")
                    Text(String(format: "%.1f", movie.rate ?? 0.0))
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
            }
        }
    }
}

struct MiniMovieView_Previews: PreviewProvider {
    static var previews: some View {
        MiniMovieView(movie: movies[0])
    }
}
