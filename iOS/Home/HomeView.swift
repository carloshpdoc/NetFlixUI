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
                    
                    TopRowButtons()
                    
                    TopMoviePreview(movie: exampleMovie3)
                        .frame(width: screen.width)
                        .padding(.top, -110)
                        .zIndex(-1)
                    
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

struct TopRowButtons: View {
    var body: some View {
        HStack {
            Button(action: {
                //
            }, label: {
                Image("Logo")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 50)
            }).buttonStyle(PlainButtonStyle())
            
            
            Spacer()
            
            Button(action: {
                //
            }, label: {
                Text("TV Shows")
            }).buttonStyle(PlainButtonStyle())
            
            Spacer()
            
            Button(action: {
                //
            }, label: {
                Text("Movies")
            }).buttonStyle(PlainButtonStyle())
            
            Spacer()
            
            Button(action: {
                //
            }, label: {
                Text("My List")
            }).buttonStyle(PlainButtonStyle())
            
        }
        .padding(.leading, 10)
        .padding(.trailing, 30)
    }
}
