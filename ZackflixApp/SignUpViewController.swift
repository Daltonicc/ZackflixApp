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
    @IBOutlet var jackflixSwitch: UISwitch!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailText.attributedPlaceholder = NSAttributedString(string: "이메일 주소 또는 전화번호", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        emailText.keyboardType = .emailAddress
        
        passwordText.attributedPlaceholder = NSAttributedString(string: "비밀번호", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        passwordText.keyboardType = .numberPad
        
        nicknameText.attributedPlaceholder = NSAttributedString(string: "닉네임", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        
        
        whereText.attributedPlaceholder = NSAttributedString(string: "위치", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        
        
        recommendText.attributedPlaceholder = NSAttributedString(string: "추천 코드 입력", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        
        
    
        signUpButton.layer.cornerRadius = 7
        signUpButton.setTitle("회원가입", for: .normal)
        signUpButton.setTitleColor(UIColor.black, for: .normal)
        signUpButton.backgroundColor = .white
        
        jackflixSwitch.setOn(true, animated: true)
        jackflixSwitch.onTintColor = .systemRed
        jackflixSwitch.thumbTintColor = .white
        
    }
    
    @IBAction func downGesture(_ sender: UITapGestureRecognizer) {
        
        view.endEditing(true)
        
    }
    @IBAction func clickedSwitch(_ sender: UISwitch) {
        if jackflixSwitch.isOn {
            nicknameText.isHidden = false
            whereText.isHidden = false
            recommendText.isHidden = false
        } else {
            nicknameText.isHidden = true
            whereText.isHidden = true
            recommendText.isHidden = true
        }
        
    }
    
    @IBAction func signUpClickedButton(_ sender: UIButton) {
        print("회원가입 정보 확인")
        print("ID: \(emailText.text!)")
        print("PW: \(passwordText.text!)")
        print("NICK: \(nicknameText.text!)")
        print("LOCATION: \(whereText.text!)")
        print("CODE: \(recommendText.text!)")
        
        
    }
    
    
}
