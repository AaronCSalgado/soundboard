

import UIKit

class Setting: UIViewController {

    @IBOutlet weak var Volume: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    @IBAction func VolumeControl(_ sender: UISlider) {
        let v = Volume.value
        print(v)
        player?.volume = v
        
    }
    
   

}
