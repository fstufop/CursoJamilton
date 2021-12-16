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
        let viewController = ToDoListViewController()
        viewController.coordinator = self
        navigationController.pushViewController(viewController, animated: true)
    }
    
    //MARK: Apps
    func goToHeadsOrTailsViewController() {
        let viewController = HeadsOrTailsViewController()
        viewController.coordinator = self
        navigationController.pushViewController(viewController, animated: true)
    }
    
    func goToResultHeadsOrTailsViewController() {
        let viewController = ResultHeadsOrTailsViewController()
        viewController.coordinator = self
        navigationController.pushViewController(viewController, animated: true)
    }
    
    func goToResultSignViewController() {
        let viewController = SignViewController()
        viewController.coordinator = self
        navigationController.pushViewController(viewController, animated: true)
    }
    
    func goToHomeMoviesViewController() {
        let viewController = HomeMoviesViewController()
        viewController.coordinator = self
        navigationController.pushViewController(viewController, animated: true)
    }
    
    func goToDetailsMoviesViewController(imageName: String, moviesName: String, moviesDescription: String) {
        let viewController = DetailsMoviesViewController(imageName: imageName, moviesName: moviesName, moviesDescription: moviesDescription)
        viewController.coordinator = self
        navigationController.pushViewController(viewController, animated: true)
    }
    
    func goMyNotesViewController() {
        let viewController = MyNotesViewController()
        viewController.coordinator = self
        navigationController.pushViewController(viewController, animated: true)
    }
    
    func goToToDoListViewController() {
        let viewController = ToDoListViewController()
        viewController.coordinator = self
        navigationController.pushViewController(viewController, animated: true)
    }
    
    func goToAddToDoViewController() {
        let viewController = AddToDoViewController()
        viewController.coordinator = self
        navigationController.pushViewController(viewController, animated: true)
    }
    
    //MARK: Features
    func goToTableViewViewController() {
        let viewController = TableViewViewController()
        viewController.coordinator = self
        navigationController.pushViewController(viewController, animated: true)
    }
    
    func goToAlertViewController() {
        let viewController = AlertViewController()
        viewController.coordinator = self
        navigationController.pushViewController(viewController, animated: true)
    }
    
    func goToAlertPermanenteStorageViewController() {
        let viewController = PermanenteStorageViewController()
        viewController.coordinator = self
        navigationController.pushViewController(viewController, animated: true)
    }
}
