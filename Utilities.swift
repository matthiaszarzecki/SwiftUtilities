import Foundation

class Utilities {
    
    /**
     Prints out the names of all available fonts
     */
    static func printAllFontNames() {
        for family in UIFont.familyNames.sorted() {
            let names = UIFont.fontNames(forFamilyName: family)
            print("Family: \(family) Font Names: \(names)")
        }
    }
    
    /**
     Return true if the current device is an iPhone X, Xr, Xs or Xs Max
     - returns: True or false
     */
    static func isIPhoneXFamily() -> Bool {
        let heightIPhoneXr: CGFloat = 1792
        let heightIPhoneXsAndX: CGFloat = 2436
        let heightIPhoneXsMax: CGFloat = 2688
        let screenSizes = [heightIPhoneXr, heightIPhoneXsAndX, heightIPhoneXsMax]
        return screenSizes.contains(UIScreen.main.nativeBounds.height)
    }
}
