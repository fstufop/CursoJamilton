//
//  PermanenteStorageViewController.swift
//  ATMConsultoria
//
//  Created by BootCamp on 07/12/21.
//

import UIKit

class PermanenteStorageViewController: UIViewController {
    // MARK: Properties
    var coordinator: JamiltonCoordinator?
//    private let comidas: [String] = ["Lasanha", "Pizza", "Torta"]
    // MARK: Outlets
    
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
     //   UserDefaults.standard.set("azul", forKey: "corFundo") ///Salva no dispositivo
        let text = UserDefaults.standard.object(forKey: "corFundo") ///Atribui o valor armazenado na chave corFundo em text)
        UserDefaults.standard.removeObject(forKey: "corFundo") ///Apaga a informação armazenada
        print(text ?? "")
    }
    // MARK: Actions
    
    // MARK: Methods
}
