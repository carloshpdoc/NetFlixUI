//
//  GlobalHelpers.swift
//  FlimsFlix
//
//  Created by Carlos Henrique on 01/04/21.
//

import Foundation
import SwiftUI

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
    cast: "KLAS ASDAS, asdasd, asdasd, klmkml"
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
    promotionHeadline: "Best Rated Show"
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
    cast: "KLAS ASDAS, asdasd, asdasd, klmkml"
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
    promotionHeadline: "New episodes comming soon"
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
    cast: "KLAS ASDAS, asdasd, asdasd, klmkml"
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
    promotionHeadline: "Watch Season 6 Now"
)

let exxampleEpisodeInfo1 = CurrentEpisodeInfo(episodeName: "uhi aduahdushaiusdn", description: "dkjndjknjkndJKD AJd jADNKJnjdnqjwnb odnwiodniodnIONDOS DIASNINIOAE OIAENINifanosiad aoisndoiandiosnidnauqbwud adoinwoindoidnoiwndiodion oindoi", season: 2, episode: 1)
let exampleMovies: [Movie] = [exampleMovie1, exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6]

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
