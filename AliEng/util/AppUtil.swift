//
//  AppUtil.swift
//  AliEng
//
//  Created by Ерасыл Турлыгажы on 28.05.2021.
//

import Foundation
import UIKit

public class AppUtil {
    
    static func getColor(elementPosition: Int) -> UIColor {
        var position = elementPosition
        while position > 11 {
            position = position - 11
        }
        switch position {
        case 0, 6: return UIColor(rgb: 0xd0d001)
        case 2, 8: return UIColor(rgb: 0x1976D2)
        case 3, 9: return UIColor(rgb: 0xFF8A65)
        case 4, 10: return UIColor(rgb: 0xEF5350)
        case 5, 11: return UIColor(rgb: 0x7B1FA2)
        default:
            return UIColor(rgb: 0x00BF9A)
        }
    }
}

extension UIColor {
   convenience init(red: Int, green: Int, blue: Int) {
       assert(red >= 0 && red <= 255, "Invalid red component")
       assert(green >= 0 && green <= 255, "Invalid green component")
       assert(blue >= 0 && blue <= 255, "Invalid blue component")

       self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
   }

   convenience init(rgb: Int) {
       self.init(
           red: (rgb >> 16) & 0xFF,
           green: (rgb >> 8) & 0xFF,
           blue: rgb & 0xFF
       )
   }
}
