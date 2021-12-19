//
//  ToDoTableViewCell.swift
//  ATMConsultoria
//
//  Created by Filipe Teodoro on 16/12/21.
//

import UIKit

class ToDoTableViewCell: UITableViewCell {
    //MARK: Properties
    static let reuseCellName = "ToDoTableViewCell"
    
    //MARK: Outlets
    @IBOutlet weak var lableNote: UILabel!
    
    //MARK: Overrides
    override func awakeFromNib() {
        super.awakeFromNib()
    }
   
    //MARK: Methods
    func setupCell(_ title: String) {
        lableNote.text = title
    }
    
}
