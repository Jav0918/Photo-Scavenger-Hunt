//
//  ScavangeCell.swift
//  Photo Scavenger Hunt
//
//  Created by Jonathan Velez on 3/22/23.
//

import UIKit

class ScavengeCell: UITableViewCell {

    @IBOutlet weak var completedImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!

    func configure(with scavenge: Scavenges) {
        titleLabel.text = scavenge.title
        titleLabel.textColor = scavenge.isComplete ? .secondaryLabel : .label
        completedImageView.image = UIImage(systemName: scavenge.isComplete ? "circle.inset.filled" : "circle")?.withRenderingMode(.alwaysTemplate)
        completedImageView.tintColor = scavenge.isComplete ? .systemBlue : .tertiaryLabel
    }


}
