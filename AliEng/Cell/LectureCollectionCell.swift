//
//  LectureCollectionCell.swift
//  AliEng
//
//  Created by Umid on 26/05/21.
//

import UIKit

class LectureCollectionCell: UICollectionViewCell {
    
    
    @IBOutlet weak var contView: UIView!
    
    @IBOutlet weak var numberLabel: UILabel!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        contView.backgroundColor = .random()
        numberLabel.layer.borderWidth = 2.0
        numberLabel.layer.borderColor = UIColor.white.cgColor
        numberLabel.layer.cornerRadius = numberLabel.frame.height/2
    }

}
