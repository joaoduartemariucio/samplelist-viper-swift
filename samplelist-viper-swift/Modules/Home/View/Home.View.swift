//
//  Home.View.swift
//  combine-swift
//
//  Created by João Vitor Duarte Mariucio on 01/02/22.
//

import SnapKit
import UIKit

extension Module.Home {

    class View: UIView, ViewCode {

        let tableView: UITableView = {
            let table = UITableView()
            table.separatorStyle = .none
            table.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.95, alpha: 1)
            table.register(Cell.self, forCellReuseIdentifier: Cell.identifier)
            table.translatesAutoresizingMaskIntoConstraints = false
            return table
        }()

        override init(frame: CGRect) {
            super.init(frame: frame)
            applyViewCode()
        }

        required init?(coder: NSCoder) {
            super.init(coder: coder)
            applyViewCode()
        }

        func buildHierarchy() {
            addSubview(tableView)
        }

        func setupConstraints() {
            tableView.snp.makeConstraints { [weak self] make in
                guard let self = self else { return }
                make.edges.equalTo(self)
            }
        }

        func configureViews() {
            backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.95, alpha: 1)
        }
    }
}
