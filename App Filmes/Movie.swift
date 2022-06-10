//
//  Movie.swift
//  App Filmes
//
//  Created by Filipe Clemente on 09/06/2022.
//

import Foundation

class Movie {
    var title:String, imageName:String, isFavorite:Bool
    
    
    init(title:String, imageName:String, isFavorite:Bool){
        self.title=title
        self.imageName=imageName
        self.isFavorite=isFavorite
    }
}
