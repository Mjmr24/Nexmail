//
//  LoginController.swift
//  Nexmail 1.0 (28-jun-2017)
//
//  Created by Alumno on 10/07/2017.
//  Copyright © 2017 Alumno. All rights reserved.
//

import UIKit

class LoginController: UIViewController {
    @IBOutlet var userText: UILabel!
    @IBOutlet var passwordText: UILabel!
    @IBOutlet var username: UITextField!
    @IBOutlet var password: UITextField!
    @IBOutlet var newUserName: UIButton!
    @IBOutlet var forgottenPasswordName: UIButton!
    @IBOutlet var okButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //tengo que conseguir que al poner un nombre de usuario válido y una contraseña válida, pase a la siguiente pantalla (la del tap bar del ViewController de Carpetas
        userText.text = "Usuario"
        passwordText.text = "Contraseña"
        newUserName.setTitle("Registrarse", for: .normal)
        forgottenPasswordName.setTitle("¿Olvidó su contraseña?", for: .normal)
        okButton.setTitle("Log in", for: .normal)
    }
    
    @IBAction func newUser (){
    }
    
    @IBAction func forgottenPassword () {
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let viewControllerDestination = segue.destination
    }
    @IBAction func ok() {
        if username.text == "otrapersona@otracosamail.com" && password.text == "Dejameentrar"{
            self.performSegue(withIdentifier: "loggingSegue", sender: nil) //Esta línea de código hace que se ejecute una flecha que me lleva al siguiente ViewController si se cumple la condición del if
        }
    }
}
