//
//  ViewController.swift
//  actividad12_JHC
//
//  Created by Francisco Hernandez Ayala on 27/04/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tipoGesto: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tipoGesto.alpha = 0.0
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let gestoTap = UITapGestureRecognizer(target: self, action: #selector(accionGesto(sender:)))
        let gestoSwipe = UISwipeGestureRecognizer(target: self, action: #selector(accionGesto(sender:)))
        
        self.view.addGestureRecognizer(gestoTap)
        self.view.addGestureRecognizer(gestoSwipe)
    }
    
    @objc func accionGesto(sender: UIGestureRecognizer){
        if sender.isKind(of: UITapGestureRecognizer.self) {
            tipoGesto.text = "Tap"
            print("tap")
        }
        if sender.isKind(of: UISwipeGestureRecognizer.self) {
            tipoGesto.text = "Swipe"
            print("swipe")
        }
        animacion()
    }

    func animacion(){
        UIView.animate(withDuration: 3, delay: 0.2, options: [], animations: {self.tipoGesto.alpha = 1.0 }){
            _ in self.tipoGesto.alpha = 0.0
        }
    }

}

