import Foundation
import UIKit

extension UITextView {
  /**
   *  Returns a CGRect with the correct size to fit the contents.
   */
  func getFittingSizeAsCGRect() -> CGRect {
    let contentSize = self.sizeThatFits(self.bounds.size)
    let viewOrigin = self.frame.origin
    let newViewRect = CGRect(x: viewOrigin.x, y: viewOrigin.y, width: contentSize.width, height: contentSize.height)
    return newViewRect
  }

  /**
   *  Returns a CGFloat with the correct height to fit the contents.
   */
  func getFittingHeight() -> CGFloat {
    let contentSize = self.sizeThatFits(self.bounds.size)
    return contentSize.height
  }
}
