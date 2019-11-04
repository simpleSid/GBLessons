//
//  UserGroupsController.swift
//  GB
//
//  Created by Денис Сидоренко on 04/11/2019.
//  Copyright © 2019 Сидоренко Денис Викторович. All rights reserved.
//

import UIKit

class UserGroupsController: UIViewController {

    var groups = [String]()
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self
    }
    
    @IBAction func addGroup(segue: UIStoryboardSegue) {
        if segue.identifier == "addGroup" {
            guard let otherGroupsController = segue.source as? OtherGroupsControllerr,
                let indexPath = otherGroupsController.tableView.indexPathForSelectedRow else { return }
            let group = otherGroupsController.groups[indexPath.row]
            
            if !groups.contains(group) {
                groups.append(group)
                tableView.reloadData()
            }
        }
    }
    
}

extension UserGroupsController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groups.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "GroupCell", for: indexPath) as? UserGroupsCell else { return UITableViewCell() }
        
        cell.groupNameLabel.text = groups[indexPath.row]
        cell.groupImageView.image = UIImage(named: "group")
        
        return cell
    }
    
    
}

extension UserGroupsController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            groups.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }
}
