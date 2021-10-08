//
//  SettingController.swift
//  Settings
//
//  Created by Stanfield on 9/25/21.
//  Copyright © 2021 Karl Pfister. All rights reserved.
//

import Foundation

/**
 - ModelController:
   - This class holds the logic necessary to manipulate the model so it is useful to the views.
 */

class SettingController {
    
    ///Shared instance to allow access to the `SettingController`.
    static let shared = SettingController()
    
    //#imageLiteral() will let me access the images like `image literal` would do pre-Xcode 13.
    ///The SOT with mock data. Set the properties and returned an array with the data.
    let settings: [Setting] = {
        let music = Setting(name: "Music", icon: #imageLiteral(resourceName: "iTunes"), isOn: false)
        let apps = Setting(name: "Apps", icon: #imageLiteral(resourceName: "appStore"), isOn: false)
        let books = Setting(name: "Books", icon: #imageLiteral(resourceName: "iBooks"), isOn: true)
        
        return [music, apps, books]
    }()
    
    // MARK: - CRUD Functions
    func toggleIsOn(setting: Setting) {
        ///Get the setting and do the opposite.
        setting.isOn = !setting.isOn
        
        ///Toggles the boolean value to the opposite.
        //setting.isOn.toggle()
    }
}
