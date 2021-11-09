import UIKit

extension ViewController
{
    override func viewDidLoad()
    {
        super.viewDidLoad()
        makeTiles()
        layoutCollectionView()
        
        timerLabel.text = "0\' : 00\""
        gameTimer = Timer.scheduledTimer(timeInterval: 1.0,
                                         target: self,
                                         selector: #selector(timerFunction),
                                         userInfo: nil,
                                         repeats: true)
    }
    
    @objc func timerFunction()
    {
        gameTime += 1
        let minutes = String(gameTime / 60 )
        let seconds = String(format: "%02d", gameTime % 60 )
        timerLabel.text = "\(minutes)\' : \(seconds)\""
    }
}
