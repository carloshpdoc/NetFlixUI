//
//  HomeViewModel.swift
//  FlimsFlix
//
//  Created by Carlos Henrique on 03/04/21.
//

import Foundation

class HomeViewModel: ObservableObject {
    
    // String = Category
    @Published var movies: [String: [Movie]] = [:]
    
    public var allCategories: [String] {
        movies.keys.map({ String($0) })
    }
    
    public  func getMovies(forCat cat: String, andHome homeRow: HomeTopRow) -> [Movie] {
        
        switch homeRow {
        case .home:
            return movies[cat] ?? []
        case .movies:
            return (movies[cat] ?? []).filter({ $0.movieType == .movie })
        case .tvShows:
            return (movies[cat] ?? []).filter({ $0.movieType == .tvShow })
        case .myList:
            return movies[cat] ?? []
            // TO DO: Setup  MyList Properly
        }
    }

    init() {
        setupMovies()
    }
    
    func setupMovies() {
        movies["Trending Now"] = exampleMovies
        movies["Stand-Up Comedy"] = exampleMovies.shuffled()
        movies["New Releases"] = exampleMovies.shuffled()
        movies["Watch It Again"] = exampleMovies.shuffled()
        movies["Sci-Fi Movies"] = exampleMovies.shuffled()
    }
}
