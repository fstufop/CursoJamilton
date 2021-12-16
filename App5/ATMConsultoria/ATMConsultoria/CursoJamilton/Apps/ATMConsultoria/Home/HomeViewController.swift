//
//  HomeViewController.swift
//  ATMConsultoria
//
//  Created by BootCamp on 22/11/21.
//

import UIKit

class HomeViewController: UIViewController {
    // MARK:  Properties
    
    // MARK:  Outlets
    
    // MARK:  Initialization
    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    // MARK:  Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "ATM Consultoria"
    }
    // MARK:  Actions
    @IBAction func handlerButtonClients(_ sender: Any) {
        let viewController = ClientsViewController()
        navigationController?.pushViewController(viewController, animated: true)
    }
    @IBAction func handlerButtonContacts(_ sender: Any) {
        let viewController = ContactsViewController()
        navigationController?.pushViewController(viewController, animated: true)
    }
    @IBAction func handlerButtonCompany(_ sender: Any) {
        let viewController = CompanyViewController()
        navigationController?.pushViewController(viewController, animated: true)
    }
    @IBAction func handlerButtonServices(_ sender: Any) {
        let viewController = ServicesViewController()
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    // MARK:  Methods
}

