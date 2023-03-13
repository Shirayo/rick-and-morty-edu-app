//
//  UIView + Utils.swift
//  rick_and_morty_edu_app
//
//  Created by Shirayo on 13.03.2023.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach {
            addSubview($0)
        }
    }
}
