//
//  ToDoListViewController.swift
//  ATMConsultoria
//
//  Created by BootCamp on 09/12/21.
//

import UIKit

class ToDoListViewController: UIViewController {
    // MARK: Properties
    var coordinator: JamiltonCoordinator?
    var addViewController = AddToDoViewController()
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
        setupUI()
    }
    
    // MARK: Actions
    
    
    // MARK: Methods
    private func bindEvents() {
        addViewController.getNote = {
            
        }
    }
    private func setupUI() {
        setupNavigationBar()
    }
    
    @objc private func addNewTodo() {
        coordinator?.goToAddToDoViewController()
    }
    
    private func setupNavigationBar() {
        title = "ToDo List"
        navigationController?.navigationBar.barTintColor = UIColor(red: 217/250, green: 160/250, blue: 72/250, alpha: 1)
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addNewTodo))
    }
}
