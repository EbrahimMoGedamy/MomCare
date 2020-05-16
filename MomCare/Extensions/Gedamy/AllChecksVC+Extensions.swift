//
//  CheckVC.swift
//  MomCare
//
//  Created by Eissa on 5/4/20.
//  Copyright © 2020 Eissa. All rights reserved.
//

import UIKit

extension CheckVC : UITableViewDataSource{
        func setupTableView(tableView : UITableView){
        tableView.dataSource = self
        tableView.delegate = self
        tableView.registerCell(cell: CompletedTVCell.self)
        tableView.registerCell(cell: AllChecksTVCell.self)
        tableView.registerCell(cell: RemainedTVCell.self)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if self.selectedSementControl.selectedSegmentIndex == 0 {
            return 4
        }else if self.selectedSementControl.selectedSegmentIndex == 1 {
            return 5
        }else{
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if self.selectedSementControl.selectedSegmentIndex == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "AllChecksTVCell", for: indexPath) as! AllChecksTVCell
            cell.selectBu.setImage(UIImage(named: self.selectedUnselectedImg[indexPath.row]), for: .normal)
           
            return cell
        }else if self.selectedSementControl.selectedSegmentIndex == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "RemainedTVCell", for: indexPath) as! RemainedTVCell
            cell.selectBu.setImage(UIImage(named: "correct-4"), for: .normal)
            return cell
        }else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "CompletedTVCell", for: indexPath) as! CompletedTVCell
            cell.selectBu.setImage(UIImage(named: "correct-1"), for: .normal)
            return cell
        }
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
}

extension CheckVC : UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let vc = PregnancyTestVC(nibName: "PregnancyTestVC", bundle: nil)
//        self.navigationController?.pushViewController(vc, animated: true)
    }
}

extension CheckVC {
    
    func setupSegmentedControl() {
        self.views = [UIView]()
        self.views.append(AllChecksTVCell().contentView)
        self.views.append(RemainedTVCell().contentView)
        self.views.append(CompletedTVCell().contentView)
        
        for v in views{
            self.contentView.addSubview(v)
        }
        self.selectedSementControl.backgroundColor = UIColor.white
    }
}
