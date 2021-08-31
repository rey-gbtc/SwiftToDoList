//
//  ViewController.swift
//  ToDoList
//
//  Created by Aponte, Raynaldo E on 8/24/21.
//

import UIKit

class ViewController: UIViewController {
    
    // MAKE SURE YOU INCLUDE INSIDE CLASS
    var item: Item?

    @IBOutlet weak var cancelButton: UIBarButtonItem!
    @IBOutlet weak var newTask: UITextField!
    @IBAction func cancel(_ sender: UIBarButtonItem) {
        let isInAddMode = presentingViewController is UINavigationController
        
        if isInAddMode {
            dismiss(animated: true, completion: nil)
        } else {
            self.navigationController?.popViewController(animated: true)
        }
        
        // DIFFERENT FROM TUTORIAL
    }
    
    @IBOutlet weak var saveButton: UIBarButtonItem!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var saveItem: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if let item = item {
            newTask.text = item.name
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if sender as AnyObject === saveButton {
            let name = newTask.text ?? ""
            item = Item(name: name)
            
        }
        
        // m
    }


}

