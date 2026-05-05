//
//  MoreViewController.swift
//  The Blue Alliance
//
//  Created by Owen Kuo on 5/4/26.
//  Copyright © 2026 The Blue Alliance. All rights reserved.
//

import Foundation
import UIKit

class MoreViewController: TBATableViewController {
    init(
        dependencies: Dependencies
    ) {

        super.init(style: .grouped, dependencies: dependencies)

        title = RootType.more.title
        tabBarItem.image = RootType.more.icon

        hidesBottomBarWhenPushed = false
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        dependencies.reporter.log("More")
    }

    // MARK: - View Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.registerReusableCell(IconTableViewCell.self)
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath)
    -> UITableViewCell
    {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        cell.accessoryType = .disclosureIndicator
        cell.textLabel?.text = "Settings"
        return cell
    }
}
