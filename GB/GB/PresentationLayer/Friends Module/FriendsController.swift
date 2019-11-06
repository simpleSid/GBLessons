//
//  FriendsController.swift
//  GB
//
//  Created by Денис Сидоренко on 04/11/2019.
//  Copyright © 2019 Сидоренко Денис Викторович. All rights reserved.
//

import UIKit

class FriendsController: UIViewController {

    let friends = ["Dan", "Bob", "Sasha", "Alex", "Sam", "Bess"]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self
    }

}

extension FriendsController: UITableViewDelegate {
    
}

extension FriendsController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: FriendsCell.self)) as? FriendsCell else { return UITableViewCell() }
        
        cell.friendNameLable.text = friends[indexPath.row]
        cell.imageView?.image = UIImage(named: "boy")
        
        return cell
    }
    
    
}
