//
//  DetailView.swift
//  MovieDB-Clone
//
//  Created by Joao Gabriel Dourado Cervo on 26/03/21.
//

import SwiftUI

struct DetailView: View {
    var movie: Movie
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                HStack {
                    movie.image
                        .resizable()
                        .frame(width: 130, height: 200)
                        .cornerRadius(10)
                        .padding(.trailing, 5)
                    
                    VStack(alignment: .leading) {
                        Text(movie.title)
                            .font(.title3)
                            .padding(.top, 30)
                        
                        Text(movie.genre)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                            .padding(.top, 0.5)
                        
                        HStack() {
                            Image(systemName: "star")
                            Text(String(format: "%.1f", movie.rate ?? 0.0))
                        }
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                        .padding(.top, 0.5)
                    }
                }
                
                Text("Overview")
                    .font(.headline)
                    .padding(.vertical, 8)
                
                Text(movie.description)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            .padding()
        }
        .navigationBarTitle("Movie Details", displayMode: .inline)
        .navigationBarBackButtonHidden(false)
        .navigationBarHidden(false)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(movie: movies[0])
    }
}
