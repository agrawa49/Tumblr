//
//  FullPhotoViewController.swift
//  tumblr
//
//  Created by Akhil Agrawal on 02/02/17.
//  Copyright © 2017 akhilagrawal. All rights reserved.
//

import UIKit

class FullPhotoViewController: UIViewController, UIScrollViewDelegate {
    @IBOutlet weak var closeButton: UIButton!
    @IBOutlet weak var photoImageView: UIImageView!
    var photoImage: UIImage!

    override func viewDidLoad() {
        super.viewDidLoad()
        photoImageView.image = photoImage
    }

    @IBAction func onClick(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return photoImageView
    }
    
}
