//
//  Episode.swift
//  FlimsFlix
//
//  Created by Carlos Henrique on 10/04/21.
//

import Foundation

struct Episode: Identifiable {
    var id = UUID().uuidString
    
    var name: String
    var season: Int
    var thumbailImageURLString: String
    var description: String
    var lenght: Int
    
    var thumbailURL: URL {
        return URL(string: thumbailImageURLString)!
    }
    
}
