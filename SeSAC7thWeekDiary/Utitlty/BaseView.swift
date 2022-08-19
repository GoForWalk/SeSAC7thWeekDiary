//
//  BaseView.swift
//  SeSAC7thWeekDiary
//
//  Created by sae hun chung on 2022/08/19.
//

import UIKit

class BaseView: UIView {
        
    // 코드 베이스
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureUI()
        setConstraint()
    }
    
    // xib storyboard, protocol
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureUI() { }
    
    func setConstraint() { }
}

//

protocol Exmaple {
    init(name: String)
}

class Mobile: Exmaple {
    let name: String
    
    required init (name: String) {
        self.name = name
    }
}

class Apple: Mobile {
    let wwwdc: String
    
    init (name: String, wwdc: String) {
        self.wwwdc = wwdc
        super.init(name: name)
    }
    
    required init(name: String) {
        self.wwwdc = "2022"
        super.init(name: name)
        
    }
}

let a = Apple(name: "iphone", wwdc: "2022")

