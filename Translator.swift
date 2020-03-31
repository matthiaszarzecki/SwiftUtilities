import Foundation
/**
 Calls the function `NSLocalizedString(key: String, comment: String)` for the
 input textKeywith an empty string as comment. This drastically reduces the
 footprint for getting a translated string.
 - parameter textKey: The Key used to identify a string in Localizable.strings
 - returns: The translated string
 */
func t(_ textKey: String) -> String {
  return NSLocalizedString(textKey, comment: "")
}
