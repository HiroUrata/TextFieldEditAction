//
//  ViewController.swift
//  TextFieldEditAction
//
//  Created by UrataHiroki on 2021/10/15.
//

import UIKit

class ViewController: UIViewController {

    let textfield01 = UITextField()
    var surveillanceLabel01 = UILabel()
    let textfield02 = UITextField()
    var surveillanceLabel02 = UILabel()
    let textfield03 = UITextField()
    var surveillanceLabel03 = UILabel()
    let button01 = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        textfield01.frame = CGRect(x: view.frame.maxX / 10, y: view.frame.maxY / 6.7, width: view.frame.width - (view.frame.maxX / 5), height: 40)
        textfield01.placeholder = "3文字以上入力して下さい"
        textfield01.layer.cornerRadius = 10.0
        textfield01.layer.borderWidth = 3.0
        textfield01.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        textfield01.leftViewMode = .always
        textfield01.layer.borderColor = UIColor.black.cgColor
        textfield01.backgroundColor = .white
        textfield01.addTarget(self, action: #selector(textfield01Surveillance), for: .editingChanged)
        view.addSubview(textfield01)
        
        surveillanceLabel01.frame = CGRect(x: textfield01.frame.minX + 3, y: textfield01.frame.maxY, width: textfield01.frame.width, height: textfield01.frame.height / 2.5)
        surveillanceLabel01.font = UIFont.boldSystemFont(ofSize: 13)
        view.addSubview(surveillanceLabel01)
        
        textfield02.frame = CGRect(x: view.frame.maxX / 10, y: view.frame.maxY / 3.76, width: view.frame.width - (view.frame.maxX / 5), height: 40)
        textfield02.placeholder = "5文字以上入力して下さい"
        textfield02.layer.cornerRadius = 10.0
        textfield02.layer.borderWidth = 3.0
        textfield02.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        textfield02.leftViewMode = .always
        textfield02.layer.borderColor = UIColor.black.cgColor
        textfield02.backgroundColor = .white
        textfield02.addTarget(self, action: #selector(textfield02Surveillance), for: .editingChanged)
        view.addSubview(textfield02)
        
        surveillanceLabel02.frame = CGRect(x: textfield02.frame.minX + 3, y: textfield02.frame.maxY, width: textfield02.frame.width, height: textfield02.frame.height / 2.5)
        surveillanceLabel02.font = UIFont.boldSystemFont(ofSize: 13)
        view.addSubview(surveillanceLabel02)
        
        textfield03.frame = CGRect(x: view.frame.maxX / 10, y: view.frame.maxY / 2.61, width: view.frame.width - (view.frame.maxX / 5), height: 40)
        textfield03.placeholder = "8文字以上入力して下さい"
        textfield03.layer.cornerRadius = 10.0
        textfield03.layer.borderWidth = 3.0
        textfield03.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        textfield03.leftViewMode = .always
        textfield03.layer.borderColor = UIColor.black.cgColor
        textfield03.backgroundColor = .white
        textfield03.addTarget(self, action: #selector(textfield03Surveillance), for: .editingChanged)
        view.addSubview(textfield03)
        
        surveillanceLabel03.frame = CGRect(x: textfield03.frame.minX + 3, y: textfield03.frame.maxY, width: textfield03.frame.width, height: textfield03.frame.height / 2.5)
        surveillanceLabel03.font = UIFont.boldSystemFont(ofSize: 13)
        view.addSubview(surveillanceLabel03)
        
        button01.frame = CGRect(x: view.frame.maxX / 10, y: view.frame.maxY / 1.79, width: view.frame.width - (view.frame.width / 5), height: view.frame.height / 20)
        button01.setTitle("NotStart", for: .normal)
        button01.titleLabel?.textColor = .white
        button01.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        button01.backgroundColor = .systemRed
        button01.layer.cornerRadius = 20.0
        button01.layer.shadowOffset = CGSize(width: 5, height: 5)
        button01.layer.shadowOpacity = 0.5
        button01.layer.shadowRadius = 0.5
        button01.layer.masksToBounds = true
        button01.addTarget(self, action: #selector(showIndicator), for: .touchDown)
        view.addSubview(button01)
        
    }
    
    @objc func textfield01Surveillance(sender:UITextField){
        
        switch sender.text!.count >= 3{
        
        case true:
            sender.layer.borderColor = UIColor.systemGreen.cgColor
            surveillanceLabel01.text = "入力完了"
            surveillanceLabel01.textColor = .systemGreen
            
            if sender.text!.count >= 3 && textfield02.text!.count >= 5 && textfield03.text!.count >= 8{
                
                button01.layer.masksToBounds = false
                button01.setTitle("AppStart", for: .normal)
                button01.backgroundColor = .systemGreen
            }
            
        case false:
            sender.layer.borderColor = UIColor.systemRed.cgColor
            surveillanceLabel01.textColor = .systemRed
            surveillanceLabel01.text = "注意：3文字以上入力して下さい"
            
            button01.setTitle("NotStart", for: .normal)
            button01.backgroundColor = .systemRed
        }
        
    }

    @objc func textfield02Surveillance(sender:UITextField){
        
        switch sender.text!.count >= 5{
        
        case true:
            sender.layer.borderColor = UIColor.systemGreen.cgColor
            surveillanceLabel02.text = "入力完了"
            surveillanceLabel02.textColor = .systemGreen
            
            if textfield01.text!.count >= 3 && sender.text!.count >= 5 && textfield03.text!.count >= 8{
                
                button01.layer.masksToBounds = false
                button01.setTitle("AppStart", for: .normal)
                button01.backgroundColor = .systemGreen
            }
            
        case false:
            sender.layer.borderColor = UIColor.systemRed.cgColor
            surveillanceLabel02.textColor = .systemRed
            surveillanceLabel02.text = "注意：5文字以上入力して下さい"
            
            button01.setTitle("NotStart", for: .normal)
            button01.backgroundColor = .systemRed
        }
    }

    @objc func textfield03Surveillance(sender:UITextField){
        
        switch sender.text!.count >= 8{
        
        case true:
            sender.layer.borderColor = UIColor.systemGreen.cgColor
            surveillanceLabel03.text = "入力完了"
            surveillanceLabel03.textColor = .systemGreen
            
            if textfield01.text!.count >= 3 && textfield02.text!.count >= 5 && sender.text!.count >= 8{
                
                button01.layer.masksToBounds = false
                button01.setTitle("AppStart", for: .normal)
                button01.backgroundColor = .systemGreen
            }
            
            
        case false:
            sender.layer.borderColor = UIColor.systemRed.cgColor
            surveillanceLabel03.textColor = .systemRed
            surveillanceLabel03.text = "注意：8文字以上入力して下さい"
            
            button01.setTitle("Not Start", for: .normal)
            button01.backgroundColor = .systemRed
        }
    }

    @objc func showIndicator(sender:UIButton){
        
        textfield01.isEnabled = false
        textfield02.isEnabled = false
        textfield03.isEnabled = false
        
        sender.setTitle("", for: .normal)
        
        UIButton.animate(withDuration: 0.5, delay: 0, options: .allowAnimatedContent, animations: {
            
            sender.frame = CGRect(x: self.view.center.x - (sender.frame.size.width / 7) / 2, y: sender.frame.origin.y, width: sender.frame.size.width / 7, height: sender.frame.size.height)
            sender.layer.cornerRadius = 23.0
            
        }, completion: nil)
        
        let indicator = UIActivityIndicatorView()
        indicator.frame.origin = CGPoint(x: sender.center.x, y: sender.center.y)
        indicator.color = .white
        
        view.addSubview(indicator)
        
        indicator.startAnimating()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            
            indicator.stopAnimating()
            
            UIButton.animate(withDuration: 0.5, delay: 0, options: .allowAnimatedContent, animations: {
                
                sender.frame = CGRect(x: self.view.frame.minX + 20, y: sender.frame.origin.y, width: self.view.frame.maxX - 40, height: sender.frame.size.height)
                sender.layer.cornerRadius = 20.0
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                    
                    sender.setTitle("AppStart", for: .normal)
                    self.textfield01.isEnabled = true
                    self.textfield02.isEnabled = true
                    self.textfield03.isEnabled = true
                }
                
            }, completion: nil)
            
        }
    }
}


