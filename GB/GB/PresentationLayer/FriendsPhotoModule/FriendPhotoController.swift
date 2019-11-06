//
//  FriendPhotoController.swift
//  VK
//
//  Created by Денис Сидоренко on 11/09/2019.
//  Copyright © 2019 Денис Сидоренко. All rights reserved.
//

import UIKit

class FriendPhotoController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 7
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FriendPhotoCell", for: indexPath) as? FriendPhotoCell else { return UICollectionViewCell() }
    
        cell.friendImageView.image = UIImage(named: "boy")
        
        return cell
    }
    
}
