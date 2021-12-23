//
//  RegisterView.swift
//  Pet-project
//
//  Created by Станислав Борисов on 26.10.2021.
//

import UIKit

class RegisterView: UIView {
    
    private var loaderView = UIActivityIndicatorView()
    private var loginTextField: CustomTextField = {
        let view = CustomTextField()
        view.paddingAfterImage = 10
        view.padding = 10
        view.leftImage = UIImage(systemName: "mail")
        view.placeholder = "New login"
        view.backgroundColor = .white
        return view
    }()
    
    private var emailTextField: CustomTextField = {
        let view = CustomTextField()
        view.paddingAfterImage = 10
        view.padding = 10
        view.leftImage = UIImage(systemName: "lock")
        view.placeholder = "New password"
        view.backgroundColor = .white
        return view
    }()
    
    private var segmentControl = UISegmentedControl()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupLayouts()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupLayouts()
    }
    
    override func draw(_ rect: CGRect) {
        loginTextField.isNeedCornerRadius = true
        emailTextField.isNeedCornerRadius = true
    }
    
    private func setupLayouts() {
        backgroundColor = Colors.yellowBackground.value
        
        self.addSubview(loginTextField)
        loginTextField.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().offset(-150)
            make.trailing.equalToSuperview().offset(-20)
            make.leading.equalToSuperview().offset(20)
            make.height.equalTo(44)
        }
        
        self.addSubview(emailTextField)
        emailTextField.snp.makeConstraints { make in
            make.top.equalTo(loginTextField.snp.bottom).offset(15)
            make.trailing.equalToSuperview().offset(-20)
            make.leading.equalToSuperview().offset(20)
            make.height.equalTo(44)
        }
        
        self.addSubview(segmentControl)
        
        self.addSubview(loaderView)
        loaderView.style = .large
        loaderView.stopAnimating()
        loaderView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}
