//
//  Mail.swift
//  Nexmail 1.0 (28-jun-2017)
//
//  Created by Alumno on 12/7/17.
//  Copyright © 2017 Alumno. All rights reserved.
//

import UIKit

class Mail {
    var image = ""
    var subject = ""
    var from = ""
    var to = ""
    var body = ""
    var folderType:FolderType = .inbox
    
    init(image: String, subject: String, from: String, to: String, body: String, folderType:FolderType){
        self.image = image
        self.subject = subject
        self.from = from
        self.to = to
        self.body = body
        self.folderType = folderType
        
    }
 }
