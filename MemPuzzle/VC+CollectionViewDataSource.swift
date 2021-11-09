import UIKit

extension ViewController : UICollectionViewDataSource
{
    func collectionView(_ collectionView: UICollectionView,
                        numberOfItemsInSection section: Int) -> Int
    {
        return tiles.count
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath)
        
        let thisTile = tiles[indexPath.row]
        thisTile.frame = CGRect(x: 2,
                                y: 2,
                                width: cellWidth - 4,
                                height: cellWidth - 4)
        
        thisTile.backgroundColor = .red
        
        if cell.subviews.count > 0
        {
            for any in cell.subviews{ any.removeFromSuperview() }
        }
        
        
        cell.addSubview(thisTile)
        return cell
    }
    
    
}
