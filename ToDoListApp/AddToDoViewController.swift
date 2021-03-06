//
//  AddToDoViewController.swift
//  ToDoListApp
//
//  Created by Sarah Maldonado on 6/22/20.
//  Copyright © 2020 Sarah Maldonado. All rights reserved.
//

import UIKit

class AddToDoViewController: UIViewController {

    var previousVC = ToDoTableViewController()
    
    @IBOutlet weak var importantSwitch: UISwitch!
       
       @IBOutlet weak var titleTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func addTapped(_ sender: Any) {
        
         if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
        //let toDo = ToDo()
 let toDo = ToDoCD(entity: ToDoCD.entity(), insertInto: context)
            
         if let titleText = titleTextField.text {
            
           toDo.name = titleText
        toDo.important = importantSwitch.isOn
          }
            
            try? context.save()
     //   previousVC.toDos.append(toDo)
       // previousVC.tableView.reloadData()
    navigationController?.popViewController(animated: true) }
    }
/*
        

if let titleText = titleTextField.text {
           toDo.name = titleText
           toDo.important = importantSwitch.isOn
         }
              try? context.save()

                navigationController?.popViewController(animated: true)
              }

            }
        previousVC.toDos.append(toDo)
         previousVC.tableView.reloadData()
        navigationController?.popViewController(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
*/
}
