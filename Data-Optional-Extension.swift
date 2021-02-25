extension Optional where Wrapped == Data {
  func printJsonFromData() {
    if let unwrappedData = self {
      print("JSON String: \(String(data: unwrappedData, encoding: .utf8) ?? "")")
    } else {
      print("Data did not resolve to JSON!")
    }
  }
}