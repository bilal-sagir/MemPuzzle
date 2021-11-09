import UIKit

extension ViewController
{
    @IBAction func GameMode(_ sender: UISegmentedControl)
    {
        if sender.selectedSegmentIndex == 0
        {
            gameMode = 4
        }
        else
        {
            gameMode = 6
            
        }
        self.reset(nil)
    }
}
