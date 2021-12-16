//
//  HomeMoviesViewController.swift
//  ATMConsultoria
//
//  Created by BootCamp on 06/12/21.
//

import UIKit

class HomeMoviesViewController: UIViewController {
    // MARK: Properties
    var coordinator: JamiltonCoordinator?
    var viewModel = MoviesViewModel()
    var moviesModel = MoviesModel()
    
    // MARK: Outlets
    @IBOutlet weak var tableView: UITableView!
    
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
        setupTable()
    }
       
    // MARK: Methods
    private func setupTable() {
        tableView.register(UINib(nibName: "MoviesTableViewCell", bundle: nil), forCellReuseIdentifier: MoviesTableViewCell.reuseIdentifier)
        tableView.delegate = self
        tableView.dataSource = self
    }
}

//MARK: Extensions
extension HomeMoviesViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        112
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel.getMoviesCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: MoviesTableViewCell.reuseIdentifier) as? MoviesTableViewCell else { return UITableViewCell() }
        let moviesName = viewModel.getMoviesName(index: indexPath.row) 
        guard let moviesImage = viewModel.getMoviesImage(index: indexPath.row) else { return UITableViewCell() }
        guard let moviesDescription = viewModel.getMoviesDescription(index: indexPath.row) else { return UITableViewCell() }
       
        self.moviesModel.moviesName = moviesName
        self.moviesModel.moviesImageName = moviesImage
        self.moviesModel.moviesDescription = moviesDescription
        cell.setupCell(moviesModel)
        return cell
    }
  
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        //TODO: Tentar buscar as propriedades da célula já preenchida.
        guard let moviesName = viewModel.getMoviesName(index: indexPath.row) else { return }
        guard let moviesImage = viewModel.getMoviesImage(index: indexPath.row) else { return }
        guard let moviesDescription = viewModel.getMoviesDescription(index: indexPath.row) else { return }

        self.moviesModel.moviesName = moviesName
        self.moviesModel.moviesImageName = moviesImage
        self.moviesModel.moviesDescription = moviesDescription
        
        coordinator?.goToDetailsMoviesViewController(imageName: moviesImage, moviesName: moviesName, moviesDescription: moviesDescription)
    }
}
