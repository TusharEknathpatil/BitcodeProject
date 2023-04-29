//
//  DetailsAddViewController.swift
//  BitcodeApplication
//
//  Created by Mac on 28/04/23.
//

import UIKit

class DetailsAddViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var ageTextField: UITextField!
    var delegate:BackDataPassingProtocol?
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true

        
    }
    

    @IBAction func addDetailsButton(_ sender: Any) {
        guard let name = nameTextField.text,
        let age = ageTextField.text?.codingKey.intValue
        else {
            
            let uiAlertController = UIAlertController(title: "EmptyData", message: "Enter A Data", preferredStyle: .alert)
            let uiAlertAction = UIAlertAction(title: "Ok", style: .default)
            uiAlertController.addAction(uiAlertAction)
            present(uiAlertController, animated: true)
            
            return  }
        
//        var name = nameTextField.text
//        var age = ageTextField.text
        var objectOfStudent = Student(name: name, age: (age.codingKey.intValue!))
        guard let delegateSVC = delegate else { return  }
        delegateSVC.backDataPassing(student: objectOfStudent)
        navigationController?.popViewController(animated: true)
        
    }
    
}
