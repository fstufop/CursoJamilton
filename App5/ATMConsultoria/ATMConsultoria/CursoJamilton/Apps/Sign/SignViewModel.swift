//
//  SingViewModel.swift
//  ATMConsultoria
//
//  Created by BootCamp on 06/12/21.
//

import Foundation
class SignViewModel {
    //MARK: Properties
    private let signNames = ["Áries",
                             "Touro",
                             "Gêmeos",
                             "Câncer",
                             "Leão",
                             "Virgem",
                             "Libra",
                             "Escorpião",
                             "Sagitário",
                             "Capricórnio",
                             "Aquário",
                             "Peixes"]
    
    private let signDescrioption = ["Áries: de 21 de março a 20 de abril",
                                    "Touro: de 21 de abril a 20 de maio",
                                    "Gêmeos: de 21 de maio a 20 de junho",
                                    "Câncer: de 21 de junho a 22 de julho",
                                    "Leão: de 23 de julho a 22 de agosto",
                                    "Virgem: de 23 de agosto a 22 de setembro",
                                    "Libra: de 23 de setembro a 22 de outubro",
                                    "Escorpião: de 23 de outubro a 21 de novembro",
                                    "Sagitário: de 22 de novembro a 21 de dezembro",
                                    "Capricórnio: de 22 de dezembro a 20 de janeiro",
                                    "Aquário: de 21 de janeiro a 18 de fevereiro",
                                    "Peixes: de 19 de fevereiro a 20 de março"]
    
    //MARK: Methods
    func getSignNames(index: Int) -> String? { ///função para obter o dado do array na posição do indexpath da tableView
        signNames[index]
    }
    
    func getSignImage(index: Int) -> String? { ///função para obter o dado do array na posição do indexpath da tableView
        signNames[index]
    }
    
    func getSignDescription(index: Int) -> String? { ///função para obter o dado do array na posição do indexpath da tableView
        signDescrioption[index]
    }
    
    func getSignNamesCount() -> Int { ///função para obter o número de dados do array para a construção da tableView
        signNames.count
    }
}
