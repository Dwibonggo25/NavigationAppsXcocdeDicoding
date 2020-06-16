//
//  DetailViewController.swift
//  NavigationBarDicoding
//
//  Created by Dwi Bonggo Pribadi on 6/16/20.
//  Copyright © 2020 Dwi Bonggo Pribadi. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var titleDetail: UILabel!
    @IBOutlet weak var imageDetail: UIImageView!
    @IBOutlet weak var descDetail: UILabel!
    
    var detail : (title: String?, desc: String?, image: UIImage?) 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleDetail.text = detail.title
        imageDetail.image = detail.image
        descDetail.text = detail.desc
    }
    

}
