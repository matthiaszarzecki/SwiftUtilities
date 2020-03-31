extension ClosedRange {
  /**
   Fits an input value to the specified range.
   */
  func clamp(_ value: Bound) -> Bound {
    return self.lowerBound > value
      ? self.lowerBound
      : self.upperBound < value
      ? self.upperBound
      : value
  }
}
