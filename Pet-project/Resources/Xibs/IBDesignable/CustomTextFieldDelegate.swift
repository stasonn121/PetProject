//
//  CustomTextFieldDelegate.swift
//  Pet-project
//
//  Created by Станислав Борисов on 06.10.2021.
//

import UIKit

protocol CustomTextFieldDelegate: NSObject {
    func textField(_ textField: CustomTextField, onClickLeft imageView: UIImageView)
    func textField(_ textField: CustomTextField, onClickRight imageView: UIImageView)
}

extension CustomTextFieldDelegate {
    func textField(_ textField: CustomTextField, onClickLeft imageView: UIImageView) {}
    func textField(_ textField: CustomTextField, onClickRight imageView: UIImageView) {}
}
