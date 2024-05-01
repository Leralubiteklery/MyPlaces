//
//  CustomTableViewCell.swift
//  MyPlaces
//
//  Created by Lera Savchenko on 26.02.24.
//

import UIKit
import Cosmos

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet var imageOfPlace: UIImageView! {
        didSet {
            imageOfPlace.layer.cornerRadius = imageOfPlace.frame.size.height / 2
            imageOfPlace.clipsToBounds = true
        }
    }
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var typeLabel: UILabel!
    @IBOutlet var locationLabel: UILabel!
    
    @IBOutlet var cosmosView: CosmosView! {
        didSet {
            cosmosView.settings.updateOnTouch = false
        }
    }
}
