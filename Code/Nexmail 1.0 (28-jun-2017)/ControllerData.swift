//
//  ControllerData.swift
//  Nexmail 1.0 (28-jun-2017)
//
//  Created by Alumno on 12/7/17.
//  Copyright © 2017 Alumno. All rights reserved.
//

import UIKit

class ControllerData{
    static let sharecontroller = ControllerData()
    private init() {}
    
    var array = [Mail.init(subject: "¡Vente al Corte Inglés!", from:"noreply@elcorteingles.net", to: "otrapersona@otracosamail.com", body: "Llega el verano al Corte Inglés. Por ello, aprovechamos para ofrecerte nuestros mejores precios ¡Hasta un 70 % de descuento! No te lo pierdas y vente a ver nuestros increíbles precios"), Mail.init(subject: "Su seguro más barato", from:"noreply@axa.net", to: "otrapersona@otracosamail.com", body: ""),Mail.init(subject: "Hola, soy Marta ¿Me quieres conocer?", from:"chicascalientes@hotmail.es", to: "otrapersona@otracosamail.com", body: "Hola, te he visto conectado y he decidido hablarte... visita nuestra página con las chicas más calientes y juguetonas en www.chicascalientes.com"), Mail.init(subject: "Trabajo final (versión definitiva 8", from:"clara.h.r@hotmail.com", to: "otrapersona@otracosamail.com", body: "Buenas noches:\n Corregí algunas cosas que estaban mal redactadas, le puse formato al texto y añadí algunas imágenes en la conclusión.\n ¡Me quedé hasta las cuatro de la mañana corrigiendo tildes! Tío, la parte de Marta estaba fatal, la tuve que rehacer casi entera -.-\n En fin, échale un ojo, ponle el nombre con el formato que dijo la profesora y súbelo al campus.\n Nos vemos mañana."), Mail.init(subject: "Rebaja semanal Game", from:"noreply@game.net", to: "otrapersona@otracosamail.com", body: "Estas son las ofertas de esta semana en Game. Para más información, visite nuestra página en www.game.es"), Mail.init(subject: "Su préstamo en 24h", from:"noreply@evobank.net", to: "otrapersona@otracosamail.com", body: "En Evo Bank comprendemos sus necesidades, por eso ponemos a su disposición la cantidad que necsite ¿En tan solo 24 horas! Visite nuestras oficinas o consulte las condiciones del préstamo en www.evobank.es para más información.")
    ]
}
//ControllerData.shareController.(por ejemplo, "email 1")// Esto es para llamar al Singleton en cualquier parte del código

