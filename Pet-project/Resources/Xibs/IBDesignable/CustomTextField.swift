import UIKit

@IBDesignable
class CustomTextField: UITextField, UITextFieldDelegate {
    
    weak var customDelegate: CustomTextFieldDelegate?
    @IBInspectable var paddingAfterImage: CGFloat = 0.0
    @IBInspectable var padding: CGFloat = 0
    
    @IBInspectable var leftImage: UIImage? {
        didSet {
            setLeftImage()
        }
    }
    
    @IBInspectable var rightImage: UIImage? {
        didSet {
            setRightImage()
        }
    }
    
    @IBInspectable var color: UIColor = .gray {
        didSet {
            setLeftImage()
        }
    }
    
    @IBInspectable var isNeedCornerRadius: Bool = false {
        didSet {
            if isNeedCornerRadius {
                layer.cornerRadius = frame.height / 2
            } else {
                layer.cornerRadius = 0
            }
        }
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        let rect = super.textRect(forBounds: bounds)
        let insets = UIEdgeInsets(top: 0, left: paddingAfterImage, bottom: 0, right: paddingAfterImage)
        return rect.inset(by: insets)
    }

    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        let rect = super.editingRect(forBounds: bounds)
        let insets = UIEdgeInsets(top: 0, left: paddingAfterImage, bottom: 0, right: paddingAfterImage)
        return rect.inset(by: insets)
    }
    
    override func leftViewRect(forBounds bounds: CGRect) -> CGRect {
        var textRect = super.leftViewRect(forBounds: bounds)
        textRect.origin.x += padding
        return textRect
    }
    
    override func rightViewRect(forBounds bounds: CGRect) -> CGRect {
        var textRect = super.rightViewRect(forBounds: bounds)
        textRect.origin.x -= padding
        return textRect
    }
    
}

extension CustomTextField {
    
    func setLeftImage() {
        if let image = leftImage {
            leftViewMode = UITextField.ViewMode.always
            let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
            imageView.contentMode = .scaleAspectFit
            imageView.image = image
            leftView = imageView
            setViewTapGesture(view: leftView!)
        } else {
            leftViewMode = UITextField.ViewMode.never
            leftView = nil
        }
    }
    
    func setRightImage() {
        if let image = rightImage {
            rightViewMode = UITextField.ViewMode.always
            let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
            imageView.contentMode = .scaleAspectFit
            imageView.image = image
            rightView = imageView
            setViewTapGesture(view: rightView!)
        } else {
            rightViewMode = UITextField.ViewMode.never
            rightView = nil
        }
    }
    
    private func setViewTapGesture(view: UIView) {
        let tapImageView = UITapGestureRecognizer(target: self,
                                                  action: #selector(self.onClickView(_:)))
        self.isUserInteractionEnabled = true
        view.isUserInteractionEnabled = true
        view.addGestureRecognizer(tapImageView)
    }
    
    @IBAction func onClickView(_ sender: UIGestureRecognizer) {
        switch sender.view {
        case rightView: customDelegate?.textField(self, onClickRight: rightView as! UIImageView)
        case leftView: customDelegate?.textField(self, onClickLeft: leftView as! UIImageView)
        default: break
        }
    }
    
}
