//
//  TViewController.swift
//  evidenciaiOS_JHC
//
//  Created by Francisco Hernandez Ayala on 26/04/21.
//

import UIKit

class TViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    @IBOutlet weak var tableView: UITableView!
    
    var fechas: Array<String> = []
    var fechaCita = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func VerCitas(_ sender: Any) {
        fechas.append(fechaCita)
        self.tableView.reloadData()
    }
    
    @IBAction func agendado(_ sender: UIStoryboardSegue){}
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        print("presionado")
    }

    func numberOfSections(in tableView: UITableView) -> Int{
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return fechas.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = fechas [indexPath.row]
        return cell
    }
}
