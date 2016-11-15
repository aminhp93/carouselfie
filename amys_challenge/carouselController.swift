//
//  carouselController.swift
//  amys_challenge
//
//  Created by Minh Pham on 11/14/16.
//  Copyright © 2016 Jill Robinson. All rights reserved.
//
import UIKit

class CarouselController: UIViewController, iCarouselDelegate, iCarouselDataSource {
    
    @IBOutlet var carouselView: iCarousel!
    
    var numbers = [Int]()
    var imageArray:NSMutableArray = NSMutableArray()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        print("Hello MInh")

        imageArray = ["1.png", "2.png", "3.png"]
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        carouselView.type = .TimeMachine
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfItemsInCarousel(carousel: iCarousel) -> Int {
        print("37")

        return imageArray.count
    }
    
    func carousel(carousel: iCarousel, viewForItemAtIndex index: Int, reusingView view: UIView?) -> UIView {
        var imageView: UIImageView!
        
        if view == nil{
            print("46")
            imageView = UIImageView(frame: CGRectMake(0, 0 , 200, 200))
//            imageView.contentMode = .ScaleAspectFit
        } else {
            print("50")
            imageView = view as! UIImageView
        }
        print("53")
        imageView.image = UIImage(named: "\(imageArray.objectAtIndex(index))")
        return imageView
    }
    
    
}


