//
//  HomeView.swift
//  FlimsFlix
//
//  Created by Carlos Henrique on 01/04/21.
//

import SwiftUI

struct HomeView: View {
    var viewModel = HomeViewModel()
    
      let screen = UIScreen.main.bounds
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            // main vstack
            ScrollView(showsIndicators: false) {
                LazyVStack {
                   
                    ZStack(alignment: .top) {
                        TopMoviePreview(movie: exampleMovie1)
                            .frame(width: screen.width)
                            .padding(.top, -110)
                        
                        Text("LOGO")
                    }
                    
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
                                    ForEach(viewModel.getMovies(forCat: category)) { movie in
                                        StandardHomeMovie(movie: movie)
                                            .frame(width: 100, height: 200)
                                            .padding(.horizontal, 20)
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        .foregroundColor(.white)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
