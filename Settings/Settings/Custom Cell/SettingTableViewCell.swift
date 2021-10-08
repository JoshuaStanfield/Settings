//
//  SettingTableViewCell.swift
//  Settings
//
//  Created by Stanfield on 10/8/21.
//  Copyright © 2021 Karl Pfister. All rights reserved.
//

import UIKit

//1) Create the protocol (THE PROTOCOL BOSS)
protocol SettingCellDelegate: AnyObject {
    //1.5) State what the boss can do.
    //What is the boss going to yell out to the employee?
    func settingSwitchToggled(cell: SettingTableViewCell)
}

class SettingTableViewCell: UITableViewCell {
    
    // MARK: - IBOutlets
    @IBOutlet weak var settingIconImageView: UIImageView!
    @IBOutlet weak var settingNameLabel: UILabel!
    @IBOutlet weak var settingSwitch: UISwitch!
    
    //2) Set the delegate - The BOSS needs to know who the employee is (1:1)
    weak var delegate: SettingCellDelegate?
    
    // MARK: - Actions
    @IBAction func settingSwitchToggled(_ sender: Any) {
        //3) Communicate to delegate (employee) instruction
        delegate?.settingSwitchToggled(cell: self)
    }
    
    // MARK: - Helper Functions
    func updateViews(setting: Setting) {
        settingIconImageView.image = setting.icon
        settingNameLabel.text = setting.name
        settingSwitch.isOn = setting.isOn
        if settingSwitch.isOn {
            backgroundColor = .cyan
        } else {
            backgroundColor = .white
            }
        }
    }
