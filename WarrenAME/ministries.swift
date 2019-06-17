//
//  ministries.swift
//  WarrenAME
//
//  Created by Dogmai on 6/16/19.
//  Copyright © 2019 2ndLawApps. All rights reserved.
//

import UIKit

class ministries: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    let minName = ["Commission on Christian Education", "Commission on Membership and Evangelism", "Youth Ministries", "Training and Teaching", "Acolytes", "Children and Youth Choir", "Liturgical Dance Ministry", "Ministry of Visitation", "Scholarship Commission", "Athletic Department", "Health and Wellness Ministry", "Couples Ministry", "Sisters of the Cloths (SOCS)", "Son's of Allen Men's Ministry", "Bus Ministry", "Aerobics Ministry (Outreach Ministry)", "Feed My Sheep (Outreach Ministry)", "Law Tuesday", "Learning Club (Outreach Ministry)", "Prison and Homeless Ministry (Outreach Ministry)"]
    
    let minInfo = ["Provides educational opportunities for the young and old alike. The Commission offers Weekly Bible Study sessions, regular Sunday School, The Ark (for children ages 2.5-10 years), and Vacation Bible School, a week-long program filled with fun activities.", "Seeks to maintain an active role in the care of membership, as well as to develop an active evangelist effort outside of the church body.", "Shares the love of Christ through youth appropriate Bible study, fun and lots of fellow ship.", "TThis ministry helps new members to become knowledgeable of the history and foundations of the AME church.", "This program involves children from 2nd to 7th grades carrying in the flame that lights the altar candles.", "This delightful group of children and young folks share the gift of music during our monthly Youth Sunday.", "This ministry uses dance to offer praise.", "Ministers and Lay persons visit the sick and shut-in to keep them in touch with church life and provide them with an opportunity for caring and sharing.", "We offer support of higher education through this ministry. The yearly banquet supports this ongoing endeavor to recognize scholastic achievement in church members.", "Teams both co-ed, boys and girls division is very active and has won several championship.", "Manages the annual health fair and keeps us in tune to current health issues.", "This ministry helps married couples as they grow in faith together.", "This is a group of female ministers that supports women through sponsorship of several activities and Bible study geared to suit the needs of women.", "This organization holds monthly Saturday breakfast meetings, Bible study, and supports the church through volunteering and building maintenance.", "Our bus ministry assists with the transportation needs of our church family. Volunteers licensed drivers pick up and drop off church members. The bus ministry also supports our congregation by serving as transportation for our youth to their events and church activities.", "The Bible teaches that Christians should maintain their bodies and minds. This outreach program severs to help meet that goal. The “hour of power” is fun and invigorating.", "Scriptures teaches us to care for others. Through this ministry, we attempt to meet the hunger needs of our community.", "Volunteers from the community come together to assist the others with questions about their rights and the legal system.", "This club is for children in need of academic assistance. Through motivational tools, neighborhood children learn that they can be successful students.", "A team of volunteers visits incarcerated and homeless individuals to bring hope and prayer to them."]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return minName.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) ->
        UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as!
            CollectionViewMinistries
            
            cell.ministry.text = minName[indexPath.row]
            cell.minDetail.text = minInfo[indexPath.row]
            
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
