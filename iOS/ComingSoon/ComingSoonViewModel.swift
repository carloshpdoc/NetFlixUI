//
//  ComingSoonViewModel.swift
//  FlimsFlix
//
//  Created by Carlos Henrique on 02/05/21.
//

import SwiftUI

class ComingSoonViewModel: ObservableObject {
    @Published var movies: [Movie] = []
    
    init() {
        self.movies = generateMovies(20)
    }
}
