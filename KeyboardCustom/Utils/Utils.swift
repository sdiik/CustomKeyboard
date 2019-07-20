//
//  Utils.swift
//  KeyboardCustom
//
//  Created by ahmad shiddiq on 20/07/19.
//  Copyright © 2019 ahmad shiddiq. All rights reserved.
//

import Foundation
import UIKit


extension UIButton {
     static func  btnCustom(text: String) -> UIButton{
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle(text, for: .normal)
        btn.titleLabel?.textAlignment = .center
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 24)
        return btn
    }
}

extension UIStackView {
    static func layoutstackview() -> UIStackView {
        let layout = UIStackView()
        layout.axis = .horizontal
        layout.distribution = .equalSpacing
        layout.alignment = .center
        layout.translatesAutoresizingMaskIntoConstraints = false
        layout.spacing = 2
        return layout
    }
}
