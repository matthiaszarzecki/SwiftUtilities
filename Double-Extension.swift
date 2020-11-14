extension Double {
  /// Rounds a double to a certain number of characters after the floating point
  /// - parameter places: The number of desired characters the floating point. Default is 0
  /// - returns: A rounded double
  mutating func roundToPlaces(_ places: Int = 0) -> Double {
    let roundFactor = Double(places + 1)
    return Double((roundFactor * self).rounded() / roundFactor)
  }

  /// Returns a random floating point number between 0.0 and 1.0, inclusive.
  static var random: Double {
    return Double(arc4random()) / 0xFFFFFFFF
  }
}
