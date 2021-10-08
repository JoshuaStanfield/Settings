//
//  SettingTableViewController.swift
//  Settings
//
//  Created by Stanfield on 10/3/21.
//  Copyright © 2021 Karl Pfister. All rights reserved.
//

import UIKit

class SettingTableViewController: UITableViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return SettingController.shared.settings.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "settingCell", for: indexPath) as? SettingTableViewCell else { return UITableViewCell() }

        ///Get the setting for the tapped row.
        let setting = SettingController.shared.settings[indexPath.row]
        
        cell.delegate = self
        ///Updates each outlet on the custom cell with the correct properties.
        cell.updateViews(setting: setting)

        return cell
    }
}

extension SettingTableViewController: SettingCellDelegate {
    func settingSwitchToggled(cell: SettingTableViewCell) {
        guard let indexPath = tableView.indexPath(for: cell) else { return }
        let setting = SettingController.shared.settings[indexPath.row]
        SettingController.shared.toggleIsOn(setting: setting)
        cell.updateViews(setting: setting)
    }
}
