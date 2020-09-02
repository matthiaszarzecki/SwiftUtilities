extension String {
  /// Creates and returns a random string filled with letters and numbers.
  /// If a length <= 0 is specified an empty string is returned.
  /// - Parameter withLength: The length of the string. Default is 6 characters
  /// - Returns: A Random string of length *withLength*
  static func random(withLength length: Int = 6) -> String {
    guard length > 0 else {
      return ""
    }

    let letters: NSString = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
    let len = UInt32(letters.length)
    var randomString = ""

    for _ in 0..<length {
      let rand = arc4random_uniform(len)
      var nextChar = letters.character(at: Int(rand))
      randomString += NSString(characters: &nextChar, length: 1) as String
    }
    return randomString
  }
  
  /// Checks if a string contains another string regardless of case.
  func containsIgnoringCase(_ input: String) -> Bool {
    return self.range(of: input, options: .caseInsensitive) != nil
  }
}
