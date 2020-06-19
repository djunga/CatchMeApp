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
        let hamWidth:Int = Int(mainButton.frame.size.width)
        let hamHeight:Int = Int(mainButton.frame.size.height)
        let cageWidth:Int = Int(cageButton.frame.size.width)
        let cageHeight:Int = Int(cageButton.frame.size.height)

        //let mainRect = CGRect(x: hamX, y: hamY, width: hamWidth, height: hamHeight)
        //let cageRect = CGRect(x: cageX, y: cageY, width: cageWidth, height: cageHeight)
        var hamTLx = Int(hamX - hamWidth/2)
        var hamTLy = Int(hamY - hamHeight/2)
        var hamTL = CGPoint(x:hamTLx, y:hamTLy)
        
        var hamBRx = Int(hamX + hamWidth/2)
        var hamBRy = Int(hamY + hamHeight/2)
        var hamBR = CGPoint(x:hamBRx, y:hamBRy)
        
        var cageTLx = Int(cageX - cageWidth/2)
        var cageTLy = Int(cageY - cageHeight/2)
        var cageTL = CGPoint(x:cageTLx, y:cageTLy)
        
        var cageBRx = Int(cageX + cageWidth/2)
        var cageBRy = Int(cageY + cageHeight/2)
        var cageBR = CGPoint(x:cageBRx, y:cageBRy)

//        if(!(hamTL.x >= cageBR.x || cageTL.x >= hamBR.x)) {
//            buttoncoordinatesLabel.text = "You caught him!"
//        }
//        if(!(hamTL.y >= cageBR.y || cageTL.y >= hamBR.y)) {
//            buttoncoordinatesLabel.text = "You caught him!"
//        }
        if((hamTL.x >= cageTL.x && hamTL.x <= cageBR.x) && (hamTL.y <= cageBR.y && hamTL.y >= cageTL.y)) {
            buttoncoordinatesLabel.text = "You caught him!"
        }
        

//        if r1.x < l2.x no overlap
//        if l1.y > r2.y no overlap
//        if(mainRect.intersects(cageRect)) {
//            buttoncoordinatesLabel.text = "You caught him!"
//        }
    }

    override func viewDidLoad() {
        hamX = Int.random(in: 80..<250)
        hamY = Int.random(in: 80..<500)
        cageX = hamX + Int.random(in: 60..<90) //hamX + 90
        cageY = hamY + Int.random(in: 90..<150) //hamY + 80
        mainButton.center = .init(x: hamX, y: hamY)
        cageButton.center = .init(x: cageX, y: cageY)
        buttoncoordinatesLabel.text = "X: \(hamX), Y: \(hamY)"
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

