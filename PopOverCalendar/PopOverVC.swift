//
//  PopOverVC.swift
//  PopOverCalendar
//
//  Created by Marcus Hidalgo on 7/11/18.
//  Copyright © 2018 Marcus Hidalgo. All rights reserved.
//

import UIKit

class PopOverVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var calendarView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        calendarView.dataSource = self

    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 30
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let dayCell = collectionView.dequeueReusableCell(withReuseIdentifier: "dayCell", for: indexPath) as! CollectionViewCell
        
        return dayCell
    }

}
