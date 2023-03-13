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
                            Color.white
                                .aspectRatio(1.618, contentMode: .fill)
                                .overlay(
                                    ZStack {
                                        datum.image
                                            .resizable()
                                            .scaledToFill()
                                        VStack {
                                            HStack {
                                                Text(datum.issue)
                                                    .padding()
                                                    .background(Color.white)
                                            }
                                        }
                                        
                                    }
                                )
                                .clipped()
                                .cornerRadius(5)
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
