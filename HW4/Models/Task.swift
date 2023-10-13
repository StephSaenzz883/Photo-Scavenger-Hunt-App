//
//  Task.swift
//  HW4
//
//  Created by stephanie saenz on 9/24/23.
//

//import Foundation
import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "Your favorite hiking spot 💐",
                 description: "Where do you go to be one with nature?"),
            Task(title: "Your favorite cafe ☕️",
                 description: "Where do you go to get a cup of joe?"),
            Task(title: "Your favorite local restaurant 🍽️",
                 description: "Where do you go to grab a bite to eat?"),
            Task(title: "Your favorite local supermarket 🍱",
                 description: "Where do you go to grocery shop?"),
            Task(title: "Your favorite local beach 🏄🏻‍♀️",
                 description: "Where do you go to tan?")
        ]
    }
}
