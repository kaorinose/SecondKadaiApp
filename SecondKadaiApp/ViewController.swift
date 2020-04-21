//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by 0003 QBS on 2020/04/21.
//  Copyright © 2020 0003.kaori. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // 画面のtextfieldを、StoryboardでこのViewControllerにIBOutletとして接続しておく
    @IBOutlet weak var textfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // segueから遷移先のResultViewControllerを取得する
        let resultViewController:ResultViewController = segue.destination as! ResultViewController
        // 遷移先のResultViewControllerで宣言しているtextに値を代入して渡す
        resultViewController.text = textfield.text!
    }
    
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
        // 他の画面から segue を使って戻ってきた時に呼ばれる
    }
}

