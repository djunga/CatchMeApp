//
//  ViewController.swift
//  CatchMe
//
//  Created by user176496 on 6/15/20.
//  Copyright © 2020 user176496. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var mainButton: UIButton!
    var newX:Int = 0
    var newY:Int = 0
    @IBAction func touchDownButton(_ sender: UIButton) {
        newX = Int.random(in: 30..<350)
        newY = Int.random(in: 30..<630)
        sender.center = .init(x: newX, y: newY)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

