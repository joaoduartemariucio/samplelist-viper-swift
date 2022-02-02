//
//  Home.View.Cell.swift
//  combine-swift
//
//  Created by João Vitor Duarte Mariucio on 02/02/22.
//

import SnapKit
import UIKit

extension Module.Home.View {

    class Cell: UITableViewCell, ViewCode {

        static let identifier = "Home.View.Cell"

        let fillView = UIView()

        let mainStack: UIStackView = {
            let stack = UIStackView()
            stack.axis = .vertical
            stack.spacing = 8
            stack.layoutMargins = UIEdgeInsets(top: 12, left: 42, bottom: 12, right: 12)
            stack.isLayoutMarginsRelativeArrangement = true
            return stack
        }()

        let titleLabel: UILabel = {
            let label = UILabel()
            label.numberOfLines = 0
            label.font = UIFont.boldSystemFont(ofSize: 18)
            return label
        }()

        let descriptionLabel: UILabel = {
            let label = UILabel()
            label.numberOfLines = 0
            label.font = UIFont.systemFont(ofSize: 14)
            return label
        }()

        let priorityView = UIView()


        override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
            super.init(style: style, reuseIdentifier: reuseIdentifier)
            applyViewCode()
        }

        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }

        func buildHierarchy() {
            mainStack.addArrangedSubview(titleLabel)
            mainStack.addArrangedSubview(descriptionLabel)
            fillView.addSubview(mainStack)
            fillView.addSubview(priorityView)
            contentView.addSubview(fillView)
        }

        func setupConstraints() {
            fillView.snp.makeConstraints { make in
                make.edges.equalToSuperview().inset(UIEdgeInsets(top: 12, left: 18, bottom: 0, right: 18))
            }
            mainStack.snp.makeConstraints { make in
                make.edges.equalToSuperview()
            }
            priorityView.snp.makeConstraints { make in
                make.centerY.equalTo(titleLabel)
                make.leading.equalTo(fillView).offset(12)
                make.width.equalTo(18)
                make.height.equalTo(12)
            }
        }

        func configureViews() {
            selectionStyle = .none
            priorityView.layer.cornerRadius = 4
            contentView.backgroundColor = .clear
            backgroundColor = .clear
            fillView.clipsToBounds = false
            fillView.layer.cornerRadius = 11
            fillView.backgroundColor = .white
        }

        func setupPriority(_ priority: Module.Home.Entity.Priority) {
            switch priority {
            case .low:
                priorityView.backgroundColor = .gray
            case .medium:
                priorityView.backgroundColor = .yellow
            case .high:
                priorityView.backgroundColor = .red
            }
        }
    }
}
