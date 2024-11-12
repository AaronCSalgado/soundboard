//
//  ViewController.swift
//  soundboard
//
//  Created by AARON CORTEZ SALGADO on 9/16/24.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {
    var player: AVAudioPlayer?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        func playSound(whatSound: String) {
            guard let path = Bundle.main.path(forResource: "classical-rock", ofType: "mp3") else {
                return }
            let url = URL(fileURLWithPath: path)
            
            do {
                player = try AVAudioPlayer(contentsOf: url)
                player?.play()
                
            } catch let error {
                print(error.localizedDescription)
            }
        }
    }
    @IBAction func rockUp(_ sender: UIButton) {
        playSound(whatSound: "classical-rock")
    }
    
    
    
    func playSound2(whatSound: String) {
        guard let path = Bundle.main.path(forResource: "Stolen Dance", ofType: "mp3") else {
            return }
        let url = URL(fileURLWithPath: path)
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
            
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    @IBAction func Stolen(_ sender: UIButton) {
        playSound2(whatSound: "Stolen Dance")
    }
    
    
    
    func playSound3(whatSound: String) {
        guard let path = Bundle.main.path(forResource: "Just The Two Of Us", ofType: "mp3") else {
            return }
        let url = URL(fileURLWithPath: path)
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
            
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    @IBAction func TwoOfUs(_ sender: UIButton) {
        playSound3(whatSound: "Just The Two Of Us")}
    
    
    @IBAction func Stop(_ sender: UIButton) {
        player?.stop()
    }
    
    
    
}

