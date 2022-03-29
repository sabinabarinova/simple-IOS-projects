

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player1: AVAudioPlayer = AVAudioPlayer()
    var player2: AVAudioPlayer = AVAudioPlayer()

    
    override func viewDidLoad() {
        super.viewDidLoad()

        let AudioPath1 = Bundle.main.url(forResource: "Baby", withExtension: "mp3")
        player1 = try! AVAudioPlayer(contentsOf: AudioPath1!)
        let AudioPath2 = Bundle.main.url(forResource: "Paparazzi", withExtension: "mp3")
        player2 = try! AVAudioPlayer(contentsOf: AudioPath2!)
    }
    
    
    @IBAction func play(_ sender: UIButton) {
        switch sender.tag {
            case 1:
            player2.currentTime = 0
            player2.stop()
            player1.play()
            break
            case 2:
            player1.currentTime = 0
            player1.stop()
            player2.play()
            break
            default:
                break
            }
        sender.alpha = 0.5
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1 ) {
            UIView.animate(withDuration: 0.1) { // for smoothing the transition
                sender.alpha = 1.0
                
            }
        }
    }
    
    
    @IBAction func pause(_ sender: UIButton) {
        switch sender.tag {
            case 1:
            player1.pause()
            break
            case 2:
            player2.pause()
            break
            default:
                break
            }
        sender.alpha = 0.5

        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1 ) {
            UIView.animate(withDuration: 0.1) { // for smoothing the transition
                sender.alpha = 1.0
                
            }
        }
    }
    
    
    @IBAction func replay(_ sender: UIButton) {
        switch sender.tag {
            case 1:
            player1.currentTime = 0
            break
            case 2:
            player2.currentTime = 0
            break
            default:
                break
            }
        sender.alpha = 0.5

        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1 ) {
            UIView.animate(withDuration: 0.1) { // for smoothing the transition
                sender.alpha = 1.0
                
            }
        }
    }
    
    
    

    

}




