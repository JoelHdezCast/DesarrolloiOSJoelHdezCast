//
//  AViewController.swift
//  evidenciaiOS_JHC
//
//  Created by Francisco Hernandez Ayala on 26/04/21.
//

import UIKit

class AViewController: UIViewController {
    
    @IBOutlet weak var datePicked: UIDatePicker!
    
    var fechaC:String = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func datePickerChanged(_ sender: Any) {
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateStyle = DateFormatter.Style.short
        dateFormatter.timeStyle = DateFormatter.Style.short
        
        let strDate = dateFormatter.string(from: datePicked.date)
        fechaC = strDate
    }
    
    @IBAction func agendarButt(_ sender: Any) {
        let alert = UIAlertController(title: "Agenda", message: "Cita agendada para la fecha: " + fechaC, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "ok", style: UIAlertAction.Style.default, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
        print("fecha: " + fechaC)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! TViewController
        destVC.fechaCita = fechaC
    }

}
