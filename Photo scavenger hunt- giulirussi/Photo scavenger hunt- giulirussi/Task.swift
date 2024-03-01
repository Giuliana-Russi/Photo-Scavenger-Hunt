//
//  Task.swift
//  Photo scavenger hunt- giulirussi
//
//  Created by Giuliana Russi on 2/19/24.
//

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
            Task(title: "Your Favorite Local Restaurant",
                 description: "Where do you go for food?"),
            Task(title: "Your Favorite Local Cafe",
                 description: "Where do you go to get java?"),
            Task(title: "Your Go-To Brunch Place",
                 description: "Where do you go for brunch?"),
            Task(title: "Your Favorite Hiking Spot",
                 description: "Where do you go to hike?")
        ]
    }
}

