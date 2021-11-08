import UIKit

class Tile : UILabel
{
    var internalNum : Int!
    
    func update ()
    {
        self.font = .systemFont(ofSize: 50,
                                weight: UIFont.Weight.bold)
        self.textAlignment = .center
        self.text = String(internalNum)
    }
}
