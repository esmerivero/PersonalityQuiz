//
//  Answer.swift
//  Single View App
//
//  Created by Apple Device 7 on 10/19/19.
//  Copyright © 2019 PersonalityQuiz-ECC. All rights reserved.
//

import Foundation


enum Type {
    case Bella, Ariel, Mulan, Tiana
    
    func definition()-> String{
        
    }
}


struct Answer {
    var text: String
    var type: Type
}
