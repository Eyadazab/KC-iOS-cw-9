//
//  ContentView.swift
//  movie app
//
//  Created by Moahmed Azab on 09/11/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(movies) {a in
                NavigationLink {
                    details(A: a)
                } label: {
                    ExtractedView(a: a)
                }

                
            }.navigationTitle("movies")
        }.accentColor(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ExtractedView: View {
    var a: movie
    var body: some View {
        HStack{
            Image(a.movieName)
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
                .clipShape(Circle())
            Text(a.movieName)
                .font(.largeTitle)
        
        }
    }
}
