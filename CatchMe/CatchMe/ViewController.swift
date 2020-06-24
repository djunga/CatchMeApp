//
//  ViewController.swift
//  CatchMe
//
/*
 NAME: Tora Mullings
 SB ID: 111407756
 
 Some of this code was taken from the textbook.
 */

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBOutlet weak var playAgainButton: UIButton!
    
    @IBOutlet weak var cageButton: UIButton!
    
    @IBOutlet weak var buttoncoordinatesLabel: UILabel!
    
    
    @IBOutlet weak var mainButton: UIButton!
    var hamX:Int = 0
    var hamY:Int = 0
    var cageX:Int = 0
    var cageY:Int = 0
    var score:Int = 0
    
    @IBAction func playAgainTrigger(_ sender: UIButton) {
        playAgainButton.isHidden = true
        hamX = Int.random(in: 80..<250)
        hamY = Int.random(in: 80..<500)
        cageX = hamX + Int.random(in: 60..<90) //hamX + 90
        cageY = hamY + Int.random(in: 90..<150) //hamY + 80
        mainButton.center = .init(x: hamX, y: hamY)
        cageButton.center = .init(x: cageX, y: cageY)
        buttoncoordinatesLabel.isHidden = true
        mainButton.isEnabled = true
        score = 0
        scoreLabel.text = "Score: 0"
    }
    
    @IBAction func touchDownButton(_ sender: UIButton) {
        hamX = Int.random(in: 30..<350)
        hamY = Int.random(in: 30..<630)
        sender.center = .init(x: hamX, y: hamY)
        //buttoncoordinatesLabel.text = "X: \(hamX), Y: \(hamY)"
        let hamWidth:Int = Int(mainButton.frame.size.width)
        let hamHeight:Int = Int(mainButton.frame.size.height)
        let cageWidth:Int = Int(cageButton.frame.size.width)
        let cageHeight:Int = Int(cageButton.frame.size.height)

        let hamTLx = Int(hamX - hamWidth/2)
        let hamTLy = Int(hamY - hamHeight/2)
        let hamTL = CGPoint(x:hamTLx, y:hamTLy)
        
        let hamBRx = Int(hamX + hamWidth/2)
        let hamBRy = Int(hamY + hamHeight/2)
        let hamBR = CGPoint(x:hamBRx, y:hamBRy)
        
        let cageTLx = Int(cageX - cageWidth/2)
        let cageTLy = Int(cageY - cageHeight/2)
        let cageTL = CGPoint(x:cageTLx, y:cageTLy)
        
        let cageBRx = Int(cageX + cageWidth/2)
        let cageBRy = Int(cageY + cageHeight/2)
        let cageBR = CGPoint(x:cageBRx, y:cageBRy)
        
        score = score + 1
        scoreLabel.text = "Score: \(String(score))"

        if((hamTL.x >= cageTL.x && hamTL.x <= cageBR.x) && (hamTL.y <= cageBR.y && hamTL.y >= cageTL.y)) {
            buttoncoordinatesLabel.isHidden = false
            buttoncoordinatesLabel.text = "You caught him!"
            playAgainButton.isHidden = false
            mainButton.isEnabled = false

        }
        
    }

    override func viewDidLoad() {
        hamX = Int.random(in: 80..<250)
        hamY = Int.random(in: 80..<500)
        cageX = hamX + Int.random(in: 60..<90) //hamX + 90
        cageY = hamY + Int.random(in: 90..<150) //hamY + 80
        mainButton.center = .init(x: hamX, y: hamY)
        cageButton.center = .init(x: cageX, y: cageY)
        //buttoncoordinatesLabel.text = "X: \(hamX), Y: \(hamY)"
        buttoncoordinatesLabel.isHidden = true
        playAgainButton.isHidden = true
        mainButton.isEnabled = true
        score = 0
        scoreLabel.text = "Score: 0"
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

