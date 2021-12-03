//
//  JamiltonCoordinator.swift
//  ATMConsultoria
//
//  Created by BootCamp on 02/12/21.
//

import UIKit
final class JamiltonCoordinator: Coordinator {
    var navigationController: UINavigationController
    var childCoordinators: [Coordinator] = []
    
    init(_ navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = HeadsOrTailsViewController()
        viewController.coordinator = self
        navigationController.pushViewController(viewController, animated: true)
    }
    
    func goToResultHeadsOrTailsViewController() {
        let viewController = ResultHeadsOrTailsViewController()
        viewController.coordinator = self
        navigationController.pushViewController(viewController, animated: true)
    }
}
