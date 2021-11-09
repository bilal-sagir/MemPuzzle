import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var gameCollectionView: UICollectionView!
    @IBOutlet weak var timerLabel: UILabel!
    
    var tiles : Array<Tile> = []
    var tileFound : Array<Tile> = []
    
    var cellWidth:CGFloat = 0.0
    
    var firstTile : Tile!
    var secondTile : Tile!
    
    var aTileIsFlipping = false
    
    var gameTime : Int = 0
    var gameTimer : Timer!

    var gameMode : Int = 4
}




