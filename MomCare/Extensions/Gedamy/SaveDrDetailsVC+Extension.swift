//
//  SaveDrDetailsVC+Extension.swift
//  MomCare
//
//  Created by Ebrahim  Mo Gedamy on 5/16/20.
//  Copyright © 2020 Eissa. All rights reserved.
//

import UIKit

extension SaveDrDetailsVC {
    @objc func facebookDidTapped(sender: UITapGestureRecognizer) {
         // self.setUrl(url: "https://www.apple.com")
          guard let url = URL(string: "https://www.apple.com") else {
              return
          }
          if UIApplication.shared.canOpenURL(url) {
              UIApplication.shared.open(url, options: [:], completionHandler: nil)
          }
          
      }
      
      @objc func openWhatsapp(sender: UITapGestureRecognizer){
          let urlWhats = "whatsapp://send?phone=(+201021577475)"
          if let urlString = urlWhats.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed){
              if let whatsappURL = URL(string: urlString) {
                  if UIApplication.shared.canOpenURL(whatsappURL){
                      if #available(iOS 10.0, *) {
                          UIApplication.shared.open(whatsappURL, options: [:], completionHandler: nil)
                      } else {
                          UIApplication.shared.openURL(whatsappURL)
                      }
                  }
                  else {
                      self.showAlert(title: "Message", message: "Whatsapp not found", okAction: "download") { (action) in
                          guard let url = URL(string: "https://apps.apple.com/us/app/whatsapp-messenger/id310633997") else {
                              return
                          }
                          if UIApplication.shared.canOpenURL(url) {
                              UIApplication.shared.open(url, options: [:], completionHandler: nil)
                          }
                      }
                  }
              }
          }
      }
      
      @objc func makeCall(sender: UITapGestureRecognizer){
          guard let phoneTxt = self.phoneLblTapped.text else { return}
          if let phoneCallURL:URL = URL(string: "tel:\(phoneTxt)") {
                  let application:UIApplication = UIApplication.shared
                  if (application.canOpenURL(phoneCallURL)) {
                      let alertController = UIAlertController(title: "MyApp", message: "Are you sure you want to call \n\(phoneTxt)?", preferredStyle: .alert)
                      let yesPressed = UIAlertAction(title: "Yes", style: .default, handler: { (action) in
                          application.open(phoneCallURL)
                      })
                      let noPressed = UIAlertAction(title: "No", style: .default, handler: { (action) in
                          print("nooo")
                      })
                      alertController.addAction(yesPressed)
                      alertController.addAction(noPressed)
                      present(alertController, animated: true, completion: nil)
                  }
              }
      }
}
