//
//  MailContentController.swift
//  Nexmail 1.0 (28-jun-2017)
//
//  Created by Alumno on 06/07/2017.
//  Copyright © 2017 Alumno. All rights reserved.
//

import UIKit

class MailContentController: UIViewController {
    
    @IBOutlet var mailContentImage: UIImageView!
    @IBOutlet var mailContentTitle: UILabel!
    @IBOutlet var mailContentSender: UILabel!
    @IBOutlet var mailContentText: UITextView!
    
    var mail:Mail?
    
    //OJO En lugar de copiar los arrays, mejor hacer un Siingletton (mirar los apuntes)
    /*
    let mailList = ["¡Vente al Corte Inglés!", "Su seguro más barato", "Hola, soy Marta ¿Me quieres conocer?", "Trabajo final (versión definitiva 8)", "Rebaja semanal Game", "Su préstamo en 24h"]
    
    let senderList = ["El Corte Inglés", "Axa seguros", "Chicas calientes", "Clara (Clase)", "Game", "Evo Bank"]
    
    let senderImages = ["El Corte Inglés - logo.jpg", "Axa - logo.jpg", "Chica sexy - logo.jpg", "Persona - logo.jpg", "Game - logo.png", "Evo Bank - Logo.jpg"]
    */
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let mailUnwrapped = self.mail {
            
            if let imageUnwrapped = mail?.image {
            self.mailContentImage.image = UIImage.init(named: imageUnwrapped)
            }
            self.mailContentTitle.text = mail?.subject
            self.mailContentSender.text = mail?.from
            self.mailContentText.text = mail?.body
        }
    }
}
