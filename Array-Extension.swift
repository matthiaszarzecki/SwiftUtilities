import Foundation

extension Array {
    
    /**
     Returns a random item from the Array. If the array is empty nil is returned
     - returns: Entry from array or nil
     */
    func randomItem() -> Element? {
        if self.count > 0 {
            let index = Int(arc4random_uniform(UInt32(self.count)))
            return self[index]
        }
        return nil
    }
    
    /**
     Increases the index of an array by 1. When the index would go out of the array it will be set to the beginning of the array
     - parameter index: The index that will be increased
     - returns: The increased index
     */
    func increaseIndexWithWrapAroundFrom(_ index: Int) -> Int {
        return index >= self.count - 1 ? 0 : index + 1
    }
    
    /**
     Increases the index of an array by 1. When the index would go higher than the set maximum it will be set to the beginning of the array
     - parameters:
        - index: The index that will be increased
        - highestAvailableIndex: The highest number the index can become
     - returns: The increased index
     */
    func increaseIndexWithWrapAroundFrom(_ index: Int, highestAvailableIndex: Int) -> Int {
        return index >= highestAvailableIndex ? 0 : index + 1
    }
    
    /**
     Decreases the index of an array by 1. When the index would go out of the array it will be set to the end of the array
     - parameters index: The index that will be decreased
     - returns: The decreased index
     */
    func decreaseIndexWithWrapAroundFrom(_ index: Int) -> Int {
        return index <= 0 ? self.count - 1 : index - 1
    }
    
    /**
     Decreases the index of an array by 1. When the index would go lower than than 0 it will be set to the maximum index
     - parameters:
        - index: The index that will be decreased
        - highestAvailableIndex: The highest number the index can become
     - returns: The decreased index
     */
    func decreaseIndexWithWrapAroundFrom(_ index: Int, highestAvailableIndex: Int) -> Int {
        return index <= 0 ? highestAvailableIndex : index - 1
    }
}
