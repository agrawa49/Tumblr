//
//  PhotoDetailsViewController.swift
//  tumblr
//
//  Created by Akhil Agrawal on 02/02/17.
//  Copyright © 2017 akhilagrawal. All rights reserved.
//

import UIKit

class PhotoDetailsViewController: UIViewController {
    var photoUrl : String!
    @IBOutlet weak var photoImageView: UIImageView!
    var photoImage: UIImage!

    override func viewDidLoad() {
        super.viewDidLoad()
        photoImageView.image = photoImage
    }

    @IBAction func onPhotoTap(_ sender: Any) {
        performSegue(withIdentifier: "segue.fullphoto", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationViewController = segue.destination as! FullPhotoViewController
        destinationViewController.photoImage = photoImage
    }
    
}
