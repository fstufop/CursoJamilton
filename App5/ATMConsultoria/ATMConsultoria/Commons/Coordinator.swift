//
//  Coordinator.swift
//  ATMConsultoria
//
//  Created by BootCamp on 30/11/21.
//

///Coordinator base

import UIKit
final class CommonCoordinator: Coordinator {    ///Coordinator conforma com o protocolo coordinator que é utilizado para navegar entre viewControllers
    var navigationController: UINavigationController ///A propriedade navigationViewController serve para instanciar uma viewController
    var childCoordinators: [Coordinator] = []   ///A childViewController
    
    init() {
        navigationController = UINavigationController()     ///Instancia uma navigationController vazia
    }
    
    func start() {  ///Metódo utilizado para dar o start no fluxo de telas
        let ChallengeCoordinator = ChallengeCoordinator(navigationController) ///Instancia a navigationController presente no Coordinator das demais cenas
        challengeCoordinator.start() ///Da o start no fluxo do Coordinator filho
    }
}



