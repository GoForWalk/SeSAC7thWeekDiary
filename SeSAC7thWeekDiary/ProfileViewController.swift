//
//  ProfileViewController.swift
//  SeSAC7thWeekDiary
//
//  Created by sae hun chung on 2022/08/18.
//

import UIKit
import SnapKit

class ProfileViewController: UIViewController {

    let saveButton: UIButton = {
        let button = UIButton()
        button.setTitle("저장", for: .normal)
        button.backgroundColor = .black
        
        return button
    }()

    
    let nameTextField: UITextField = {
        let textField = UITextField()

        textField.placeholder = "이름을 입력하세요."
        textField.backgroundColor = .brown
        textField.textColor = .white
        return textField
    }()

    var saveButtonActionHandler: (() -> ())?
    
    func confugure() {
        [saveButton, nameTextField].forEach {
            view.addSubview($0)
        }
        
        nameTextField.snp.makeConstraints { make in
            make.leading.trailing.equalTo(view).inset(50)
            make.top.equalTo(50)
            make.height.equalTo(50)
        }
        
        saveButton.snp.makeConstraints { make in
            make.width.height.equalTo(100)
            make.center.equalTo(view)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .lightGray
        confugure()
        
        saveButton.addTarget(self, action: #selector(saveButtonTapped), for: .touchUpInside)
    }

    @objc
    func saveButtonTapped() {
        // 값 전달 기능 실행 => 클로져 구문 활용
        saveButtonActionHandler?()
        
        // 화면 Dismiss
        dismiss(animated: true)
    }

}
