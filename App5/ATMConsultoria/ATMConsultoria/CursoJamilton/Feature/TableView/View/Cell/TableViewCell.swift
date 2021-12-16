//
//  TableViewCell.swift
//  ATMConsultoria
//
//  Created by BootCamp on 03/12/21.
//

import UIKit

class TableViewCell: UITableViewCell {
    // Outlets
    @IBOutlet weak var labelSign: UILabel!
    @IBOutlet weak var ImageSign: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
