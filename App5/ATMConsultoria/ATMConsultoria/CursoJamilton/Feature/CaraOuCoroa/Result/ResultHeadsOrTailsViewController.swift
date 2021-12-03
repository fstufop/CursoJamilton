//
//  ResultHeadsOrTailsViewController.swift
//  ATMConsultoria
//
//  Created by BootCamp on 02/12/21.
//

import UIKit

class ResultHeadsOrTailsViewController: UIViewController {

    // MARK: Properties
    var coordinator: JamiltonCoordinator?
    
    // MARK: Outlets
    @IBOutlet weak var imageViewCoin: UIImageView!
    
    // MARK: Initialization
    init() {
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
        imageViewCoin.image = UIImage(named: shuffle())
    }
    
    private func shuffle() -> String {
        let images = ["moeda_cara", "moeda_coroa"]
        let shuffleImage = arc4random_uniform(2)
        let coinImage = images[Int(shuffleImage)]
        return coinImage
    }
}
