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
    var image: UIImage
    var story: String
    var user: String
    
    init(id: UUID = UUID(), issue: String, title: String, image: UIImage, story: String, user: String) {
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
        Story(issue: "Depression", title: "Overcoming by Helping Others", image: UIImage(named: "Dog")!, story: "I started getting more involved in the community", user: "John")
    ]
}
