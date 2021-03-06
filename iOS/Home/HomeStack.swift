//
//  HomeStack.swift
//  FlimsFlix
//
//  Created by Carlos Henrique on 14/04/21.
//

import SwiftUI

struct HomeStack: View {

    var viewModel: HomeViewModel
    var topRowSelection: HomeTopRow

    var selectedGenre: HomeGenre
    
    @Binding var movieDetailToShow: Movie?

    var body: some View {
        ForEach(viewModel.allCategories, id: \.self) { category in
            VStack {
                HStack {
                    Text(category)
                        .font(.title3)
                        .bold()
                    Spacer()
                }
                
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack{
                        ForEach(viewModel.getMovies(forCat: category, andHome: topRowSelection, andGenre: selectedGenre)) { movie in
                            StandardHomeMovie(movie: movie)
                                .frame(width: 135, height: 200)
                                .onTapGesture(perform: {
                                    movieDetailToShow = movie
                                })
                        }
                    }
                }
            }
            .padding(.leading, 6)
        }
    }
}

struct HomeStack_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)

            ScrollView {
                HomeStack(viewModel: HomeViewModel(),topRowSelection: .home, selectedGenre: .AllGenres, movieDetailToShow: .constant(nil))
            }
            .foregroundColor(.white)
        }
    }
}
