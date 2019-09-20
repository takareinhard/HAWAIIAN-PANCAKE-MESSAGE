//
//  AvViewController.swift
//  HAWAIIAN PANCAKE URANAI
//
//  Created by 弘田朗 on 2019/09/15.
//  Copyright © 2019 a. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class AvViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    var name:String? = ""
    var gender:String? = ""
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //次のページの情報を取得する
        //次のページはOmikuziViewController Classなので、それに合わせてas!でダウンキャストする
        let ResultViewController = segue.destination as! ResultViewController
        //nilチェックが通ったら、次のページのnameに、値を代入する
        ResultViewController.name = name
    }
    
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//        playVideo()
//    }
//    
//    private func playVideo() {
//        
//    
//        guard let path = Bundle.main.path(forResource: "Plumeria4", ofType:"mov") else {
//            debugPrint("Plumeria4.mov not found")
//            return
//        }
//        
//        let player = AVPlayer(url: URL(fileURLWithPath: path))
//        let playerController = AVPlayerViewController()
//        playerController.player = player
//        present(playerController, animated: true) {
//            player.play()
//        
//        }
//    }
}


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

