import UIKit

@IBDesignable
class CustomTextField: UITextField {

    @IBInspectable var paddingAfterImage: CGFloat = 0.0
    @IBInspectable var leftPadding: CGFloat = 0
    
    @IBInspectable var leftImage: UIImage? {
        didSet {
            updateView()
        }
    }
    
    @IBInspectable var color: UIColor = .gray {
        didSet {
            updateView()
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
        textRect.origin.x += leftPadding
        return textRect
    }
    
    func updateView() {
        if let image = leftImage {
            leftViewMode = UITextField.ViewMode.always
            let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
            imageView.contentMode = .scaleAspectFit
            imageView.image = image
            leftView = imageView
        } else {
            leftViewMode = UITextField.ViewMode.never
            leftView = nil
        }
    }

}
