//
//  ChallengesViewController.swift
//  NavigationBarDicoding
//
//  Created by Dwi Bonggo Pribadi on 6/16/20.
//  Copyright © 2020 Dwi Bonggo Pribadi. All rights reserved.
//

import UIKit

class ChallengesViewController: UIViewController {

    @IBOutlet weak var arChallanges: UIStackView!
    
    var challenges = [ ("Create Your AR Experience", "Lorem ipsum dolor sit amet", UIImage(named: "ar")),
    ("Digital Guest Book", "Lorem ipsum dolor sit amet", UIImage(named: "digital")),
    ("Expert Developer on Education Impact Applications", "Lorem ipsum dolor sit amet", UIImage(named: "expert")),
    ("Create Beautiful Apps Using  Flutter", "Lorem ipsum dolor sit amet", UIImage(named: "flutter")),
    ("Dicoding Web Master", "Lorem ipsum dolor sit amet", UIImage(named: "web")),
    ("Lorem ipsum dolor sit amet", "Lorem ipsum dolor sit amet", UIImage(named: "ar"))]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    
        addTapped(parameter: &arChallanges)
    }
    
    func addTapped(parameter : inout UIStackView) {
        
        parameter.isUserInteractionEnabled = true
        parameter.addGestureRecognizer (UITapGestureRecognizer(target: self, action: #selector(self.objectTapped)))
    }
    
    @objc func objectTapped (gesture: UIGestureRecognizer) {
        // Digunakan untuk aksi setelah gestur tap dilakukan
               let controller = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "DetailViewControllerScene") as! DetailViewController
               
        switch gesture.view as? UIStackView {
        case arChallanges:
            controller.detail = challenges[0]
        default:
            controller.detail = challenges[5]
        }
        
        self.navigationController?.pushViewController(controller, animated: true)
    }
}
