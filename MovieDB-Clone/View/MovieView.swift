//
//  MovieView.swift
//  MovieDB-Clone
//
//  Created by Joao Gabriel Dourado Cervo on 25/03/21.
//

import SwiftUI

struct MovieView: View {
    var movie: Movie
    
    var body: some View {
        VStack(alignment: .leading) {
            movie.image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 130, height: 210)
                .cornerRadius(10.0)
            
            Text(movie.title)
                .lineLimit(1)
                .frame(width: 115)
                .foregroundColor(.black)
            
            HStack() {
                Image(systemName: "star")
                Text(String(format: "%.1f", movie.rate ?? 0.0))
            }
            .font(.subheadline)
            .foregroundColor(.secondary)
        }
    }
}

struct MovieView_Previews: PreviewProvider {
    static var previews: some View {
        MovieView(movie: movies[0])
    }
}
