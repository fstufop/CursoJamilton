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
    var featureViewModel: ToDoViewModel = ToDoViewModel()
    
    // MARK: Outlets
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupTable()
        bindEvents()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print(featureViewModel.toDoList)
    }
    
    // MARK: Methods
    private func bindEvents() {
        featureViewModel.updateLayout = { [weak self] in
            self?.tableView.reloadData()
        }
    }
    
    private func setupUI() {
        setupNavigationBar()
    }
    
    private func setupNavigationBar() {
        title = "ToDo List"
        navigationController?.navigationBar.barTintColor = UIColor(red: 217/250, green: 160/250, blue: 72/250, alpha: 1)
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addNewTodo))
    }
    
    @objc private func addNewTodo() {
        coordinator?.goToAddToDoViewController(viewModel: featureViewModel)
    }
    
    private func setupTable() {
        tableView.register(UINib(nibName: "ToDoTableViewCell",
                                 bundle: nil),
                           forCellReuseIdentifier: ToDoTableViewCell.reuseCellName)
        tableView.delegate = self
        tableView.dataSource = self
    }
}
//Extension:
extension ToDoListViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        100
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        featureViewModel.toDoListCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: ToDoTableViewCell.reuseCellName) as? ToDoTableViewCell else { return UITableViewCell()}
        let note = featureViewModel.getNote(index: indexPath.row)
        cell.setupCell(note)
        return cell
    }
    
    func tableView(_ tableView: UITableView, willBeginEditingRowAt indexPath: IndexPath) {
    }
}
