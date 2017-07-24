//
//  FolderViewController.swift
//  Nexmail 1.0 (28-jun-2017)
//
//  Created by Alumno on 04/07/2017.
//  Copyright © 2017 Alumno. All rights reserved.
//

import UIKit

class FolderViewController:UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet var folderTableView: UITableView!
    
    let mailListFoldersName = ["Bandeja de entrada", "Enviados", "Borradores", "Correo no deseado"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.folderTableView.delegate = self
        self.folderTableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView()
        
        let label = UILabel.init(frame: CGRect.init(x: 20, y:10, width: UIScreen.main.bounds.width - 20, height: 56))
        label.text = String.init(format: "Folders", section)
        
        view.addSubview(label)
        return view
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 56
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Seleccionó la fila \(indexPath.row) de la sección \(indexPath.section)")//lo que dicen estas dos líneas de código: primera línea -> Del parámetro1 se va a omitir el nombre out y el nombre in es "tableView" y  este parámetro va a ser del tipo UITableView; el parámetro 2 tiene dos nombres (el nombre out: "didSelectRowAt" y el nombre in:"indexPath") y este parámetro va a ser del tipo IndexPath. Segunda línea -> lo que va a hacer es un print que va a imprimir: "Seleccionó la fila TAL de la selección CUAL". Esta función, lo que viene a hacer es que cada vez que seleccione una celda de la tabla, me va a hacer un print que diga "Seleccionó la fila TAL de la sección CUAL".
        self.folderTableView.deselectRow(at: indexPath, animated: true)
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mailListFoldersName.count
    }
    func tableView(_ tableView: UITableView, shouldHighlightRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        let cell = tableView.dequeueReusableCell(withIdentifier: "folderCell") as! FolderTableViewCell
        cell.folderTitleLabel.text = mailListFoldersName [indexPath.row]
        return cell
            }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? MailViewController {
            if let indice = self.folderTableView.indexPathForSelectedRow {// significa devuelveme el indice que se ha seleccionado, y si no hay ningún indice seleccionado, no entra. El valor del indexPathForSelectedRow de la folderTableview se va a guardar como valor de la variable indice.
                
                if indice.row == 0 {
                     destination.folders = .inbox
                }
                else if indice.row == 1 {
                    destination.folders = .sent
                }
                else if indice.row == 2 {
                    destination.folders = .drafts
                }
                else if indice.row == 3 {
                    destination.folders = .spam
                }
                
                self.folderTableView.deselectRow(at: indice, animated: true)
            }
        }
    }
}
