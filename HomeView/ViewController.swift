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
    
    var hiddenSwitch = 1
    
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
        let dotw = DateFormatter()
        let date = DateFormatter()
        
        time.timeStyle = .short
        date.dateStyle = .medium
        
        timeLabel.text = time.string(from: Date())
        dateLabel.text = date.string(from: Date())
        dotwLabel.text = dotw.weekdaySymbols[Calendar.current.component(.weekday, from: Date()) - 1]
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        timeLabel.isHidden = true
        dotwLabel.isHidden = true
        dateLabel.isHidden = true
    }
    
    @IBAction func unwindToMainVC(segue: UIStoryboardSegue){
        timeLabel.isHidden = false
        dotwLabel.isHidden = false
        dateLabel.isHidden = false
    }
}

