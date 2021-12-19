//
//  AddToDoViewModel.swift
//  ATMConsultoria
//
//  Created by BootCamp on 09/12/21.
//

import Foundation

class ToDoViewModel {
    //MARK: Properties
    let noteKey = "toDo"
    var toDoList: [String] = []
    var updateLayout: (() -> Void)?

    //MARK: Methods
    func saveNote(note: String) {
        toDoList = setNote()
        toDoList.append( note )
        UserDefaults.standard.set(toDoList, forKey: noteKey)
        self.updateLayout?()
    }
    
    func setNote() -> Array<String> {
        let notes = UserDefaults.standard.object(forKey: noteKey)
        if notes != nil {
            return notes as! Array<String>
        } else {
            return [ ]
        }
    }
    
    func toDoListCount() -> Int {
        toDoList.count
    }
    
    
    func getNote(index: Int) -> String {
        toDoList[index]
    }
}
