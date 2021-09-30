//
//  SignUpViewController.swift
//  ZackflixApp
//
//  Created by 박근보 on 2021/09/30.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet var signUpButton: UIButton!
    @IBOutlet var passwordText: UITextField!
    @IBOutlet var nicknameText: UITextField!
    @IBOutlet var whereText: UITextField!
    @IBOutlet var recommendText: UITextField!
    
    @IBOutlet var emailText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailText.attributedPlaceholder = NSAttributedString(string: "이메일 주소 또는 전화번호", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        passwordText.attributedPlaceholder = NSAttributedString(string: "비밀번호", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        nicknameText.attributedPlaceholder = NSAttributedString(string: "닉네임", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        whereText.attributedPlaceholder = NSAttributedString(string: "위치", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        recommendText.attributedPlaceholder = NSAttributedString(string: "추천 코드 입력", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        
        
    
        signUpButton.layer.cornerRadius = 7
        
        
        
      
    }
    

}
