import Foundation

extension Sequence where Iterator.Element == NSMutableAttributedString {
  /// Joins an array of NSMutableAttributedString's to a single
  /// NSMutableAttributedString with the specified separator.
  func joined(with separator: NSMutableAttributedString) -> NSMutableAttributedString {
    return self.reduce(NSMutableAttributedString()) { reduce, element in
      if reduce.length > 0 {
        reduce.append(separator)
      }
      reduce.append(element)
      return reduce
    }
  }

  /// Joins an array of NSMutableAttributedString's to a single
  /// NSMutableAttributedString with the specified separator.
  func joined(with separator: String = "") -> NSMutableAttributedString {
    return self.joined(with: NSMutableAttributedString(string: separator))
  }
}
