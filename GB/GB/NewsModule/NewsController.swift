//
//  NewsController.swift
//  GB
//
//  Created by Сидоренко Денис Викторович on 06/11/2019.
//  Copyright © 2019 Сидоренко Денис Викторович. All rights reserved.
//

import UIKit

class NewsController: UIViewController {

    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
    }

}

extension NewsController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: NewsCell.self)) as? NewsCell else { return NewsCell() }
        
        cell.titleLabel.text = "Title"
        
        return cell
    }

}

extension NewsController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 540
    }
}
