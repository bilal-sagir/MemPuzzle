import Foundation

extension ViewController
{
    func DidWeWon ()
    {
        if tiles.count == tileFound.count
        {
            gameTimer.invalidate()
            timerLabel.text = "You Won in  \(gameTime/60)\':\(gameTime%60)\""
            timerLabel.backgroundColor = .systemGreen
        }
    }
    
}
