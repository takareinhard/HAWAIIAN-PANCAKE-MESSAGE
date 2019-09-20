//
//  InputViewController.swift
//  HAWAIIAN PANCAKE URANAI
//
//  Created by 弘田朗 on 2019/09/03.
//  Copyright © 2019 a. All rights reserved.
//

import UIKit

class InputViewController: UIViewController {

    

    @IBOutlet weak var textField: UITextField!
    
    let singleton :Singleton =  Singleton.sharedInstance
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func tappedButton(_ sender: UIButton) {
            
        Singleton.sharedInstance.title = textField.text
        
        print(Singleton.sharedInstance.title!)
    }
}
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//
//        //次のページの情報を取得する
//        //次のページはOmikuziViewController Classなので、それに合わせてas!でダウンキャストする
//        let PlumeriaViewController = segue.destination as! PlumeriaViewController
//
//        //1ページ目の名前のtextFieldの値にnilが入っていないかチェックをする
//        if let name = name.text {
//            //nilチェックが通ったら、次のページのnameに、値を代入する
//            PlumeriaViewController.name = name
//        }
//
//
//    }
