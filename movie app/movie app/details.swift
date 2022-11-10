//
//  details.swift
//  movie app
//
//  Created by Moahmed Azab on 10/11/2022.
//

import SwiftUI

struct details: View {
    var A:movie
    var body: some View {
        ZStack{
            Image(A.movieName)
                .resizable()
                .ignoresSafeArea()
                .blur(radius: 5)
            
            VStack{
                Spacer()
                Image(A.movieName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .padding(4)
                    .background(Color.white)
                    .clipShape(Circle())
                    .padding()
                Text(A.movieName)
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .fontWeight(.heavy)
                
                
                ScrollView(.horizontal) {
                    HStack{
                        ForEach(A.actors,id: \.self) {A in
                            VStack{
                                Text(A)
                                    .font(.largeTitle)
                                    .foregroundColor(.white)
                                Image(A)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 150)
                                    .background(Color.white)
                                    .padding()
                                    .cornerRadius(10)
                            }
                        }
                    }
                }
            }
        }
    }
}

struct details_Previews: PreviewProvider {
    static var previews: some View {
        details(A: movie( movieName: "avengers end game", actors: ["chadwick boseman", "tony stark","steve rogers", "thor", "mark ruffalo"]))
    }
}
struct b: ViewModifier {
    func body(content: Content) -> some View {
        content
    }
}
