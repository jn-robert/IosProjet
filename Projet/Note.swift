//
//  Note.swift
//  Projet
//
//  Created by robert jean-noel on 06/02/2019.
//  Copyright © 2019 robert jean-noel. All rights reserved.
//

import Foundation

class Note{
    var titre: String
    var contenu: String
    var date: Date
    var localisation: String
    
    init(titre: String, contenu: String, date: Date, localisation: String) {
        self.titre = titre
        self.contenu = contenu
        self.date = date
        self.localisation = localisation
    }
}




