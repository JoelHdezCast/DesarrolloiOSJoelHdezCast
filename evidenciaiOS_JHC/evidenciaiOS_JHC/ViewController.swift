//
//  ViewController.swift
//  evidenciaiOS_JHC
//
//  Created by Francisco Hernandez Ayala on 14/04/21.
//

import UIKit

class ViewController: UIViewController{
    
    @IBOutlet weak var userText: UITextField!
    @IBOutlet weak var passText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //tableView.delegate = self
        //tableView.dataSource = self
    }

    @IBAction func loginBut(_ sender: Any) {
        //Usuario prueba: admin
        //Contraseña prueba: 1234
        
        let text:String = userText.text!
        let pass:String = passText.text!
        
        if text == "admin" && pass == "1234" {
            let alert = UIAlertController(title: "Login", message: "Bienvenido " + text, preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "ok", style: UIAlertAction.Style.default, handler: nil))
            
            self.present(alert, animated: true, completion: nil)
        }else {
            let alert = UIAlertController(title: "Login", message: "Datos invalidos", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "ok", style: UIAlertAction.Style.default, handler: nil))
            
            self.present(alert, animated: true, completion: nil)
        }
    }
}


    


