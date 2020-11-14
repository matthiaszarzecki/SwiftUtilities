import SwiftUI

extension View {
  func backgroundColor(_ color: Color) -> some View {
    return self.background(Rectangle().foregroundColor(color))
  }

  /// Adds a background-rectangle with a random color, for debugging purposes.
  func coloredDebugBackground() -> some View {
    return backgroundColor(Utilities.randomDebugColor())
  }
}