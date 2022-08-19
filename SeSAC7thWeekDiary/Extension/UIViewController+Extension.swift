//
//  UIViewController+Extension.swift
//  SeSAC7thWeekDiary
//
//  Created by sae hun chung on 2022/08/18.
//

import UIKit

extension UIViewController {
    
    // TMDB에 있는 Transition code 변경해보기
    func transitionViewController<T: UIViewController>(storyboard: String, viewController vc : T) {
        
        let sb = UIStoryboard(name: storyboard, bundle: nil)
        guard let controller = sb.instantiateViewController(identifier: T.reuseIdentifier) as? T else { return }
        
        self.present(controller, animated: true)
    }
    
    
}
