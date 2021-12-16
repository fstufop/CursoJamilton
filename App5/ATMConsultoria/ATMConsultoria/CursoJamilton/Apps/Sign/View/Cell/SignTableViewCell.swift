//
//  SignTableViewCell.swift
//  ATMConsultoria
//
//  Created by BootCamp on 06/12/21.
//

import UIKit

class SignTableViewCell: UITableViewCell {
    //MARK: Properties
    static let reuseIdentifier = "SignTableViewCell"
    
    //MARK: Outlets
    @IBOutlet weak var labelSign: UILabel!
    @IBOutlet weak var ImageSign: UIImageView!

    //MARK: Overrides
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    //MARK: Methods
    func setupCell(_ model: SignModel) { ///Quando o setupCell for chamado, deve ser passado um modelo do tipo SignModel
        labelSign.text = model.signName ///Atribui a string obtida do signName ao labelSing da tableViewCell
        ImageSign.image = UIImage(named: model.imageName ?? "") ///Atribui a string obtida do imageName ao named da UIimage do atributo ImageSign tableViewCell
    }
}
