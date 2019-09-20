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

class PlumeriaViewController: UIViewController {

    var Plumeria4Result:String? = ""
    var Plumeria3Result:String? = ""
    var Plumeria2Result:String? = ""

    var player: AVPlayer!
    
    @IBAction func Plumeria4Result(_ sender: Any) {
        
    performSegue(withIdentifier: "ToMovie4", sender: "first")
        
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
}

    

    @IBAction func Plumeria3Result(_ sender: Any) {
        
    performSegue(withIdentifier: "ToMovie3", sender: "second")
        
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
}

    @IBAction func Prumeria2Result(_ sender: Any) {
        
    self.performSegue(withIdentifier: "ToMovie2", sender: nil)
        
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
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        NotificationCenter.default.addObserver(self,
    selector: #selector(self.movieEnd),
    name: NSNotification.Name.AVPlayerItemDidPlayToEndTime,
    object: nil)
 }

    @objc func movieEnd(note:NSNotification) {
        self.dismiss(animated: false)
        let ResultViewController = self.storyboard?.instantiateViewController(withIdentifier: "last") as! ResultViewController
        self.present(ResultViewController, animated: false, completion: nil)
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "ToMovie4" {
            print("1")
             let svc = segue.destination as! MovieViewController
             svc.Plumeria4Result = "Plumeria4Result"
        }
        
        if segue.identifier == "ToMovie3" {
            print("2")
            let svc = segue.destination as! MovieViewController
            svc.Plumeria3Result = "Plumeria3Result"
        }
        

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
}
