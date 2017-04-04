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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func addTapped(_ sender: Any) {
        // create new task
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        let task = Task(context: context)
        task.name = textFieldNameTask.text!
        task.important = switchImportTask.isOn
        
        //save data
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        // pop back
        navigationController!.popViewController(animated: true)
        
    }

}
