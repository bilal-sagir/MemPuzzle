import UIKit

extension ViewController
{
    func makeTiles ()
    {
        tiles = []
        
        let tileCount = 16
        let halfOfTiles = tileCount / 2
        var counter = 0
        
        for i in 1...tileCount
        {
            counter = i
            let tile = Tile()
            
            if counter > halfOfTiles
            {
                counter = i - halfOfTiles
            }
            
            tile.internalNum = counter
            tile.update() // as a test
            tiles.append(tile)
        }
        tiles.shuffle()
    }
}
