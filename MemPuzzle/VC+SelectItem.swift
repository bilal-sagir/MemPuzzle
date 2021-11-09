import UIKit

extension ViewController:UICollectionViewDelegate
{
    func collectionView(_ collectionView: UICollectionView,
                        didSelectItemAt indexPath: IndexPath)
    {
        let cell = collectionView.cellForItem(at: indexPath)
        let tile = cell!.subviews[0] as! Tile
        //tile.status = TileStatus.FLIPPED
        //tile.update()
        //print("number selected : \(tile.internalNum ?? 0 )")
        
        if tileFound.contains(tile) || aTileIsFlipping
        {
            return
        }
        
        if firstTile != nil
        {
            if tile == firstTile
            {
                return
            }
        }
        
        if firstTile == nil
        {
            firstTile = tile
            firstTile.status = TileStatus.FLIPPED
            firstTile.update()
            aTileIsFlipping = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5)
            {
                self.aTileIsFlipping = false
            }
        }
        else
        {
            secondTile = tile
            secondTile.status = TileStatus.FLIPPED
            secondTile.update()
            aTileIsFlipping = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5)
            {
                self.aTileIsFlipping = false
                self.Compare()
            }
            
        }
    }
    func Compare()
    {
        if firstTile.internalNum == secondTile.internalNum
        { //found
            firstTile.status = TileStatus.FOUND
            secondTile.status = TileStatus.FOUND
            
            tileFound.append(firstTile)
            tileFound.append(secondTile)

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
