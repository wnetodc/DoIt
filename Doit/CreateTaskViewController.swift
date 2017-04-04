//
//  CreateTaskViewController.swift
//  Doit
//
//  Created by wellington neto on 30/03/17.
//  Copyright © 2017 wneto. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    @IBOutlet var textFieldNameTask: UITextField!
    @IBOutlet var switchImportTask: UISwitch!
    
    var previousVC = TasksViewController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func addTapped(_ sender: Any) {
        // create new task
        let task = Task()
        task.name = textFieldNameTask.text!
        task.important = switchImportTask.isOn
        
        // send the task to TasksViewController
        previousVC.tasks.append(task)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
        
    }

}
