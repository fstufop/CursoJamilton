//
//  AlertViewController.swift
//  ATMConsultoria
//
//  Created by BootCamp on 03/12/21.
//

import UIKit

class AlertViewController: UIViewController {
    // MARK: Properties
    var coordinator: JamiltonCoordinator?
    
    // MARK: Outlets
    @IBOutlet weak var buttonAlert: UIButton!
    
    // MARK: Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    // MARK: Actions
    @IBAction func handlerButtonAlert(_ sender: Any) {
        alert()
    }
    
    // MARK: Methods
    func setupUI() {
        buttonAlert.layer.cornerRadius = 5
    }
    
    func alert() {
        let alertTilte = "Aviso"
        let alertMessage = "Quer jogar um jogo??"
        let alert = UIAlertController(title: alertTilte, message: alertMessage, preferredStyle: .alert)
        let actionOk = UIAlertAction(title: "Claro!", style: .default, handler: {_ in ///O Handler é uma closure que irá rodar um código específico
            self.coordinator?.goToHeadsOrTailsViewController()
        })
        let actionCancel = UIAlertAction(title: "Deus me dibre!", style: .destructive, handler: nil)
        alert.addAction(actionOk)
        alert.addAction(actionCancel)
        present(alert, animated: true, completion: nil)
    }
}
