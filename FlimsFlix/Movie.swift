//
//  Movie.swift
//  FlimsFlix
//
//  Created by Carlos Henrique on 01/04/21.
//

import Foundation

struct Movie: Identifiable {
    var id: String
    var name: String
    var thumbnailURL: URL
    
    var categories: [String]
}
