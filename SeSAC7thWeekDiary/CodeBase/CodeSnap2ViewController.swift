//
//  CodeSnap2ViewController.swift
//  SeSAC7thWeekDiary
//
//  Created by sae hun chung on 2022/08/17.
//

import UIKit

class CodeSnap2ViewController: UIViewController {
    
    let blackView: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        return view
    }()
    
    let redView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        return view
    }()
    
    let yellowView: UIView = {
        let view = UIView()
        view.backgroundColor = .yellow
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        [redView, blackView].forEach {
            view.addSubview($0)
        }
        
        // redView 안에 yelloView가 포함하는 코드
        redView.addSubview(yellowView)
        
        // containerView, stackView는 addView가 아닌 다른 방식으로 구현해야 한다.
        
        redView.snp.makeConstraints { make in
            make.width.equalTo(200)
            make.height.equalTo(200)
            
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.centerX.equalTo(view)
        }
        
        // left, right와 trailing, leading의 차이
        // Right to Left인 국가(아랍권 국가)는 leading, trailing의 경우는 방향이 반대로 바뀐다.
        // left, right는 고정이다.
        blackView.snp.makeConstraints { make in
//            make.edges.equalTo(redView).offset(50)
            make.edges.equalTo(redView).inset(50)
        }
    }
    
    
}
