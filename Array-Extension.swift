import Foundation

extension Array {
    func randomItem() -> Element? {
        if self.count > 0 {
            let index = Int(arc4random_uniform(UInt32(self.count)))
            return self[index]
        }
        return nil
    }
    
    func increaseIndexWithWrapAroundFrom(_ index: Int) -> Int {
        return index >= self.count - 1 ? 0 : index + 1
    }
    
    func increaseIndexWithWrapAroundFrom(_ index: Int, highestAvailableIndex: Int) -> Int {
        return index >= highestAvailableIndex ? 0 : index + 1
    }
    
    func decreaseIndexWithWrapAroundFrom(_ index: Int) -> Int {
        return index <= 0 ? self.count - 1 : index - 1
    }
    
    func decreaseIndexWithWrapAroundFrom(_ index: Int, highestAvailableIndex: Int) -> Int {
        return index <= 0 ? highestAvailableIndex : index - 1
    }
}