//
//  PregnantNutrition+Extensions.swift
//  MomCare
//
//  Created by Ebrahim  Mo Gedamy on 4/4/20.
//  Copyright © 2020 Eissa. All rights reserved.
//

import UIKit

extension PregenantNutritionVC : UICollectionViewDataSource {
    
    func setupCollectionView(){
        self.pregnantNutritionCollView.dataSource = self
        self.pregnantNutritionCollView.delegate = self
        pregnantNutritionCollView.registerCell(cell: NutritionNeededCVCell.self)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.pregnantNutritionNames.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "NutritionNeededCVCell", for: indexPath) as! NutritionNeededCVCell
        cell.shadowDecorate(color : #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
        cell.contentView.backgroundColor = UIColor.random()
        cell.nutritionInage.image = UIImage(named:self.pregnantNutritionImages[indexPath.row])
        cell.nutritionTitle.text = self.pregnantNutritionNames[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let bounds = collectionView.bounds
        
        return CGSize(width: bounds.width/3.5, height: 120)
    }
    
}

extension PregenantNutritionVC : UICollectionViewDelegateFlowLayout{
    
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

extension PregenantNutritionVC : UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        //["Nutrition Needed","Food Recipes","Extra Weight"]
        if indexPath.item == 0 {
            let vc = NutritionNeededVC(nibName: "NutritionNeededVC", bundle: nil)
            vc.nutritionLbl = "Nutrition Needed"
            self.navigationController?.pushViewController(vc, animated: true)
        }else if indexPath.item == 1{
            let vc = FoodRecipesVC(nibName: "FoodRecipesVC", bundle: nil)
            vc.titleName = "Food Recipes"
            self.navigationController?.pushViewController(vc, animated: true)
        }else{
            let vc = ExtraWeightVC(nibName: "ExtraWeightVC", bundle: nil)
            vc.titleName = "Extra Weight"
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
}

