//
//  PlayerViewController.swift
//  NasdaqTV
//
//  Created by Ramapriya Ranganath on 7/12/17.
//  Copyright © 2017 nasdaq. All rights reserved.
//

import Foundation
import UIKit
import AVKit

class PlayerViewController: AVPlayerViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupVideo()
    }
    
    
    func setupVideo() {
    
        let videoDetails = selectedMovie
        
        let videoId = videoDetails?.videoId!
        SSYoutubeParser.h264videosWithYoutubeID(videoId!) { (videoDictionary) -> Void in
            //let videoSmallURL = videoDictionary["small"]
            let videoMediumURL = videoDictionary["medium"]
            //let videoHD720URL = videoDictionary["hd720"]
            
            if let urlStr = videoMediumURL {
                if let playerItem:AVPlayerItem = AVPlayerItem(url: URL(string: urlStr)!) {
                    self.player = AVPlayer(playerItem: playerItem)
                    self.player?.play()
                }
            }
        }
    }
}

