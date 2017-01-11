//
//  SoundViewController.swift
//  Sound Board
//
//  Created by Mark Krawczuk on 1/10/17.
//  Copyright © 2017 Mark Krawczuk. All rights reserved.
//

import UIKit
import AVFoundation

class SoundViewController: UIViewController {

    
    @IBOutlet weak var recordButton: UIButton!
    
    
    @IBOutlet weak var nameTextField: UITextField!
    
    
    var audioRecorder : AVAudioRecorder? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupRecorder()

        // Do any additional setup after loading the view.
    }

    func setupRecorder(){
        do {
        // Create and audio session

        let session = AVAudioSession.sharedInstance()
       try session.setCategory(AVAudioSessionCategoryPlayAndRecord)
       try session.overrideOutputAudioPort(.speaker)
       try session.setActive(true)
        
        // Create URL for file
        
        
        // Create settings for the audio recorder
        
        
        //Create AudioRecorder object
        audioRecorder = AVAudioRecorder(url: URL, settings: <#T##[String : Any]#>)
        } catch let error as NSError {
        
            print(error)
        
        }
    }
        
    
    @IBAction func recordTapped(_ sender: Any) {
    }

    @IBAction func playTapped(_ sender: Any) {
    }

    @IBAction func addTapped(_ sender: Any) {
    }
    
    
}
