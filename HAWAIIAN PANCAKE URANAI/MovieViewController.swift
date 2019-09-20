//
//  PlumeriaViewController.swift
//  HAWAIIAN PANCAKE URANAI
//
//  Created by 弘田朗 on 2019/09/03.
//  Copyright © 2019 a. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class MovieViewController: UIViewController {
    
    var Plumeria4Result:String? = ""
    var Plumeria3Result:String? = ""
    var Plumeria2Result:String? = ""
    
    var player: AVPlayer!
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
            
        if Plumeria4Result == "Plumeria4Result"
        {
        if let path = Bundle.main.path(forResource: "Plumeria4" , ofType: "mp4")
        {
            let video = AVPlayer(url: URL(fileURLWithPath: path))
            let videoPlayer = AVPlayerViewController()
            videoPlayer.player = video
            
            videoPlayer.showsPlaybackControls = false
            
            present(videoPlayer, animated: true, completion:
                {
                    video.play()
            })
        }
            
        } else if Plumeria3Result == "Plumeria3Result" {
            
            if let path = Bundle.main.path(forResource: "Plumeria3" , ofType: "mp4")
            {
                let video = AVPlayer(url: URL(fileURLWithPath: path))
                let videoPlayer = AVPlayerViewController()
                videoPlayer.player = video
                
                videoPlayer.showsPlaybackControls = false
                
                present(videoPlayer, animated: true, completion:
                    {
                        video.play()
                })
            }
        } else {
            
            if let path = Bundle.main.path(forResource: "Plumeria2" , ofType: "mp4")
            {
                let video = AVPlayer(url: URL(fileURLWithPath: path))
                let videoPlayer = AVPlayerViewController()
                videoPlayer.player = video
                
                videoPlayer.showsPlaybackControls = false
                
                present(videoPlayer, animated: true, completion:
                    {
                        video.play()
                })
            }
    }
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(self.movieEnd),
                                               name: NSNotification.Name.AVPlayerItemDidPlayToEndTime,
                                               object: nil)
    }
    
    @objc func movieEnd(note:NSNotification) {
        self.dismiss(animated: true)
        let ResultViewController = self.storyboard?.instantiateViewController(withIdentifier: "last") as! ResultViewController
        self.present(ResultViewController, animated: false, completion: nil)
        }
    
}
