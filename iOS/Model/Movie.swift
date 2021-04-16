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
    var genre: HomeGenre = .AllGenres
    
    // MARK: - MovieDetail View
    var year: Int
    var rating: String
    var numberOfSeasons: Int?
    
    // MARK: - Personalization
    var currentEpisode: CurrentEpisodeInfo?
    
    var defaultEpisode: CurrentEpisodeInfo
    var creators: String
    var cast: String
    
    var moreLikeThisMovies: [Movie]
    
    var episodes: [Episode]?
    
    var movieType: MovieType {
        return episodes == nil ? .movie : .tvShow
    }
    
    var promotionHeadline: String?
    
    var trailers: [Trailer]

    var numberOfSeasonsDisplay: String {
        if let num = numberOfSeasons {
            if num == 1 {
                 return "1 season"
            } else {
                return "\(num) seasons"
            }
        }
        
        return "" 
    }
    
    var episodeInfoDisplay: String {
        if let current = currentEpisode {
            return "S\(current.season):E\(current.episode) \(current.episodeName)"
        } else {
            return "S\(defaultEpisode.season):E\(defaultEpisode.episode) \(defaultEpisode.episodeName)"
        }
    }
    
    var episodeDescriptionDisplay: String {
        if let current = currentEpisode {
            return current.description
        } else {
            return defaultEpisode.description
        }
    }
}

struct CurrentEpisodeInfo: Hashable, Equatable {
    var episodeName: String
    var description: String
    var season: Int
    var episode: Int
}

enum MovieType {
    case movie
    case tvShow
}
