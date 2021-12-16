//
//  AddToDoViewModel.swift
//  ATMConsultoria
//
//  Created by BootCamp on 09/12/21.
//

import Foundation

class AddToDoViewModel {
    //MARK: Properties
    let noteKey = "toDo"
    var toDoList: [String] = []
    
    //MARK: Methods
    func saveNote(note: String) {
        toDoList.append( note )
        UserDefaults.standard.setValue(toDoList, forKey: noteKey)
    }
}
