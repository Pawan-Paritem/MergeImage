//
//  ViewController.swift
//  MergeImages
//
//  Created by Pawan  on 23/11/2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var buttonTapped: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func buttonTappedAction(_ sender: UIButton) {
        
        
      let LeftImage = UIImage(named: "1")
      let RightImage = UIImage(named: "2")
      let size = CGSize(width: LeftImage!.size.width, height: LeftImage!.size.height + RightImage!.size.height)
      UIGraphicsBeginImageContextWithOptions(size, false, 0.0)
      LeftImage?.draw(in: CGRect(x: 0, y: 0, width:size.width/2, height: size.height))
      RightImage?.draw(in: CGRect(x: size.width/2, y: 0, width:size.width, height: size.height))
      let newImage:UIImage = UIGraphicsGetImageFromCurrentImageContext()!
      UIGraphicsEndImageContext()
        imageView.image = newImage
        
       
//            let bottomImage = UIImage(named: "1")!
//            let topImage = UIImage(named: "2")!
//            let newSize = CGSize(width: 100, height: 100) // set this to what you need
//            UIGraphicsBeginImageContextWithOptions(newSize, false, 0.0)
//            bottomImage.draw(in: CGRect(origin: .zero, size: newSize))
//            topImage.draw(in: CGRect(origin: .zero, size: newSize))
//            let newImage = UIGraphicsGetImageFromCurrentImageContext()
//            imageView.image = newImage
//            UIGraphicsEndImageContext()
            
    }
    
}

