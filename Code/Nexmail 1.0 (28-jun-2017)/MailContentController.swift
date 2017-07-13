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
    
    //OJO En lugar de copiar los arrays, mejor hacer un Siingletton (mirar los apuntes)
    
    let mailList = ["¡Vente al Corte Inglés!", "Su seguro más barato", "Hola, soy Marta ¿Me quieres conocer?", "Trabajo final (versión definitiva 8)", "Rebaja semanal Game", "Su préstamo en 24h"]
    
    let senderList = ["El Corte Inglés", "Axa seguros", "Chicas calientes", "Clara (Clase)", "Game", "Evo Bank"]
    
    let senderImages = ["El Corte Inglés - logo.jpg", "Axa - logo.jpg", "Chica sexy - logo.jpg", "Persona - logo.jpg", "Game - logo.png", "Evo Bank - Logo.jpg"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.mailContentImage.image = UIImage.init(named:senderImages[0])
        self.mailContentTitle.text = ""
        self.mailContentSender.text = ""
        self.mailContentTitle.text = ""
    }
}
