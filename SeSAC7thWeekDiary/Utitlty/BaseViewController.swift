//
//  BaseViewController.swift
//  SeSAC7thWeekDiary
//
//  Created by sae hun chung on 2022/08/19.
//

import UIKit

class BaseViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        configure()
    }
    
    func configure() {
        
    }
        
    func showAlertMessage(title: String, button: String) {
        let alert = UIAlertController(title: title, message: nil, preferredStyle: .alert)
        let ok = UIAlertAction(title: button, style: .default)
//        let no = UIAlertAction(title: "취소", style: .cancel)
        
        alert.addAction(ok)
//        alert.addAction(no)
        
        present(alert, animated: true)
        
    }
    
}
