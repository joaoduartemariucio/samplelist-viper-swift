//
//  Home.View.swift
//  combine-swift
//
//  Created by João Vitor Duarte Mariucio on 01/02/22.
//

import UIKit

extension Module.Home {

    class View: UIView, ViewCode {

        override init(frame: CGRect) {
            super.init(frame: frame)
            applyViewCode()
        }

        required init?(coder: NSCoder) {
            super.init(coder: coder)
            applyViewCode()
        }

        func buildHierarchy() {

        }

        func setupConstraints() {

        }

        func configureViews() {
            backgroundColor = .white
        }
    }
}
