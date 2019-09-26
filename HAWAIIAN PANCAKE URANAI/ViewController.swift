//
//  ViewController.swift
//  HAWAIIAN PANCAKE URANAI
//
//  Created by 弘田朗 on 2019/09/01.
//  Copyright © 2019 a. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let frame = CGRect(x: 0, y: 0, width: 300, height: 50)
        let simpleButton = SimpleButton(frame: frame)
        
        simpleButton.layer.position = CGPoint(x: self.view.frame.width/2, y:self.view.frame.height * 3/4)
        simpleButton.setTitle("占う！", for: UIControl.State.normal)
        simpleButton.backgroundColor = UIColor(red: 0.0, green: 0.502, blue: 1.0, alpha: 1.0)
        simpleButton.addTarget(self, action: #selector(self.nextView(_:)), for: UIControl.Event.touchUpInside)
        self.view.addSubview(simpleButton)
    }
    
    @objc func nextView(_ sender: UIButton) {
        let InputViewController = self.storyboard?.instantiateViewController(withIdentifier: "next") as! InputViewController
        self.present(InputViewController, animated: true, completion: nil)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)


        // Do any additional setup after loading the view.
    }
    
}
