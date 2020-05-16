//
//  SaveDrDetailsVC.swift
//  MomCare
//
//  Created by Ebrahim  Mo Gedamy on 3/30/20.
//  Copyright © 2020 Ebrahim  Mo Gedamy. All rights reserved.
//

import UIKit

class SaveDrDetailsVC: UIViewController {

    @IBOutlet weak var backBu: UIButton!
    @IBOutlet weak var saveBu: UIButton!
    @IBOutlet weak var phoneLblTapped: LocalizableLabel!
    @IBOutlet weak var whatsAppLbl: LocalizableLabel!
    @IBOutlet weak var facebookLabel: LocalizableLabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.backBu.set(image: UIImage(named: "arrow_point"), title: "Back", titlePosition: .right, additionalSpacing: 10, state: .normal, color: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
        self.saveBu.layer.cornerRadius = 20.0
        
        let facebookTap = UITapGestureRecognizer(target: self, action: #selector(facebookDidTapped(sender:)))
        facebookLabel.isUserInteractionEnabled = true
        facebookLabel.addGestureRecognizer(facebookTap)
        let whatsappTap = UITapGestureRecognizer(target: self, action: #selector(openWhatsapp(sender:)))
        whatsAppLbl.isUserInteractionEnabled = true
        whatsAppLbl.addGestureRecognizer(whatsappTap)
        
        let callTap = UITapGestureRecognizer(target: self, action: #selector(makeCall(sender:)))
        phoneLblTapped.isUserInteractionEnabled = true
        phoneLblTapped.addGestureRecognizer(callTap)
    }
    
    @IBAction func backBuTapped(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func saveBuTapped(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
