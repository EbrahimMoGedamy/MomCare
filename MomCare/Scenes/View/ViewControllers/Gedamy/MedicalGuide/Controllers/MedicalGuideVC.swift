//
//  MedicalGuideVC.swift
//  MomCare
//
//  Created by Ebrahim  Mo Gedamy on 4/9/20.
//  Copyright © 2020 Ebrahim  Mo Gedamy. All rights reserved.
//

import UIKit

class MedicalGuideVC: UIViewController {
    
    @IBOutlet weak var medicalGuide: LocalizableLabel!
    @IBOutlet weak var mostreadingLbl: LocalizableLabel!
    @IBOutlet weak var allobjectsLbl: LocalizableLabel!
    @IBOutlet weak var contactwithDrLbl: LocalizableLabel!
    @IBOutlet weak var allObjctsCollectionView: UICollectionView!
    @IBOutlet weak var marksPregnancyLbl: LocalizableLabel!
    @IBOutlet weak var doctorsCollectionView: UICollectionView!
    @IBOutlet weak var searchTxtField: UITextField!{
        didSet {
            searchTxtField.tintColor = #colorLiteral(red: 0.2235294118, green: 0.7647058824, blue: 0.8, alpha: 1)
            searchTxtField.setIcon(#imageLiteral(resourceName: "search"))
            searchTxtField.layer.cornerRadius = 5.0
        }
    }
    @IBOutlet weak var myPageControl: UIPageControl!
    @IBOutlet weak var mostReadingCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.doctorsCollectionView.registerCell(cell: DoctorsCVCell.self)
        self.mostReadingCollectionView.registerCell(cell: MostReadingCVCell.self)
        self.setupCollectionView(collectionView: doctorsCollectionView)
        self.setupCollectionView(collectionView: mostReadingCollectionView)
        self.setupPaddingScrollview()
        self.setupCollectionView(collectionView: self.allObjctsCollectionView)
        self.allObjctsCollectionView.registerCell(cell: AllOfObjectsCVCell.self)
        self.navigationController?.isNavigationBarHidden = true
    }
    
    var imagesArr = ["2018_2_24_14_19_22_952-1",
    "Eating-for-a-healthy-pregnancy-resized",
    "Nutrition-Articles---Mother-to-be",
    "133-022508-postpartum-depression-common-new-parents_700x400",
    "4126066-2012852796",
    "Nutrition-Articles---Mother-to-be-1"]
    
    var titleArr = ["You and your baby",
    "Breastfeeding",
    "Childbirth",
    "Health of baby and mom",
    "Food and sport",
    "Parents"]

}
