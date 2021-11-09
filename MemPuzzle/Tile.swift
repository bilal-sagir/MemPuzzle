import UIKit

enum TileStatus
{
    case UNKNOWN, FOUND, FLIPPED
}

class Tile : UILabel
{
    var internalNum : Int!
    var status : TileStatus = TileStatus.UNKNOWN
    
    func update ()
    {
        self.font = .systemFont(ofSize: 50,
                                weight: UIFont.Weight.bold)
        self.textAlignment = .center
        //self.text = String(internalNum)
        
        switch status
        {
        case .FLIPPED:
            self.text = String(internalNum)
            self.backgroundColor = .systemOrange
        case .FOUND:
            self.text = "👍"
            self.backgroundColor = .systemGreen
        default:
            self.text = "?"
            self.backgroundColor = .darkGray
        }
    }
}
