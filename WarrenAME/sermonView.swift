//
//  sermonView.swift
//  WarrenAME
//
//  Created by Dogmai on 6/18/19.
//  Copyright © 2019 2ndLawApps. All rights reserved.
//

import UIKit
import WebKit

class sermonView: UIViewController {
    
    
    @IBOutlet weak var youtubeView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "https://www.youtube.com/channel/UCT381qLQbvCXuxW6SFEsjdQ/videos?view_as=subscriber")
        
        youtubeView.load(URLRequest(url: url!))
    }
}
