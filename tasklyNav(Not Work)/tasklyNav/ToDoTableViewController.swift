//
//  ToDoTableViewController.swift
//  tasklyNav
//
//  Created by Scholar on 8/17/22.
//

import UIKit

class ToDoTableViewController: UITableViewController {
    
    var listOfToDo : [ToDoClass] = []
    
    func createToDo () -> [ToDoClass] {
        let swiftToDo = ToDoClass()
        swiftToDo.description = "Learn Swift"
        let dogToDo = ToDoClass()
        dogToDo.description = "Walk the Dog"
        
        return [swiftToDo,dogToDo]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        listOfToDo = createToDo()

        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // return 20
        return listOfToDo.count
    }
    

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier:"reuseIdentifier", for: indexPath)
        let eachToDo = listOfToDo[indexPath.row]
        

        cell.textLabel?.text = "  \(eachToDo.description)"

        return cell
    }
        




    /*
 
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */




    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let nextAddToDoVC = segue.destination as?
            AddPhotoViewController {
            nextAddToDoVC.previousToDoTVC = self
        }
    }
    
    
    @IBAction func checkChanged(_ sender: Checkbox) {
        print("Checkbox \(sender.checked ? "Checked" : "Unchecked")")
    }
    

}
