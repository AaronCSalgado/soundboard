//
//  QuizClick.swift
//  quiz
//
//  Created by AARON CORTEZ SALGADO on 9/20/24.
//

import UIKit
import AVFoundation
class QuizClick: UIViewController {
    var Player: AVAudioPlayer?
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    
    func playSound() {
        guard let path = Bundle.main.path(forResource: "clickNew", ofType: "wav") else {
            return }
        let url = URL(fileURLWithPath: path)
        
        do {
            Player = try AVAudioPlayer(contentsOf: url)
            Player?.play()
            
        } catch let error {
            print(error.localizedDescription)
        }
        
    }
    
    @IBAction func click(_ sender: UIButton) {
        playSound()}
    
   
    
    
    }
    
    
    
        
        
    
    
    




