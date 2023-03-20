//
//  HomeView.swift
//  Overcome
//
//  Created by John Smith on 3/12/23.
//

import SwiftUI
import UIKit

struct HomeView: View {
    let data = Story.sampleData
    let columns = [
        GridItem(.flexible())
    ]
    var body: some View {
        // A ZStack is provided if you need to add a background
        ZStack {
            
            // Main content
            VStack {
                // Overcome title
                HStack {
                    Text("Overcome")
                        .font(.system(size: 32))
                        .bold()
                        .padding()
                    Spacer()
                }
                // Grid view for each story
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(data) { datum in
                            VStack {
                                HStack {
                                    Text(datum.title)
                                        .bold()
                                    Spacer()
                                }
                                HStack {
                                    Text(datum.user)
                                    Spacer()
                                }
                                ZStack {
                                    Color.white
                                        .aspectRatio(1.618, contentMode: .fill)
                                        .overlay(
                                            datum.image
                                                .resizable()
                                                .scaledToFill()
                                        )
                                        .clipped()
                                        .cornerRadius(5)
                                    VStack {
                                        Spacer()
                                        HStack {
                                            
                                            Text(datum.issue)
                                                .foregroundColor(.white)
                                                .padding()
                                                .background(.black)
                                                .cornerRadius(5)
                                            Spacer()
//                                            Text(author)
//                                                .foregroundColor(.white)
//                                                .padding()
//                                                .background(.black)
//                                                .cornerRadius(5)
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                .padding()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
