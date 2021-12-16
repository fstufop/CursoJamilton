//
//  DetailsMoviesViewController.swift
//  ATMConsultoria
//
//  Created by BootCamp on 07/12/21.
//

import UIKit

class DetailsMoviesViewController: UIViewController {
    // MARK: Properties
    var coordinator: JamiltonCoordinator?
    private var imageName: String
    private var moviesName: String
    private var moviesDescription: String
    
    // MARK: Outlets
    @IBOutlet weak var imageMovie: UIImageView!
    @IBOutlet weak var labelMovieName: UILabel!
    @IBOutlet weak var labelMovieDescription: UILabel!
    
    // MARK: Initialization
    init(imageName: String, moviesName: String, moviesDescription: String) {
        self.imageName = imageName
        self.moviesName = moviesName
        self.moviesDescription = moviesDescription
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    // MARK: Methods
    private func setupUI() {
        imageMovie.image = UIImage(named: imageName)
        labelMovieName.text = moviesName
        labelMovieDescription.text = moviesDescription
    }
}
