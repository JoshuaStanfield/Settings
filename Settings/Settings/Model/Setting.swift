//
//  Setting.swift
//  Settings
//
//  Created by Stanfield on 9/25/21.
//  Copyright © 2021 Karl Pfister. All rights reserved.
//

import UIKit

/**
 - Setting:
    - Creating a model for the 
 */

class Setting {
    
    let name: String
    let icon: UIImage
    var isOn: Bool
    
    init(name: String, icon: UIImage, isOn: Bool) {
        self.name = name
        self.icon = icon
        self.isOn = isOn
    }
}
