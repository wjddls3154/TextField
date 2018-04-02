//
//  ViewController.swift
//  TextField
//
//  Created by D7702_10 on 2018. 3. 19..
//  Copyright © 2018년 jik. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{

    @IBOutlet weak var myTextField: UITextField!
    @IBOutlet weak var myLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //delegate 연결
        myTextField.delegate = self
        myTextField.clearButtonMode = UITextFieldViewMode.always
        myTextField.placeholder = "입력하세요!"
    }

    @IBAction func buttonPressed(_ sender: Any) {
        myLabel.text = myTextField.text
        myTextField.text = ""
        myTextField.resignFirstResponder()
        //버튼을 실행시키면 키보드를 내린다.
    }
    
    //UItextFieldDelegate method
    //called when 'return' key pressed. return No to ignore.
    func  textFieldShouldReturn(_ textField: UITextField) ->
        Bool {
        print("I pressed return key")
        //버튼을 실행시키면 키보드를내림
        myTextField.resignFirstResponder()
        return true
    }
    
    
    
    
}

