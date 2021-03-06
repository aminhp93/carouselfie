//
//  CustomCellController.swift
//  amys_challenge
//
//  Created by Jill Robinson on 10/11/2016.
//  Copyright © 2016 Jill Robinson. All rights reserved.
//

import Foundation
import UIKit

class CustomCell: UITableViewCell {
    
    //var itemToEdit\
    
    var buttonClickingDelegate: CustomCellDelegate?
    
    @IBOutlet weak var CustomCellImage: UIImageView!
   
    @IBOutlet weak var CustomCellButton: UIButton!
    
    @IBAction func DescriptionButtonPressed(sender: UIButton) {
        print("button in custom cell clicked")

        // we want to get data off of the main view controller 8***** delegate ****
        // go to the page (delegate) wher the desired method is found, then call that method
        buttonClickingDelegate?.buttonWasPressed(self)
        
    }
}
