import Foundation
import UIKit

extension UILabel {
    func adjustedFontSizeForLabel() -> CGFloat {
        let text: NSMutableAttributedString = NSMutableAttributedString(attributedString: self.attributedText!)
        text.setAttributes([NSAttributedString.Key.font: self.font], range: NSMakeRange(0, text.length))
        let context: NSStringDrawingContext = NSStringDrawingContext()
        context.minimumScaleFactor = self.minimumScaleFactor
        text.boundingRect(with: self.frame.size, options: NSStringDrawingOptions.usesLineFragmentOrigin, context: context)
        let adjustedFontSize: CGFloat = self.font.pointSize * context.actualScaleFactor
        return adjustedFontSize
    }
}