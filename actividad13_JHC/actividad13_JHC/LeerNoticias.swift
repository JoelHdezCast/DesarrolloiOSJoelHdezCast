//
//  LeerNoticias.swift
//  actividad13_JHC
//
//  Created by Francisco Hernandez Ayala on 03/05/21.
//

import Foundation


class LeerNoticias{


    func getNoticias(termino:@escaping (_ datos:[String])->()){
      let liga = "https://api.nytimes.com/svc/mostpopular/v2/viewed/1.json?api-key=FN3XbxmzuzoGcBG1FG5HPlq8w71t9wNV"
        
      let url = NSURL(string: liga)!
        URLSession.shared.dataTask(with: url as URL){dato, respuesta, error in
            var titulos:[String] = []
            do{
                let resultado = try JSONSerialization.jsonObject(with: (dato!), options: JSONSerialization.ReadingOptions.mutableLeaves) as! NSDictionary
            
                for valor in resultado["results"] as! [NSDictionary]{
                  titulos.append(valor["title"] as! String)
                }
                DispatchQueue.main.async{
                    termino(titulos)
             }
            }catch{
              print("Error en lectura")
            }
        }.resume()
        }
    }

