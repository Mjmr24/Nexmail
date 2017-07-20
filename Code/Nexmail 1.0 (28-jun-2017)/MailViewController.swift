//
//  MailViewController.swift
//  Nexmail 1.0 (28-jun-2017)
//
//  Created by Alumno on 28/06/2017.
//  Copyright © 2017 Alumno. All rights reserved.
//

import UIKit

class MailViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    //Cuando ponemos esto del Delegate y del Datasource de la tabla, hablamos de quién le va a decir lo que hacer a la tabla (el delegate) y de dónde va a sacar los datos la tabla (Datasource). No son archivos que ya existen, sino que son roles que le estamos dando al view controller.
    
    @IBOutlet var tableView: UITableView!
    
    var folders:FolderType?
    
    var mailTypesArray :[Mail] = []//hacer un for in igualando el contenido de este array al tipo de contenido de la variable folders para que en la variable mailsTypes Array queden los tipos de correos que estén en la variable folders y se construya la tabla de este view controller con los  correos de una sola categoría
    
    /*let mailList = ["¡Vente al Corte Inglés!", "Su seguro más barato", "Hola, soy Marta ¿Me quieres conocer?", "Trabajo final (versión definitiva 8)", "Rebaja semanal Game", "Su préstamo en 24h"]
    
    let senderList = ["El Corte Inglés", "Axa seguros", "Chicas calientes", "Me", "Game", "Evo Bank"]
    
    let senderImages = ["El Corte Inglés - logo.jpg", "Axa - logo.jpg", "Chica sexy - logo.jpg", "Persona - logo.jpg", "Game - logo.png", "Evo Bank - Logo.jpg"]*/
    
    override func viewDidLoad() {
        super.viewDidLoad()
            self.tableView.delegate = self
            self.tableView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView()
        /*view.backgroundColor = UIColor.blue*/ //Este código es para cambiar el color del fondo de la cabecera
        
        let label = UILabel.init(frame: CGRect.init(x: 20, y:10, width: UIScreen.main.bounds.width - 20, height: 56))
        label.text = String.init(format: "Mails", section)
        view.addSubview(label)
         return view
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 56
    }
    /*func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Seleccionó la fila \(indexPath.row) de la sección \(indexPath.section)")
        //self.tableView.deselectRow(at: indexPath, animated: true)
    }*/
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mailList.count
    }
    func tableView(_ tableView: UITableView, shouldHighlightRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //la variable de abajo es para reutilizar celdas. El código para no reutilizar celdas sería:
        //let cell = UITableViewCell.init(style: .default, resourceIdentifier: "mycellId")
        let cell = tableView.dequeueReusableCell(withIdentifier: "mailCell") as! MailTableViewCell
        cell.titleLabel.text = mailList [indexPath.row]
        cell.subTitleLabel.text = senderList [indexPath.row]
        cell.photo.image = UIImage.init(named: senderImages [indexPath.row])
        return cell
        
        /*if cell == nil {
            cell = UITableViewCell.init(style: .default, reuseIdentifier: "mailCell") as! MailTableViewCell*/
        }
        
    /*cell?.textLabel?.text = String.init(format: "Section %i : Row %i", indexPath.section, indexPath.row)
     cell?.detailTextLabel?.text = String.init(format: "Detail (%i, %i)",     indexPath.section, indexPath.row)
     return cell!
     //esto es de un ejemplo de clase. Lo sigo guardando porque me interesa la forma de construir la String: Me dice el número de sección (section) y el número de fila (row)
     }*/
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {//dice -> "entra en "Any" si... se cumplen las igualdades de abajo". Esta es la forma segura de entrar en un opcional, usando el interrogante
        if let destination = segue.destination as? MailContentController {//dice-> "méteme el valor segue.destination en la variable llamada "destination" y el valor tiene que ser necesariamente del tipo "MailContentController""
            if let indice = self.tableView.indexPathForSelectedRow {// dice -> en la variable llamada "indice", meter el valor self.tableview.intexPathSelectedForSelectedRow
                destination.mail = ControllerData.shareController.array[indice.row]
                self.tableView.deselectRow(at: indice, animated: true)
                
// también se podría escribir así:
    /*override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? MailContentController, 
                 var indice = self.tableView.indexPathForSelectedRow {
                 destination.mail = ControllerData.shareController.array[indice.row]
                 self.tableView.deselectRow(at: indice, animated: true)
            }
        }
                 
                 */
                
            }
        }
    }
}
