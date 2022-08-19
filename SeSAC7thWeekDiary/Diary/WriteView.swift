//
//  WriteView.swift
//  SeSAC7thWeekDiary
//
//  Created by sae hun chung on 2022/08/19.
//

import UIKit
import SnapKit

class WriteView: BaseView {
    
    let photoImageView: UIImageView = {
        let view = UIImageView()
        view.contentMode = .scaleAspectFill
        view.backgroundColor = .lightGray
        return view
    }()
    
    let titleTextField: BlackRadiusTextField = {
        print("TEXTFIELD")
        let view = BlackRadiusTextField()
        view.placeholder = "제목을 입력해주세요"
        return view
    }()
    
    let dateTextField: BlackRadiusTextField = {
        let view = BlackRadiusTextField()
        view.placeholder = "날짜를 입력해주세요"
        return view
    }()
    
    let contentTextView: UITextView = {
        let view = UITextView()
        view.layer.borderColor = UIColor.black.cgColor
        view.layer.borderWidth = 1
        return view
    }()
    
    override func configureUI() {
        self.backgroundColor = .white
        [photoImageView, titleTextField, dateTextField, contentTextView].forEach {
            self.addSubview($0)
        }
    }
    
    override func setConstraint() {
        
        photoImageView.snp.makeConstraints {
            $0.top.equalTo(self.safeAreaLayoutGuide)
            $0.leadingMargin.equalTo(20)
            $0.trailingMargin.equalTo(-20) // 오른쪽에서 여백띄울때는 - (마이너스)
            $0.height.equalTo(self).multipliedBy(0.3) // 비율로 정할 경우
        }
        
        titleTextField.snp.makeConstraints { make in
            make.top.equalTo(photoImageView.snp.bottom).offset(20)
            make.leadingMargin.equalTo(20)
            make.trailingMargin.equalTo(-20) // 오른쪽에서 여백띄울때는 - (마이너스)
            make.height.equalTo(50)
            
        }
        
        dateTextField.snp.makeConstraints {make in
            make.top.equalTo(titleTextField.snp.bottom).offset(20)
            make.leadingMargin.equalTo(20)
            make.trailingMargin.equalTo(-20) // 오른쪽에서 여백띄울때는 - (마이너스)
            make.height.equalTo(50)
        }
        
        contentTextView.snp.makeConstraints { make in
            make.top.equalTo(dateTextField.snp.bottom).offset(20)
            make.leadingMargin.equalTo(20)
            make.trailingMargin.equalTo(-20) // 오른쪽에서 여백띄울때는 - (마이너스)
            make.bottom.equalTo(self.safeAreaLayoutGuide)
        }

    }

    
}
