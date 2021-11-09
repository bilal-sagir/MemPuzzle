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
        self.font = .systemFont(ofSize: 44,
                                weight: UIFont.Weight.bold)
        self.textAlignment = .center
        //self.text = String(internalNum)
        
        switch status
        {
        case .FLIPPED:
            
            UIView.transition(with: self,
                              duration: 0.5,
                              options: UIView.AnimationOptions.transitionFlipFromLeft,
                              animations:
                                {
                self.text = String(self.internalNum)
                self.backgroundColor = .systemOrange
            })
        case .FOUND:
            
            UIView.transition(with: self,
                              duration: 0.5,
                              options: UIView.AnimationOptions.transitionFlipFromLeft,
                              animations:
                                {
                self.text = "👍"
                self.backgroundColor = .systemGreen
            })
            

        default:
            
            UIView.transition(with: self,
                              duration: 0.5,
                              options: UIView.AnimationOptions.transitionFlipFromRight,
                              animations:
                                {
                
                self.text = "?"
                self.backgroundColor = .darkGray
            })
            
        }
    }
}
