//
//  SharingDataResultsViewController.swift
//  ATMConsultoria
//
//  Created by BootCamp on 29/11/21.
//

import UIKit

class SharingDataResultsViewController: UIViewController {
    // MARK:  Properties
    var coordinator: CommonCoordinator?
    var dataViewController: SharingDataViewController = SharingDataViewController()
    private var text: String
    
    // MARK: Initialization
    init(text: String) {
        self.text = text
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    // MARK:  Outlets
    @IBOutlet weak var labelResult: UILabel!
    
    // MARK:  Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    // MARK:  Actions
    
    // MARK:  Methods
    private func setupUI() {
        labelResult.text = text
    }
}
