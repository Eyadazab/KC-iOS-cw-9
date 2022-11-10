//
//  File.swift
//  movie app
//
//  Created by Moahmed Azab on 09/11/2022.
//

import Foundation
struct movie:Identifiable {
    let id = UUID()
    
    
    var movieName: String
    var actors: [String]
    
}
var movie1 = movie(movieName: "avengers end game", actors: [" chadwick boseman", "tony stark","steve rogers", "thor", "mark ruffalo"])
var movie2 = movie(movieName: "spider man 2", actors: ["peter parker", "stan","mary jane", "norman osborn"])

var movies = [movie1, movie2]
