//
//  Model.swift
//  ViewGames
//
//  Created by İbrahim Bayram on 12.02.2023.
//

import Foundation

struct Game : Decodable {
    let id : Int
    let title : String
    let genre : String
    let publisher : String
    let developer : String
    let release_date : String
    let platform : String
    let thumbnail : String
}
