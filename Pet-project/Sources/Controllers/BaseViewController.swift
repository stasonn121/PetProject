//
//  BaseViewController.swift
//  Pet-project
//
//  Created by Станислав Борисов on 03.10.2021.
//

import UIKit

struct AlertModel {
    var title: String?
    var message: String?
}

class BaseViewController: UIViewController {
    func showAlert(alertModel: AlertModel, okAlertAction: ((UIAlertAction) -> Void)? = nil) {
        let alert = UIAlertController(title: alertModel.title,
                                      message: alertModel.message,
                                      preferredStyle: .alert)
        let actionOk = UIAlertAction(title: "Ok", style: .default, handler: okAlertAction)
        alert.addAction(actionOk)
        present(alert, animated: true, completion: nil)
    }
}
