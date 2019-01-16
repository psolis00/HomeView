//
//  ViewController.swift
//  HomeView
//
//  Created by Patrick Solis on 1/16/19.
//  Copyright © 2019 SolistenUp Productions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var time = Timer()
    
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var dotwLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        time = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.currentDate), userInfo: nil, repeats: true)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override var prefersStatusBarHidden: Bool{
        return true
    }

    @objc func currentDate(){
        let time = DateFormatter()
        let dowt = DateFormatter()
        let date = DateFormatter()
        
        time.timeStyle = .short
        date.dateStyle = .medium
        
        timeLabel.text = time.string(from: Date())
        dateLabel.text = date.string(from: Date())
        dotwLabel.text = dowt.weekdaySymbols[Calendar.current.component(.weekday, from: Date()) - 1]
    }

}

