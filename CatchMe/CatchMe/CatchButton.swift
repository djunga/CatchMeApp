//
//  CatchButton.swift
//  CatchMe
//
/*
 NAME: Tora Mullings
 SB ID: 111407756
 
 Some of this code was taken from the textbook.
 */

import Foundation
import UIKit

class CatchButton: UIButton {
    var xPos:Int
    var yPos:Int
    
    override init(frame: CGRect) {
        xPos = Int.random(in: 1..<100)//CGInt.random(in: 10...50)
        yPos = Int.random(in: 1..<100)
        super.init(frame: frame)
        self.layer.borderWidth = 2.0
        self.layer.cornerRadius = 8.0
        self.layer.borderColor = UIColor.black.cgColor

    }

    required init?(coder aDecoder: NSCoder) {
        xPos = Int.random(in: 1..<100)//CGInt.random(in: 10...50)
        yPos = Int.random(in: 1..<100)
        super.init(coder: aDecoder)
    }
    
    func changePos() {
        xPos = Int.random(in: 1..<100)
        yPos = Int.random(in: 1..<100)
    }
    
}
