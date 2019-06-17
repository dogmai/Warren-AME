//
//  events.swift
//  WarrenAME
//
//  Created by Dogmai on 6/16/19.
//  Copyright © 2019 2ndLawApps. All rights reserved.
//

import UIKit

class events: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    let dateNumber = ["June 18", "June 19", "June 22", "June 29", "June 30"]
    
    let eventInfo = ["FREE Mud Hens Tickets 7 PM \nPass is good for two. Contact Darlene Sawyer 419-382-0624 ext 1162", "FREE Mud Hens Tickets 12 PM\nPass is good for two. Contact Darlene Sawyer 419-382-0624 ext 1162", "Make a Joyful Noise 2019 WMS \nGreater Allen, Dayton - YPD Rehearsel 10 PM  District Choir Rehearsal 2 PM", "Third Quaterly Official Board Meeting Saturday 10 AM", "FREE Mud Hens Tickets 4 PM \nPass is good for two. Contact Darlene Sawyer 419-382-0624 ext 1162"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dateNumber.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) ->
        UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as!
            CollectionViewCell
            
            cell.dateMonth.text = dateNumber[indexPath.row]
            cell.eventDetail.text = eventInfo[indexPath.row]
            
            //This creates the shadows and modifies the cards a little bit
            cell.contentView.layer.cornerRadius = 4.0
            cell.contentView.layer.borderWidth = 1.0
            cell.contentView.layer.borderColor = UIColor.clear.cgColor
            cell.contentView.layer.masksToBounds = false
            cell.layer.shadowColor = UIColor.gray.cgColor
            cell.layer.shadowOffset = CGSize(width: 0, height: 1.0)
            cell.layer.shadowRadius = 4.0
            cell.layer.shadowOpacity = 1.0
            cell.layer.masksToBounds = false
            cell.layer.shadowPath = UIBezierPath(roundedRect: cell.bounds, cornerRadius: cell.contentView.layer.cornerRadius).cgPath
            
            return cell
    }
    
    
}

