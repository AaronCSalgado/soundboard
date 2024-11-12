//
//  soundPlayer.swift
//  Sound Board Review
//
//  Created by Derek Fitzer on 9/17/24.
//


// do not add to swift project
import Foundation


// add above the ViewController
import AVFoundation

// add above viewDidLoad
var player: AVAudioPlayer?

//  add below viewDidLoad
func playSound(whatSound: String) {
    guard let path = Bundle.main.path(forResource: whatSound, ofType: "wav") else {
        return }
    let url = URL(fileURLWithPath: path)

    do {
        player = try AVAudioPlayer(contentsOf: url)
        player?.play()
        
    } catch let error {
        print(error.localizedDescription)
    }
}
