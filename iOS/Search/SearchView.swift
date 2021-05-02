//
//  SearchView.swift
//  FlimsFlix
//
//  Created by Carlos Henrique on 01/05/21.
//

import SwiftUI

struct SearchView: View {
    @ObservedObject var viewModel = SearchViewModel()
    
    @State private var searchText = ""
    
    @State private var movieDetailToShow: Movie? = nil
    
    var body: some View {
        
        let searchTextBinding = Binding {
            return searchText
        } set: {
            searchText = $0
            viewModel.updateSearchText(with: $0)
        }
        
        return ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                SearchBar(text: searchTextBinding, isLoading: $viewModel.isLoading)
                    .padding()

                ScrollView {
                    if viewModel.isShowingPopularMovies {
                        PopularList(movies: viewModel.popularMovies, movieDetailShow: $movieDetailToShow)
                    }
                    
                    if viewModel.viewState == .empty {
                        Text("Sua busca não retornou resultados!")
                            .bold()
                            .padding(.top, 150)

                    } else if viewModel.viewState == .ready && !viewModel.isShowingPopularMovies {
                        VStack {
                            HStack {
                                Text("Movies & TV")
                                    .bold()
                                    .font(.title3)
                                    .padding(.leading, 12)
                                Spacer()
                            }
                            
                            SearchResultsGrid(movie: viewModel.searchResults, movieDetailToShow: $movieDetailToShow)
                            
                        }
                    }
                }
                Spacer()
            }
            
            if movieDetailToShow != nil {
                MovieDetail(movie: movieDetailToShow!, movieDetailToShow: $movieDetailToShow)
            }
        }
        .foregroundColor(.white)
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}

struct PopularList: View {
    var movies: [Movie]
    
    @Binding var movieDetailShow: Movie?
    
    var body: some View {
        VStack {
            HStack{
                Text("Buscas Populares")
                    .bold()
                    .font(.title3)
                    .padding(.leading, 12)
                Spacer()
            }
            
            LazyVStack {
                ForEach(movies, id: \.id) { movie in
                    PopularMovieView(movie: movie, movieDetailToShow: $movieDetailShow)
                        .frame(height: 75)
                }
            }
        }
    }
}
