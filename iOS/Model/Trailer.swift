//
//  Trailer.swift
//  FlimsFlix
//
//  Created by Carlos Henrique on 10/04/21.
//

import Foundation

struct Trailer: Identifiable, Hashable {
    var id: String = UUID().uuidString
    var name: String
    var videoURL: URL
    var thumbnailImageURL: URL
}
