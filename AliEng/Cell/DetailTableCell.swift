//
//  DetailTableCell.swift
//  AliEng
//
//  Created by Umid on 26/05/21.
//

import UIKit

class DetailTableCell: UITableViewCell {
    @IBOutlet weak var contView: UIView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var markIcon: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        selectionStyle = .none
        contView.backgroundColor = .random()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
