//
//  GlobalHelpers.swift
//  FlimsFlix
//
//  Created by Carlos Henrique on 01/04/21.
//

import Foundation
import SwiftUI

let exampleVideoURL = URL(string: "https://www.radiantmediaplayer.com/media/big-buck-bunny-360.mp4")!

let exampleImageURL = URL(string: "https://picsum.photos/300/104")!

let exampleImageURL2 = URL(string: "https://picsum.photos/300/105")!

let exampleImageURL3 = URL(string: "https://picsum.photos/300/106")!

var randomExampleImgeURL: URL {
    return [exampleImageURL, exampleImageURL2, exampleImageURL3].randomElement() ?? exampleImageURL
}

let exampleTrailer1 = Trailer(name: "Season 3 Trailer", videoURL: exampleVideoURL, thumbnailImageURL: exampleImageURL)

let exampleTrailer2 = Trailer(name: "The Hero's Journey", videoURL: exampleVideoURL, thumbnailImageURL: exampleImageURL2)

let exampleTrailer3 = Trailer(name: "The Mysterius", videoURL: exampleVideoURL, thumbnailImageURL: exampleImageURL3)

let exampleTrailers = [exampleTrailer1, exampleTrailer2, exampleTrailer3]

let exampleMovie1 = Movie(
    id: UUID().uuidString,
    name: "DARK",
    thumbnailURL: URL(string: "https://picsum.photos/200/300")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-fi Tv"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 1,
    defaultEpisode: exxampleEpisodeInfo1,
    creators: "Baram do Oban, Jantje Friese",
    cast: "KLAS ASDAS, asdasd, asdasd, klmkml",
    moreLikeThisMovies: exampleMovies, trailers: exampleTrailers
)

let exampleMovie2 = Movie(
    id: UUID().uuidString,
    name: "Travers",
    thumbnailURL: URL(string: "https://picsum.photos/200/300")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-fi Tv"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 2,
    defaultEpisode: exxampleEpisodeInfo1,
    creators: "Baram do Oban, Jantje Friese",
    cast: "KLAS ASDAS, asdasd, asdasd, klmkml",
    moreLikeThisMovies: exampleMovies,
    promotionHeadline: "Best Rated Show", trailers: exampleTrailers
)

let exampleMovie3 = Movie(
    id: UUID().uuidString,
    name: "Community",
    thumbnailURL: URL(string: "https://picsum.photos/200/301")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-fi Tv"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 3,
    defaultEpisode: exxampleEpisodeInfo1,
    creators: "Baram do Oban, Jantje Friese",
    cast: "KLAS ASDAS, asdasd, asdasd, klmkml",
    moreLikeThisMovies: exampleMovies, trailers: exampleTrailers
)

let exampleMovie4 = Movie(
    id: UUID().uuidString,
    name: "Alone",
    thumbnailURL: URL(string: "https://picsum.photos/200/302")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-fi Tv"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 4,
    defaultEpisode: exxampleEpisodeInfo1,
    creators: "Baram do Oban, Jantje Friese",
    cast: "KLAS ASDAS, asdasd, asdasd, klmkml",
    moreLikeThisMovies: exampleMovies,
    promotionHeadline: "New episodes comming soon", trailers: exampleTrailers
)

let exampleMovie5 = Movie(
    id: UUID().uuidString,
    name: "Hannibal",
    thumbnailURL: URL(string: "https://picsum.photos/200/303")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-fi Tv"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 5,
    defaultEpisode: exxampleEpisodeInfo1,
    creators: "Baram do Oban, Jantje Friese",
    cast: "KLAS ASDAS, asdasd, asdasd, klmkml",
    moreLikeThisMovies: exampleMovies, trailers: exampleTrailers
)

let exampleMovie6 = Movie(
    id: UUID().uuidString,
    name: "After Life",
    thumbnailURL: URL(string: "https://picsum.photos/200/304")!,
    categories:["Dystopian", "Exciting", "Suspenseful", "Sci-fi Tv"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 6,
    defaultEpisode: exxampleEpisodeInfo1,
    creators: "Baram do Oban, Jantje Friese",
    cast: "KLAS ASDAS, asdasd, asdasd, klmkml",
    moreLikeThisMovies: exampleMovies,
    promotionHeadline: "Watch Season 6 Now", trailers: exampleTrailers
)

let exxampleEpisodeInfo1 = CurrentEpisodeInfo(episodeName: "uhi aduahdushaiusdn", description: "dkjndjknjkndJKD AJd jADNKJnjdnqjwnb odnwiodniodnIONDOS DIASNINIOAE OIAENINifanosiad aoisndoiandiosnidnauqbwud adoinwoindoidnoiwndiodion oindoi", season: 2, episode: 1)

var exampleMovies: [Movie] {
    return [exampleMovie1, exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6].shuffled()
}
extension LinearGradient {
    static let blackOpacityGradient = LinearGradient(
        gradient: Gradient(colors: [Color.black.opacity(0.0), Color.black.opacity(0.95)]),
        startPoint: .top,
        endPoint: .bottom
    )
}

extension String {
    func widthOfString(usingFont font: UIFont)-> CGFloat {
        let fontAttributes = [NSAttributedString.Key.font: font]
        let size = self.size(withAttributes: fontAttributes)
        return size.width
    }
}
