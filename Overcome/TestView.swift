//
//  TestView.swift
//  Overcome
//
//  Created by John Smith on 3/19/23.
//

import SwiftUI

struct TestView: View {
    let data = Story.sampleData
    let columns = [
        GridItem(.flexible())
    ]
    var body: some View {
        // A ZStack is provided if you need to add a background
        ZStack {
            Color.blue
                .edgesIgnoringSafeArea(.all)
//             Gradient colors
            Rectangle().fill(.linearGradient(
                Gradient(colors:[.black, .gray]),
                startPoint: UnitPoint(x: 0.5, y: 0),
                endPoint: UnitPoint(x: 0.5, y: 0.9)
            ))
                .edgesIgnoringSafeArea(.all)
                .opacity(0.7)
            // Main content
            VStack {
                // Overcome title
                HStack {
                    Text("Overcome")
                        .font(.system(size: 32))
                        .foregroundColor(.white)
                        .bold()
                        .padding()
                    Spacer()
                }
                HStack {
                    Text("Browse individual experiences")
//                        .font(.system(size: 18))
                        .foregroundColor(.white)
                        .padding(.leading)
                    Spacer()
                }
                // Grid view for each story
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(data) { datum in
                            VStack {
                                ZStack {
                                    Color.black
                                        .aspectRatio(1.618, contentMode: .fill)
                                        .overlay(
                                            ZStack{
                                                datum.image
                                                    .resizable()
                                                    .scaledToFill()
    //                                                .opacity(0.7)
                                                Rectangle().fill(.linearGradient(
                                                    Gradient(colors:[.black, .clear]),
                                                    startPoint: UnitPoint(x: 0.4, y: 0.1),
                                                    endPoint: UnitPoint(x: 0.9, y: 0.7)
                                                ))
                                                .opacity(0.5)
                                            }
                                            
                                        )
                                        .clipped()
                                        .cornerRadius(5)
                                    
                                    VStack {
                                        VStack {
                                            HStack {
                                                Text(datum.title)
                                                    .foregroundColor(.white)
                                                    .font(.system(size: 28))
                                                .bold()
                                                Spacer()
                                            }
                                            HStack {
                                                Text(datum.user)
                                                    .foregroundColor(.white)
                                                    .bold()
                                                    .font(.system(size: 20))
                                                Spacer()
                                            }
                                        }
                                        .padding()
                                        Spacer()
                                        HStack {
                                            Text(datum.issue)
                                                .foregroundColor(.white)
                                                .bold()
                                                .padding()
                                                .background(.green)
                                                .cornerRadius(5)
                                                .padding()
                                            Spacer()
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

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
