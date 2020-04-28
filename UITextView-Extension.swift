import Foundation
import UIKit

extension UITextView {
  /**
   Checks if a string contains another string regardless of case.
  */
  func getFittingSize() -> CGRect {
    let contentSize = self.sizeThatFits(self.bounds.size)
    let viewOrigin = self.frame.origin
    let newViewRect = CGRect(x: viewOrigin.x, y: viewOrigin.y, width: contentSize.width, height: contentSize.height)
    return newViewRect
  }
}
