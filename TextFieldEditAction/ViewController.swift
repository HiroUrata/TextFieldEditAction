//
//  ViewController.swift
//  TextFieldEditAction
//
//  Created by UrataHiroki on 2021/10/15.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
      
        let textfield01 = UITextField()
        textfield01.frame = CGRect(x: view.frame.maxX / 10, y: view.frame.maxY / 6.7, width: view.frame.width - (view.frame.maxX / 5), height: 40)
        textfield01.placeholder = "3文字以上入力して下さい"
        textfield01.layer.cornerRadius = 10.0
        textfield01.layer.borderWidth = 1.0
        textfield01.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        textfield01.leftViewMode = .always
        textfield01.layer.borderColor = UIColor.black.cgColor
        textfield01.backgroundColor = .white
        textfield01.tag = 0
        view.addSubview(textfield01)
        
        let textfield02 = UITextField()
        textfield02.frame = CGRect(x: view.frame.maxX / 10, y: view.frame.maxY / 3.76, width: view.frame.width - (view.frame.maxX / 5), height: 40)
        textfield02.placeholder = "5文字以上入力して下さい"
        textfield02.layer.cornerRadius = 10.0
        textfield02.layer.borderWidth = 1.0
        textfield02.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        textfield02.leftViewMode = .always
        textfield02.layer.borderColor = UIColor.black.cgColor
        textfield02.backgroundColor = .white
        textfield02.tag = 1
        view.addSubview(textfield02)

        let textfield03 = UITextField()
        textfield03.frame = CGRect(x: view.frame.maxX / 10, y: view.frame.maxY / 2.61, width: view.frame.width - (view.frame.maxX / 5), height: 40)
        textfield03.placeholder = "8文字以上入力して下さい"
        textfield03.layer.cornerRadius = 10.0
        textfield03.layer.borderWidth = 1.0
        textfield03.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        textfield03.leftViewMode = .always
        textfield03.layer.borderColor = UIColor.black.cgColor
        textfield03.backgroundColor = .white
        textfield03.tag = 2
        view.addSubview(textfield03)
        
        let button01 = UIButton()
        button01.frame = CGRect(x: view.frame.maxX / 10, y: view.frame.maxY / 1.79, width: view.frame.width - (view.frame.width / 5), height: view.frame.height / 20)
        button01.setTitle("Not start", for: .normal)
        button01.titleLabel?.textColor = .white
        button01.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        button01.backgroundColor = .systemRed
        button01.layer.cornerRadius = 20.0
        button01.layer.shadowOffset = CGSize(width: 5, height: 5)
        button01.layer.shadowOpacity = 0.5
        button01.layer.shadowRadius = 0.5
        view.addSubview(button01)
        
    }


}

