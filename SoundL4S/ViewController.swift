//
//  ViewController.swift
//  SoundL4S
//
//  Created by esaki yuki on 2020/09/20.
//  Copyright © 2020 esaki yuKki. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet var drumButton: UIButton!
    @IBOutlet var pianoButton: UIButton!
    @IBOutlet var guitarButton: UIButton!
    
    
    let drumSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "drumSound")!.data)
    let pianoSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "pianoSound")!.data)
    let guitarSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "guitarSound")!.data)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func touchDownDrumButton() {
        //ドラムの画像切り替え
        drumButton.setImage(UIImage(named: "drumPlayingImage"), for: .normal)
        //ドラムの音を巻き戻す
        drumSoundPlayer.currentTime = 0
        //再生
        drumSoundPlayer.play()
    }
    
    @IBAction func touchUpDrumButton() {
        drumButton.setImage(UIImage(named: "drumImage"), for: .normal)
    }
    
    @IBAction func touchDownPianoButton() {
        //ドラムの画像切り替え
        pianoButton.setImage(UIImage(named: "pianoPlayingImage"), for: .normal)
        //ドラムの音を巻き戻す
        pianoSoundPlayer.currentTime = 0
        //再生
        pianoSoundPlayer.play()
    }
    
    @IBAction func touchUpPianoButton() {
        pianoButton.setImage(UIImage(named: "pianoImage"), for: .normal)
    }
    
    @IBAction func touchDownGuitarButton() {
        //ドラムの画像切り替え
        guitarButton.setImage(UIImage(named: "guitarPlayingImage"), for: .normal)
        //ドラムの音を巻き戻す
        guitarSoundPlayer.currentTime = 0
        //再生
        guitarSoundPlayer.play()
    }
    
    @IBAction func touchUpGuitarButton() {
        guitarButton.setImage(UIImage(named: "guitarImage"), for: .normal)
    }


}

