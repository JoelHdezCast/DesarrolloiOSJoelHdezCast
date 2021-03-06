//
//  VideoVC.swift
//  actividad13_JHC
//
//  Created by Francisco Hernandez Ayala on 03/05/21.
//

import UIKit
import AVKit
import AVFoundation

class VideoVC: AVPlayerViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let ligaVideo = "https://www.youtube.com/embed/y1dbbrfekAM?controls=0"
        
        let urlvideo = URL(string: ligaVideo)
        
       if let urlvideo = urlvideo{
            let asset = AVAsset(url: urlvideo)
            let item = AVPlayerItem(asset: asset)
            let miPlayer = AVPlayer(playerItem: item)
            
            self.player = miPlayer
            miPlayer.play()
        }
    }

}
