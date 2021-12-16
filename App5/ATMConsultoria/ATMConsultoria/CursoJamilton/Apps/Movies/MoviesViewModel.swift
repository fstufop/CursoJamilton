//
//  MoviesViewModel.swift
//  ATMConsultoria
//
//  Created by BootCamp on 06/12/21.
//

import UIKit

class MoviesViewModel {
    // MARK: Properties
    private var moviesName = ["007 - Spectre",
                              "Star Wars",
                              "Impacto Mortal",
                              "Deadpool",
                              "O Regresso",
                              "A Herdeira",
                              "Caçadores de emoção",
                              "Regresso do mal",
                              "Tarzan",
                              "Filme 10"]
    
    private var moviesImageName = ["filme1",
                                   "filme2",
                                   "filme3",
                                   "filme4",
                                   "filme5",
                                   "filme6",
                                   "filme7",
                                   "filme8",
                                   "filme9",
                                   "filme10"]
    
    private var moviesDescription = ["007 - Spectre",
                                     "Star Wars",
                                     "Impacto Mortal",
                                     "Deadpool",
                                     "O Regresso",
                                     "A Herdeira",
                                     "Caçadores de emoção",
                                     "Regresso do mal",
                                     "Tarzan",
                                     "Filme 10"]
    
    // MARK: Methods
    func getMoviesName(index: Int) -> String? {
        moviesName[index]
    }
    
    func getMoviesImage(index: Int) -> String? {
        moviesImageName[index]
    }
    
    func getMoviesDescription(index: Int) -> String? {
        moviesDescription[index]
    }
    
    func getMoviesCount() -> Int {
        moviesName.count
    }
}
