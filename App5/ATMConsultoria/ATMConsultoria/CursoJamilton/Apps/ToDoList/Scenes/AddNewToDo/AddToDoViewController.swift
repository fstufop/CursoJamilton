//
//  AddToDoViewController.swift
//  ATMConsultoria
//
//  Created by BootCamp on 09/12/21.
//

import UIKit

class AddToDoViewController: UIViewController {
    // MARK: Properties
    var viewModel = AddToDoViewModel()
    var coordinator: JamiltonCoordinator?
    var getNote: ((String) -> Void)?
    
    // MARK: Outlets
    @IBOutlet weak var textFieldNewToDo: UITextField!
    
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
    }
    
    // MARK: Actions
    @IBAction func handlerButtonAddNewToDo(_ sender: Any) {
        saveNote()
        navigationController?.popToRootViewController(animated: true)
    }
    
    // MARK: Methods
    private func saveNote() -> String {
        guard let note = textFieldNewToDo.text else { return ""}
        viewModel.saveNote(note: note)
        self.getNote?(note)
        return note
    }
    
}
