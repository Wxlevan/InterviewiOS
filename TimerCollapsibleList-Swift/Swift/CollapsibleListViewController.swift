//
//  ViewController.swift
//  TimerCollapsibleList-Swift
//
//  Created by Evan Wang on 2022/3/10.
//

import UIKit

class CollapsibleListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    static let cellIndntifier = UITableViewCell.description()
    static let sectionIndntifier = UITableViewCell.description()
    private lazy var listView: UITableView = {
        let tableView = UITableView(frame: self.view.bounds, style: .grouped)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: Self.cellIndntifier)
        tableView.register(UITableViewHeaderFooterView.self, forHeaderFooterViewReuseIdentifier: Self.sectionIndntifier)
        tableView.delegate = self
        tableView.dataSource = self
        return tableView
    }()
    
    private let dataSource = DataSource()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(self.listView)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        self.listView.frame = self.view.bounds
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return dataSource.sections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.sections[section].items.count
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: Self.sectionIndntifier)
        let section = dataSource.sections[section]
        var content = headerView?.defaultContentConfiguration()
        content?.text = section.date.ISO8601Format()
        headerView?.contentConfiguration = content
        return headerView
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Self.cellIndntifier, for: indexPath)
        var content = cell.defaultContentConfiguration()
        let item = dataSource.sections[indexPath.section].items[indexPath.item]
        content.text = item.date.ISO8601Format()
        cell.contentConfiguration = content
        return cell
    }
}

