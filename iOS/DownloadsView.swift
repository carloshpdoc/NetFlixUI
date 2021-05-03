//
//  DownloadsView.swift
//  FlimsFlix
//
//  Created by Carlos Henrique on 03/05/21.
//

import SwiftUI

struct DownloadsView: View {
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack {
                    Image(systemName: "info.circle")
                    Text("Smart Downloads")
                    Text("On")
                        .foregroundColor(.blue)
                    
                    Spacer()
                }
                .padding()
                .font(.system(size: 18, weight: .bold))
                
                ZStack {
                    Circle()
                        .foregroundColor(.graySearchBackground)
                        .padding(.horizontal, 100)
                    
                    Image(systemName: "arrow.down.to.line.alt")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 75)
                        .foregroundColor(.gray)
                }
                .frame(height:275)
                .padding(.top, 75)
                
                VStack(spacing: 20) {
                    Text("Never be without filmsFlix")
                        .font(.title2)
                        .bold()
                    Text("Download shows  and movies so you'll  never be withoout  something  to match \n-- even when  you're  offline")
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 50)
                    
                    Button(action: {
                        //
                    }, label: {
                        Text("See what You Can Download")
                            .foregroundColor(.black)
                            .padding()
                            .background(Color.white)
                    })
                }
                
                Spacer()
            }
            .foregroundColor(.white)
        }
    }
}

struct DownloadsView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)

            DownloadsView()
        }
    }
}
