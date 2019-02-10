//
//  MenuViewController.swift
//  HomeView
//
//  Created by Patrick Solis on 1/30/19.
//  Copyright © 2019 SolistenUp Productions. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {

    
    @IBOutlet weak var weatherButton: UIButton!
    @IBOutlet weak var homeButton: UIButton!
    @IBOutlet weak var calendarButton: UIButton!
    @IBOutlet weak var musicButton: UIButton!
    @IBOutlet weak var timeButton: UIButton!
    
    var color: UIColor?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.timeButton.layer.cornerRadius = self.timeButton.frame.height / 2
        
        self.weatherButton.layer.cornerRadius = 20
        self.calendarButton.layer.cornerRadius = 20
        self.musicButton.layer.cornerRadius = 20
        self.homeButton.layer.cornerRadius = 20
    
        // Do any additional setup after loading the view.
    }
    
    @IBAction func GoBack(_ sender: UIButton) {
        performSegue(withIdentifier: "unwindToSegueMainVC", sender: self)
    }

    @IBAction func blankPress(_ sender: UITapGestureRecognizer) {
        if sender.state == .ended{
            performSegue(withIdentifier: "unwindToSegueMainVC", sender: self)
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
