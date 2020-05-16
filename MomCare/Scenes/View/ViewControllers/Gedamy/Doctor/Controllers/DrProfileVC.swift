//
//  DrProfileVC.swift
//  MomCare
//
//  Created by Ebrahim  Mo Gedamy on 3/28/20.
//  Copyright © 2020 Ebrahim  Mo Gedamy. All rights reserved.
//

import UIKit

class DrProfileVC: UIViewController {
    
    @IBOutlet weak var bootomContentView: UIView!
    @IBOutlet weak var profileImg: UIImageView!
    @IBOutlet weak var myDeatailsBu: LocalizableButton!
    @IBOutlet weak var moreBu: LocalizableButton!
    @IBOutlet weak var changeProfileImg: LocalizableButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        self.navigationController?.isNavigationBarHidden = true
        self.profileImg.layer.cornerRadius = 25.0
        self.myDeatailsBu.set(image: UIImage(named: "book (2)"), title: "My Details", titlePosition: .bottom, additionalSpacing: -8.0, state: .normal, color: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
        self.moreBu.set(image: UIImage(named: "book (2)"), title: "More", titlePosition: .bottom, additionalSpacing: -8.0, state: .normal, color: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
        self.bootomContentView.addShadow(location: .top, color: #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1), opacity: 0.2, radius: 5.0)
        
    }
    
    @IBAction func moreBuTapped(_ sender: LocalizableButton) {
        let vc = MoreDrVC(nibName: "MoreDrVC", bundle: nil)
        let nav = UINavigationController(rootViewController: vc)
        self.view.window?.rootViewController = nav
    }
    
    @IBAction func editDateBuTapped(_ sender: LocalizableButton) {
        self.handlePresentSegue(viewController: SaveDrDetailsVC.self)
    }
    
    @IBAction func changeProfileImgBuTapped(_ sender: LocalizableButton) {
        self.handleChangePhoto()
    }
    
    
}

