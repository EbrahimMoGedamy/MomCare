//
//  BabyNutritionVC.swift
//  MomCare
//
//  Created by Eissa on 5/4/20.
//  Copyright © 2020 Eissa. All rights reserved.
//

import UIKit

extension BabyNutritionVC : UICollectionViewDataSource {
    
    func setupCollectionView(){
        self.babyNutrionCollView.dataSource = self
        self.babyNutrionCollView.delegate = self
        babyNutrionCollView.registerCell(cell: PregnancySupplementCVCell.self)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.guideArr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PregnancySupplementCVCell", for: indexPath) as! PregnancySupplementCVCell
        cell.shadowDecorate(color : #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
        cell.contentView.backgroundColor = UIColor.random()
        cell.nutritionTitle.text = self.guideArr[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let bounds = collectionView.bounds
        
        return CGSize(width: bounds.width/3.5, height: 150)
    }
    
}

extension BabyNutritionVC : UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10, left: 10, bottom: 1.0, right: 10)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        //Horizental Spacing
        return 10
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        //Vertical Spacing
        return 10
    }
}

extension BabyNutritionVC : UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //["Nutrition Needed","Food Recipes","Extra Weight"]
            let vc = ChildNutritionGuideVC(nibName: "ChildNutritionGuideVC", bundle: nil)
            vc.nutritionLbl = "Child Nutrition Guide"
            self.navigationController?.pushViewController(vc, animated: true)
    }
}

