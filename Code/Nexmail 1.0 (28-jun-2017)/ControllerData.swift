//
//  ControllerData.swift
//  Nexmail 1.0 (28-jun-2017)
//
//  Created by Alumno on 12/7/17.
//  Copyright © 2017 Alumno. All rights reserved.
//

import UIKit

class ControllerData{
    static let shareController = ControllerData()
    private init() {}
    
    var array = [
        Mail.init(image: "El Corte Inglés - logo.jpg", subject: "¡Vente al Corte Inglés!", from:"noreply@elcorteingles.net", to: "otrapersona@otracosamail.com", body: "Llega el verano al Corte Inglés. \n\nPor ello, aprovechamos para ofrecerte nuestros mejores precios. \n\n¡Hasta un 70 % de descuento! \n\nNo te lo pierdas y vente a ver nuestros increíbles precios", folderType: .inbox),Mail.init(image: "Axa - logo.jpg", subject: "Su seguro más barato", from:"noreply@axa.net", to: "otrapersona@otracosamail.com", body: "¿Cansado de comparar seguros y que, a final de año, se dispare el importe de su cuota? \n\n¡No busque más! \n\nEn AXA nos comprometemos a cobrarle la misma cantidad por nuestros servicios ¡Durante cinco años! \n\n Pásate por nuestras oficinas y entérate de cómo pagar lo mismo por tu seguro ¡Que no te engañen! \n\n Promoción no válida para Baleares y Canarias", folderType: .spam), Mail.init(image: "Chica sexy - logo.jpg", subject: "Hola, soy Marta ¿Me quieres conocer?", from:"chicascalientes@hotmail.es", to: "otrapersona@otracosamail.com", body: "Hola, te he visto conectado y he decidido hablarte... \n\nVisita nuestra página con las chicas más calientes y juguetonas en www.chicascalientes.com", folderType: .spam), Mail.init(image: "Persona - logo.jpg", subject: "Trabajo final (versión definitiva 8", from: "otrapersona@otracosamail.com", to: "clara.h.r@hotmail.com", body: "Buenas noches:\n\nCorregí algunas cosas que estaban mal redactadas, le puse formato al texto y añadí algunas imágenes en la conclusión. \n\n¡Me quedé hasta las cuatro de la mañana corrigiendo tildes! Tío, la parte de Marta estaba fatal, la tuve que rehacer casi entera -.- \n\nEn fin, échale un ojo, ponle el nombre con el formato que dijo la profesora y súbelo al campus. \n\nNos vemos mañana.", folderType: .sent), Mail.init(image: "Game - logo.png", subject: "Rebaja semanal Game", from:"noreply@game.net", to: "otrapersona@otracosamail.com", body: "Estas son las ofertas de esta semana en Game. \n\nPara más información, visite nuestra página en www.game.es", folderType: .inbox), Mail.init(image:"Evo Bank - Logo.jpg", subject: "Su préstamo en 24h", from:"noreply@evobank.net", to: "otrapersona@otracosamail.com", body: "En Evo Bank comprendemos sus necesidades, por eso ponemos a su disposición la cantidad que necsite ¡En tan solo 24 horas! \n\nVisite nuestras oficinas o consulte las condiciones del préstamo en www.evobank.es para más información.", folderType: .spam)
    ]
}


//ControllerData.shareController. por ejemplo, "email 1")// Esto es para llamar al Singleton en cualquier parte del código

