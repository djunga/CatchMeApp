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
    //var bt = CatchButton()
    @IBAction func touchDownButton(_ sender: UIButton) {
        sender.center = .init(x: 30, y: 40)
//        mainButton!.xPos = Int.random(in: 1..<100)
//        mainButton!.yPos = Int.random(in: 1..<100)
    }
    
//    override func touchDown(touches: NSSet!, withEvent event: UIEvent!) {
//        var touch : UITouch! = touches.anyObject() as UITouch
//
//    location = touch.locationInView(self.view)
//
//    Person.center = location
//}
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

