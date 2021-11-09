import UIKit

extension ViewController:UICollectionViewDelegate
{
    func collectionView(_ collectionView: UICollectionView,
                        didSelectItemAt indexPath: IndexPath)
    {
        let cell = collectionView.cellForItem(at: indexPath)
        let tile = cell!.subviews[0] as! Tile
        tile.status = TileStatus.FLIPPED
        tile.update()
        //print("number selected : \(tile.internalNum ?? 0 )")
    }
}
