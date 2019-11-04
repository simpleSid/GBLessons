//
//  OtherGroupsControllerr.swift
//  GB
//
//  Created by Денис Сидоренко on 04/11/2019.
//  Copyright © 2019 Сидоренко Денис Викторович. All rights reserved.
//

import UIKit

class OtherGroupsControllerr: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var groups = ["family", "friends", "Rick and Morty", "sex and love", "table", "spoon"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
    }
    

}

extension OtherGroupsControllerr: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groups.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "GroupCell", for: indexPath) as? OtherGroupsCelll else { return UITableViewCell() }

        cell.groupNameLabel.text = groups[indexPath.row]
        cell.groupImageView.image = UIImage(named: "group")
        
        return cell
    }
    

}

extension OtherGroupsControllerr: UITableViewDelegate {
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            groups.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }
    
}
