//
//  TableViewCellForReuse.swift
//  BitcodeApplication
//
//  Created by Mac on 28/04/23.
//

import UIKit

class TableViewCellForReuse: UITableViewCell {

    @IBOutlet weak var imgLabel: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var ageLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
