//
//  Sound1.swift
//  soundboard
//
//  Created by AARON CORTEZ SALGADO on 9/16/24.
//

import UIKit
import AVFoundation


class Sound1: UIViewController {
    var player: AVAudioPlayer?
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        
        
        
        // Do any additional setup after loading the view.
    }
    
    func playSound(whatSound: String) {
        guard let path = Bundle.main.path(forResource: "pop", ofType: "wav") else {
            return }
        let url = URL(fileURLWithPath: path)
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
            
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    @IBAction func pop1(_ sender: UIButton) {
        playSound(whatSound: "pop")
    }
    
    
    
    
    
    func playSound2(whatSound: String) {
        guard let path = Bundle.main.path(forResource: "drums", ofType: "wav") else {
            return }
        let url = URL(fileURLWithPath: path)
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
            
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    @IBAction func Rock(_ sender: UIButton) {
        playSound2(whatSound: "drums")
    }
    
    
    
    func playSound3(whatSound: String) {
        guard let path = Bundle.main.path(forResource: "tune", ofType: "wav") else {
            return }
        let url = URL(fileURLWithPath: path)
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
            
        } catch let error {
            print(error.localizedDescription)
        }
    }
    @IBAction func pop3(_ sender: UIButton) {
        playSound3(whatSound: "tune")
    }
    
    
    
    
}
