//
//  HeadsOrTailsViewController.swift
//  ATMConsultoria
//
//  Created by BootCamp on 02/12/21.
//

import UIKit

class HeadsOrTailsViewController: UIViewController {
    // MARK: Properties
    var coordinator: JamiltonCoordinator?
    
    // MARK: Outlets
    @IBOutlet weak var buttonPlay: UIButton!

    // MARK: Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    // MARK: Actions
    @IBAction func handlerButtonPlay(_ sender: Any) {
        self.coordinator?.goToResultHeadsOrTailsViewController()
    }
    
    // MARK: Methods
    private func setupUI() {
        navigationController?.navigationBar.backgroundColor = .green
        buttonPlay.layer.cornerRadius = 20
    }
}
