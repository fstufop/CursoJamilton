//
//  SignViewController.swift
//  ATMConsultoria
//
//  Created by BootCamp on 06/12/21.
//

import UIKit

class SignViewController: UIViewController {
    // MARK: Properties
    var coordinator: JamiltonCoordinator?
    private var viewModel: SignViewModel = SignViewModel()
    private var signModel = SignModel()
    
    // MARK: Outlets
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTable()
    }
    
    // MARK: Methods
    private func setupTable() {
        tableView.register(UINib(nibName: "SignTableViewCell", bundle: nil), forCellReuseIdentifier: SignTableViewCell.reuseIdentifier)
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    private func setAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let actionOk = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(actionOk)
        present(alert, animated: true, completion: nil)
    }
}
// MARK: Extensions
extension SignViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
      110 ///Seta a altura da célula
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel.getSignNamesCount() ///Seta o número de células por seção
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: SignTableViewCell.reuseIdentifier) as? SignTableViewCell else { return UITableViewCell() } ///Atribui à variàvel cell uma
        
        guard let signName = viewModel.getSignNames(index: indexPath.row) else {
            return UITableViewCell()}
       
        guard let signImage = viewModel.getSignImage(index: indexPath.row) else {
            return UITableViewCell()}
        
        self.signModel.signName = signName
        self.signModel.imageName = signImage
        cell.setupCell(signModel)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let signName = viewModel.getSignNames(index: indexPath.row) ?? ""
        let signDescription = viewModel.getSignDescription(index: indexPath.row) ?? ""
  
        setAlert(title: signName, message: signDescription)
    }
}
