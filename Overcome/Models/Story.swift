//
//  Story.swift
//  Overcome
//
//  Created by John Smith on 3/12/23.
//

import Foundation
import UIKit
import SwiftUI

struct Story: Identifiable {
    let id: UUID
    var issue: String
    var title: String
    var image: Image
    var story: String
    var user: String
    
    init(id: UUID = UUID(), issue: String, title: String, image: Image, story: String, user: String) {
        self.id = id
        self.issue = issue
        self.title = title
        self.image = image
        self.story = story
        self.user = user
    }
}

extension Story {
    static let sampleData: [Story] =
    [
        Story(issue: "Depression", title: "Overcoming by Helping Others", image: Image("Dog"), story: "I started getting more involved in the community", user: "John"),
        Story(issue: "Addiction", title: "Exercising: A Natural Medicine", image: Image("Sunset"), story: "I joined a local support group", user: "Teemo"),
        Story(issue: "Anxiety", title: "Self Love", image: Image("Paint"), story: "I learned to love myself and created a vision for my future", user: "Sarah"),
        Story(issue: "Depression", title: "Overcoming by Helping Others", image: Image("Dog"), story: "I started getting more involved in the community", user: "John"),
        Story(issue: "Addiction", title: "Exercising: A Natural Medicine", image: Image("Sunset"), story: "I joined a local support group", user: "Teemo"),
        Story(issue: "Anxiety", title: "Self Love", image: Image("Paint"), story: "I learned to love myself and created a vision for my future", user: "Sarah"),
        Story(issue: "Depression", title: "Overcoming by Helping Others", image: Image("Dog"), story: "I started getting more involved in the community", user: "John"),
        Story(issue: "Addiction", title: "Exercising: A Natural Medicine", image: Image("Sunset"), story: "I joined a local support group", user: "Teemo"),
        Story(issue: "Anxiety", title: "Self Love", image: Image("Paint"), story: "I learned to love myself and created a vision for my future", user: "Sarah"),
        Story(issue: "Depression", title: "Overcoming by Helping Others", image: Image("Dog"), story: "I started getting more involved in the community", user: "John"),
        Story(issue: "Addiction", title: "Exercising: A Natural Medicine", image: Image("Sunset"), story: "I joined a local support group", user: "Teemo"),
        Story(issue: "Anxiety", title: "Self Love", image: Image("Paint"), story: "I learned to love myself and created a vision for my future", user: "Sarah")
    ]
}
