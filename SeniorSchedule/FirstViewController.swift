//
//  ViewController.swift
//  SeniorSchedule
//
//  Created by Sunny on 2016/8/21.
//  Copyright © 2016年 Sunny. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var fingerImage: UIImageView!
    @IBOutlet weak var calenderImage: UIImageView!
    @IBOutlet weak var moodImage: UIImageView!
    @IBOutlet weak var dogpawImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.fingerImage.image = UIImage(named: "finger")
        self.calenderImage.image = UIImage(named: "calender")
        self.moodImage.image = UIImage(named: "mood")
        self.dogpawImage.image = UIImage(named: "dogpaw")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

