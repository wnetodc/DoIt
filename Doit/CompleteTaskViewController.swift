//
//  CompleteTaskViewController.swift
//  Doit
//
//  Created by wellington neto on 03/04/17.
//  Copyright © 2017 wneto. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {
    
    @IBOutlet var labelTaskSelected: UILabel!
    var task = Task()
    var previousVC = TasksViewController()
    
    @IBAction func completeTask(_ sender: Any) {
        // receice the task and then delete it
        previousVC.tasks.remove(at: previousVC.selectedIndex)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        if task.important {
            labelTaskSelected.text = "❗️ \(task.name)"
        }else{
            labelTaskSelected.text = task.name
        }
        
    }
    
}
