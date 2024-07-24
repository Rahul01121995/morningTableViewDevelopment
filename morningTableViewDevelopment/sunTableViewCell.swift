//
//  sunTableViewCell.swift
//  morningTableViewDevelopment
//
//  Created by Rahul Heerekar on 02/06/24.
//

import UIKit

class sunTableViewCell: UITableViewCell {
    
    @IBOutlet weak var sunLabel: UILabel!
    
    @IBOutlet weak var sunsetImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
