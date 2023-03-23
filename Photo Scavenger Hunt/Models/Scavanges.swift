//
//  Tasks.swift
//  Photo Scavenger Hunt
//
//  Created by Jonathan Velez on 3/22/23.
//
import UIKit
import CoreLocation

class Scavenges {
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

extension Scavenges {
    static var mockedScavenges: [Scavenges] {
        return [
            Scavenges (title: "Post some food",
                 description: "Your favorite fried chicken."),
            Scavenges (title: "Lets find some animals",
                 description: "Find a longhorn"),
            Scavenges (title: "Skyscrapers",
                 description: "Your favorite skyline")
        ]
    }
}
