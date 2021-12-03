//
//  CoordinatorProtocol.swift
//  Gerencianet-Lite
//
//  Created by Usemobile on 26/08/20.
//  Copyright © 2020 Usemobile. All rights reserved.
//

import UIKit

protocol Coordinator {
    var navigationController: UINavigationController { get set }
    var childCoordinators: [Coordinator] { get set }
    
    func start()
}
