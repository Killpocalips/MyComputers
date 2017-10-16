//
//  DetailViewController.swift
//  MyBand1
//
//  Created by cis290 on 10/2/17.
//  Copyright © 2017 Rock Valley College. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var productImageView: UIImageView!

    func configureView() {
        if detailItem != nil {
            if let photo = productImageView {
                photo.image = UIImage(named:detailItem!)
            }
        }else{
             productImageView.image = UIImage(named:"Main.png")
        }
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    var detailItem: String? {
        didSet {
            configureView()
        }
    }


}

