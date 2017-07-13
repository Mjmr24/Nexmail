//
//  SettingsViewController.swift
//  Nexmail 1.0 (28-jun-2017)
//
//  Created by Alumno on 04/07/2017.
//  Copyright © 2017 Alumno. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var settingsTableView: UITableView!
    
    let settingsList = ["Iniciar sesión como otrapersona@otracosamail.com", "Iniciar sesión como ego_yo_miedad@algodistintomail.com", "Cambiar color de interfaz", "Opciones de privacidad", "Reportar bug", "Cerrar sesión"]
        
    override func viewDidLoad() {
        super.viewDidLoad()
        self.settingsTableView.delegate = self
        self.settingsTableView.dataSource = self

    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView()
        
        let label = UILabel.init(frame: CGRect.init(x: 20, y:10, width: UIScreen.main.bounds.width - 20, height: 56))
        label.text = String.init(format: "Settings", section)
        
        view.addSubview(label)
        return view
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 56
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Seleccionó la fila \(indexPath.row) de la sección \(indexPath.section)")
        self.settingsTableView.deselectRow(at: indexPath, animated: true)
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return settingsList.count
    }
    func tableView(_ tableView: UITableView, shouldHighlightRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    func numberOfSections(in settingsTableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "settingsCell") as! SettingsTableViewCell
        cell.settingsTitleLabel.text = settingsList [indexPath.row]
        return cell
    }
}

