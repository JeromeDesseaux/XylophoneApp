//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController{
    
    var notePlayer : AVAudioPlayer?
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func notePressed(_ sender: UIButton) {
        let tag : Int = sender.tag
        playNote(xylophoneNoteIndex: tag)
    }
    
    func playNote(xylophoneNoteIndex: Int) {
        do {
            if let path = Bundle.main.path(forResource: "note\(xylophoneNoteIndex)", ofType: "wav") {
                notePlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
                notePlayer?.play()
            }else{
                print("Can't find the given file")
            }
            
        }catch let error {
            print(error)
        }
    }
    
  

}

