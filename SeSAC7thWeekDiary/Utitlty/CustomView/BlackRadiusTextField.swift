//
//  BlackRadiusTextField.swift
//  SeSAC7thWeekDiary
//
//  Created by sae hun chung on 2022/08/19.
//

import UIKit

class BlackRadiusTextField: UITextField {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        borderStyle = .none
        layer.borderColor = UIColor.black.cgColor
        layer.borderWidth = 1
        textAlignment = .center
        font = .boldSystemFont(ofSize: 15)
    }
}
