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

    /**
     Takes a percentage-string formatted `"60%"` and turns it into a percentage-double `0.6`
     - parameter capacity: A String describing a percentage, formatted `"60%"`
     - returns: A Double describing a percentage, e.g. `0.6`
     */
    static func getPercentageDoubleFromPercentageString(_ capacity: String) -> Double {
        let numberWithoutPercentagePoint = capacity.dropLast()
        let capacityAsDouble = Double(numberWithoutPercentagePoint)
        let capacityAsDoublePercentage = capacityAsDouble! / 100
        return capacityAsDoublePercentage
    }
    
    /**
     Calculates the height a label would need to have to fit the specified text in the specified font and size
     */
    static func getHeightForView(text: String, font: UIFont, width: CGFloat) -> CGFloat {
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: width, height: CGFloat.greatestFiniteMagnitude))
        label.numberOfLines = 0
        label.lineBreakMode = NSLineBreakMode.byWordWrapping
        label.font = font
        label.text = text
        label.sizeToFit()
        return label.frame.height
    }
}
