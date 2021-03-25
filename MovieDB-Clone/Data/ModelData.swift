//
//  ModelData.swift
//  MovieDB-Clone
//
//  Created by Joao Gabriel Dourado Cervo on 25/03/21.
//

import Foundation

var movies: [Movie] = loadMoviesJSON()

func loadMoviesJSON() -> [Movie] {
    guard let fileUrl = Bundle.main.url(forResource: "moviesData", withExtension: "json") else {
        fatalError("Can't get the designed file")
    }
    
    guard let data = try? Data(contentsOf: fileUrl) else {
        fatalError("Can't get contents of URL")
    }
        
    let jsonDecoder = JSONDecoder()
    
    if let decodedData = try? jsonDecoder.decode([Movie].self, from: data) {
        return decodedData
    } else {
        print("Error while decoding data")
        return [Movie]()
    }
}
