//
//  Exten.swift
//  AliEng
//
//  Created by Umid on 26/05/21.
//

import Foundation
import UIKit


var dialogCount = 0
var goodAnswers = 0
var badAnswers = 0


extension CGFloat {
    static func random() -> CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
}

extension UIColor {
    static func random() -> UIColor {
        return UIColor(
           red:   .random(),
           green: .random(),
           blue:  .random(),
           alpha: 1.0
        )
    }
}

class Data {
    var value:CGFloat
    var color:UIColor = UIColor.gray

    init(myValue:CGFloat, myColor:UIColor) {
        value = myValue
        color = myColor
    
    }
}
