import SwiftUI

extension View {
  /// Adds a background-rectangle with a random color, for debugging purposes.
  func coloredDebugBackground() -> some View {
    return backgroundColor(Utilities.randomDebugColor())
  }
}