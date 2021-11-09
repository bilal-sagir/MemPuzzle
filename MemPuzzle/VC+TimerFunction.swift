import Foundation

extension ViewController
{
    @objc func timerFunction()
    {
        gameTime += 1
        let minutes = String(gameTime / 60 )
        let seconds = String(format: "%02d", gameTime % 60 )
        timerLabel.text = "\(minutes)\' : \(seconds)\""
    }
}
