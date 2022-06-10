//
//  DataMovie.swift
//  App Filmes
//
//  Created by Filipe Clemente on 09/06/2022.
//

import Foundation

class DataMovie{
    
    static var collection:[Movie] = []
    
    static func getFavoriteMovies () -> [Movie] {
        var favoriteMovies:[Movie] = []
        
        for movie in DataMovie.collection {
            if(movie.isFavorite){
                favoriteMovies.append(movie)
            }
        }
        return favoriteMovies
    }
    
}
