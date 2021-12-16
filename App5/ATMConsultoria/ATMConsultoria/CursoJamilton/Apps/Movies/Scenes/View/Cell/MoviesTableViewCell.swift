//
//  MoviesTableViewCell.swift
//  ATMConsultoria
//
//  Created by BootCamp on 06/12/21.
//

import UIKit

class MoviesTableViewCell: UITableViewCell {
    //MARK: Properties
    static let reuseIdentifier = "MoviesTableViewCell"
    
    //MARK: Outlets
    @IBOutlet weak var imageMovie: UIImageView!
    @IBOutlet weak var labelMovieName: UILabel!
    @IBOutlet weak var labelMovieDescription: UILabel!
    
    //MARK: Overrides
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    //MARK: Methods
    func setupCell(_ model: MoviesModel) {
        imageMovie.layer.cornerRadius = 40
        labelMovieName.text = model.moviesName
        labelMovieDescription.text = model.moviesDescription
        imageMovie.image = UIImage(named: model.moviesImageName ?? "")
    }
}
