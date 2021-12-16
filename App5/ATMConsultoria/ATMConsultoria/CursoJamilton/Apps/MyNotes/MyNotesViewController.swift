//
//  MyNotesViewController.swift
//  ATMConsultoria
//
//  Created by BootCamp on 09/12/21.
//

import UIKit

class MyNotesViewController: UIViewController {
    // MARK: Properties
    var coordinator: JamiltonCoordinator?
    private let savedDataKey = "myNote"
    // MARK: Outlets
    @IBOutlet weak var textViewNotes: UITextView!
    
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
        saveData()
    }
    
    // MARK: Actions
    @IBAction func handlerButtonSave(_ sender: Any) {
        saveData()
    }
    
    // MARK: Methods
    private func setupUI() {
        title = "Minhas notas"
        dismissKeyboardGesture()
        textViewNotes.text = setSavedData()
    }
    
    private func saveData() {
        if let data = textViewNotes.text, data != "" {
            UserDefaults.standard.setValue(data, forKey: savedDataKey)
        } else {
            setAlert()
        }
    }
    
    private func setSavedData() -> String {
        if let text = UserDefaults.standard.object(forKey: savedDataKey) {
            return text as! String
        }
        return ""
    }
    
    private func dismissKeyboardGesture() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    private func setAlert() {
        let alert = UIAlertController(title: "Algo deu errado", message: "Escreva uma mensagem", preferredStyle: .alert)
        let actionOk = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(actionOk)
        present(alert, animated: true, completion: nil)
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    @objc
    func dismissKeyboard() {
        view.endEditing(true)
    }
}
