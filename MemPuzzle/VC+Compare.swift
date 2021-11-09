import Foundation

extension ViewController
{
    func Compare()
    {
        if firstTile.internalNum == secondTile.internalNum
        { //found
            firstTile.status = TileStatus.FOUND
            secondTile.status = TileStatus.FOUND
            
            tileFound.append(firstTile)
            tileFound.append(secondTile)
            DidWeWon()
        }
        else
        {
            firstTile.status = TileStatus.UNKNOWN
            secondTile.status = TileStatus.UNKNOWN
        }
        firstTile.update()
        secondTile.update()
        firstTile = nil
        secondTile = nil
    }
}
