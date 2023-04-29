//
//  ViewController.swift
//  BitcodeApplication
//
//  Created by Mac on 28/04/23.
//

import UIKit

class DetailShowTocollectionView: UIViewController {
    @IBOutlet weak var wecomeLabel: UILabel!
    
    @IBOutlet weak var collectionViewShowAllDetails: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionViewShowAllDetails.delegate = self
        collectionViewShowAllDetails.dataSource = self
    }


}

extension DetailShowTocollectionView: UICollectionViewDelegate,UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        55
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let collectionVCCell = collectionViewShowAllDetails.dequeueReusableCell(withReuseIdentifier: "CollectionViewCellReuse", for: indexPath) as! CollectionViewCellReuse
        collectionVCCell.ageLabel.text = "23"
        collectionVCCell.firstNameLabel.text = "Rutik"
        collectionVCCell.lastNameLabel.text = "Salunke"
        collectionVCCell.imgViewLabel.image = UIImage(named: "google")
        return collectionVCCell
    }
    
    
}
