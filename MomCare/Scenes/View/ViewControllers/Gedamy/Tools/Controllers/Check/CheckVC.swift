//
//  CheckVC.swift
//  MomCare
//
//  Created by Eissa on 5/4/20.
//  Copyright © 2020 Eissa. All rights reserved.
//

import UIKit

class CheckVC: UIViewController {

        @IBOutlet weak var checkTableView: UITableView!
        @IBOutlet weak var contentView: UIView!
        @IBOutlet weak var selectedSementControl: UISegmentedControl!
        @IBOutlet weak var titleLbl: UILabel!
    
        override func viewDidLoad() {
            super.viewDidLoad()
            
            self.navigationController?.navigationBar.isHidden = true
            self.titleLbl.text = self.titleName
            self.setupTableView(tableView: self.checkTableView)
            self.setupSegmentedControl()
        }
        var allCkechsView : UIView!
        var reminderView : UIView!
        var completedView : UIView!
        var views : [UIView]!
        var selectedUnselectedImg = ["correct-1","correct-4","correct-1","correct-4"]
        var titleName = ""

        
        @IBAction func allChechBuTapped(_ sender: UISegmentedControl) {
            self.contentView.bringSubviewToFront(views[sender.selectedSegmentIndex])
            switch selectedSementControl.selectedSegmentIndex {
            case 0:
                checkTableView.reloadData()
                break
            case 1:
                checkTableView.reloadData()
                break
            case 2:
                checkTableView.reloadData()
                break
            default:
                break
            }
        }
        
        @IBAction func backBuTapped(_ sender: UIButton) {
            let vc = ToolsVC(nibName: "ToolsVC", bundle: nil)
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
