//
//  myTableViewCell.swift
//  tableViewWithDataParsing
//
//  Created by minal borole on 26/06/21.
//

import UIKit

class myTableViewCell: UITableViewCell {

    @IBOutlet weak var firstLable: UILabel!
    
    @IBOutlet weak var secondLable: UILabel!
    
    @IBOutlet weak var myImg: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
