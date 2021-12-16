//
//  SharingDataViewController.swift
//  ATMConsultoria
//
//  Created by BootCamp on 29/11/21.
//

import UIKit

class SharingDataViewController: UIViewController {
    // MARK: Properties
    
    // MARK: Outlets
    @IBOutlet weak var textFieldData: UITextField!
    
    // MARK: Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    // MARK: Actions
    @IBAction func handlerButtonSharingData(_ sender: Any) {
        validateTextField()
    }
    
    // MARK: Methods
    private func push(){
        let viewController = SharingDataResultsViewController(text: textFieldData.text ?? "")
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    private func validateTextField() {
        if let textName = textFieldData.text, textName.count > 2 { //if let para desembrulhar o texto do TextField
            push()
        } else {
            showAlertMessage()
        }
    }
    
    private func showAlertMessage() {
        let alert = UIAlertController(title: "Algo deu errado", message: "Preencha os campos corretamente", preferredStyle: .alert)
        let actionOK = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(actionOK)
        present(alert, animated: true, completion: nil)
    }
}
