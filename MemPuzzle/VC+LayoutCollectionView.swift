import UIKit

extension ViewController
{
    
    func layoutCollectionView()
    {
        
        self.view.layoutIfNeeded()
        self.gameCollectionView.layoutIfNeeded()
        
        cellWidth = gameCollectionView.bounds.width / CGFloat(4)
        
        let myLayout = UICollectionViewFlowLayout()
        myLayout.itemSize = CGSize(width: cellWidth,
                                   height: cellWidth)
        myLayout.sectionInset = UIEdgeInsets.zero
        myLayout.minimumInteritemSpacing = 0.0
        myLayout.minimumLineSpacing = 0.0
        
        
        gameCollectionView.collectionViewLayout = myLayout
        gameCollectionView.reloadData()

    }
}
