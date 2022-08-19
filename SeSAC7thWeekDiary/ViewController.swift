//
//  ViewController.swift
//  SeSAC7thWeekDiary
//
//  Created by sae hun chung on 2022/08/16.
//

import UIKit
import ModuleFramework
import SnapKit

class ViewController: UIViewController {
    
    let nameButton: UIButton = {
        let button = UIButton()
        button.setTitle("닉네임", for: .normal)
        button.backgroundColor = .black
        
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
        
        nameButton.addTarget(self, action: #selector(nameButtonTapped), for: .touchUpInside)
    }

    @objc
    func nameButtonTapped() {
        let vc = WriteViewController()
//        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
//        let vc = ProfileViewController()
//
//        vc.saveButtonActionHandler = { [weak self] in
//
//            self?.nameButton.setTitle(vc.nameTextField.text, for: .normal)
//        }
//
//        present(vc, animated: true)
    }
    
    func configure() {
        view.addSubview(nameButton)
        
        nameButton.snp.makeConstraints { make in
            make.width.height.equalTo(200)
            make.center.equalTo(view)
        }
        
    }

}

