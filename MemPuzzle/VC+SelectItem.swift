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
        if firstTile == nil
        {
            firstTile = tile
            firstTile.status = TileStatus.FLIPPED
            firstTile.update()
        }
        else
        {
            secondTile = tile
            secondTile.status = TileStatus.FLIPPED
            secondTile.update()
            Compare()
            
        }
    }
    func Compare()
    {
        print("begin")
    }
}
