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
            let basePath : String = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
            let pathComponents = [basePath, "audio.m4a"]
            let audioURL = NSURL.fileURL(withPathComponents: pathComponents)!
        
        // Create settings for the audio recorder
        
            var settings : [String:AnyObject] = [:]
            settings[AVFormatIDKey] = Int(kAudioFormatMPEG4AAC) as AnyObject?
            settings[AVSampleRateKey] = 44100.0 as AnyObject?
            settings[AVNumberOfChannelsKey] = 2 as AnyObject?
            
            
            
        //Create AudioRecorder object
         audioRecorder = try AVAudioRecorder(url: audioURL, settings: settings)
            audioRecorder!.prepareToRecord()
            
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
