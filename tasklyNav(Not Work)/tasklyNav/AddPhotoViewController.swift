//
//  AddPhotoViewController.swift
//  tasklyNav
//
//  Created by Scholar on 8/18/22.
//

import UIKit

class AddPhotoViewController: UIViewController {
    var previousToDoTVC = ToDoTableViewController()
    @IBAction func addButtonTapped(_ sender: UIButton) {
        let newToDo = ToDoClass()
        
        if let checkForInput = descriptionInput.text {
            newToDo.description = checkForInput
        }
        
        previousToDoTVC.listOfToDo.append(newToDo)
        previousToDoTVC.tableView.reloadData()
        navigationController?.popViewController(animated: true)
    }
    
    @IBOutlet weak var descriptionInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
