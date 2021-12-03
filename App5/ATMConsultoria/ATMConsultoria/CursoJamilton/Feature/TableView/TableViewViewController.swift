//
//  TableViewViewController.swift
//  ATMConsultoria
//
//  Created by BootCamp on 03/12/21.
//

import UIKit

class TableViewViewController: UIViewController {
    // MARK: Properties
    var coordinator: JamiltonCoordinator?
    var data: [String] = ["Lasanha","Pizza","Torta"]
    // MARK: Outlets
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self ///Quem vai implementar as funções do DataSource é a TableViewViewController (self)
        setupUI()
        
    }
    
    // MARK: Actions
    
    // MARK: Methods
    private func setupUI() {
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
        tableView.dataSource = self
        tableView.delegate = self
    }
}

extension TableViewViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    } ///Função para definir o número de celuas em na seção que a tableView terá. Por default, a apple criar apenas uma seção. Para criar mais, é necessário chamar a função numberOfSections. Criar várias seções permite confiigurar de maneira diferente cada uma delas.
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell() ///Instancia uma celula padrão
        cell.textLabel?.text = data[indexPath.row] ///Coloca o texto em cada célula de acordo com
        return cell
    } ///Função para carregar a celula em cada uma das
    
    
}
