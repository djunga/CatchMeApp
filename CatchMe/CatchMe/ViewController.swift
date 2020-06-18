//
//  ViewController.swift
//  CatchMe
//
//  Created by user176496 on 6/15/20.
//  Copyright © 2020 user176496. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var cageButton: UIButton!
    
    @IBOutlet weak var buttoncoordinatesLabel: UILabel!
    
    
    @IBOutlet weak var mainButton: UIButton!
    var hamX:Int = 0
    var hamY:Int = 0
    var cageX:Int = 0
    var cageY:Int = 0
    @IBAction func touchDownButton(_ sender: UIButton) {
        hamX = Int.random(in: 30..<350)
        hamY = Int.random(in: 30..<630)
        sender.center = .init(x: hamX, y: hamY)
        buttoncoordinatesLabel.text = "X: \(hamX), Y: \(hamY)"
        //myButton.frame.size.height
        if(\\)
    }

    override func viewDidLoad() {
        hamX = Int.random(in: 80..<250)
        hamY = Int.random(in: 80..<500)
        cageX = hamX + 90
        cageY = hamY + 80
        mainButton.center = .init(x: hamX, y: hamY)
        cageButton.center = .init(x: cageX, y: cageY)
        buttoncoordinatesLabel.text = "X: \(hamX), Y: \(hamY)"
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

