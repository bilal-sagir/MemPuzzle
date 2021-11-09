import UIKit

extension ViewController
{
    @IBAction func reset(_ sender: UIButton?)
    {
        timerLabel.backgroundColor = .darkGray
        
        makeTiles()
        gameCollectionView.reloadData()
        layoutCollectionView()
        
        firstTile = nil
        secondTile = nil
        tileFound = []
        aTileIsFlipping = false
        
        gameTime = 0
        
        if gameTimer != nil
        {
            gameTimer.invalidate()
            timerLabel.text = "0\' : 00\""
        }
        
        gameTimer = Timer.scheduledTimer(timeInterval: 1.0,
                                         target: self,
                                         selector: #selector(timerFunction),
                                         userInfo: nil,
                                         repeats: true)
    }
    
}
