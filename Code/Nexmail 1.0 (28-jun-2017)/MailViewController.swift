//
//  MailViewController.swift
//  Nexmail 1.0 (28-jun-2017)
//
//  Created by Alumno on 28/06/2017.
//  Copyright © 2017 Alumno. All rights reserved.
//

import UIKit

class MailViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tableView: UITableView!
    
    let mailList = ["¡Vente al Corte Inglés!", "Su seguro más barato", "Hola, soy Marta ¿Me quieres conocer?", "Trabajo final (versión definitiva 8)", "Rebaja semanal Game", "Su préstamo en 24h"]
    
    let senderList = ["El Corte Inglés", "Axa seguros", "Chicas calientes", "Clara (Clase)", "Game", "Evo Bank"]
    
    let senderImages = ["El Corte Inglés - logo.jpg", "Axa - logo.jpg", "Chica sexy - logo.jpg", "Persona - logo.jpg", "Game - logo.png", "Evo Bank - Logo.jpg"]
    
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
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Seleccionó la fila \(indexPath.row) de la sección \(indexPath.section)")
        self.tableView.deselectRow(at: indexPath, animated: true)
    }
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
        cell?.detailTextLabel?.text = String.init(format: "Detail (%i, %i)", indexPath.section, indexPath.row)
        return cell! 
     //esto es de un ejemplo de clase. Lo sigo guardando porque me interesa la forma de construir la String: Me dice el númerod e sección (section) y el número de fila (row)
    }*/
}
