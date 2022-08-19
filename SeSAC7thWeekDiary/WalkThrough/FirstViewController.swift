//
//  FirstViewController.swift
//  SeSAC7thWeekDiary
//
//  Created by sae hun chung on 2022/08/16.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var tutorialLabel: UILabel!
    @IBOutlet weak var blackView: UIView!
    @IBOutlet weak var starImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tutorialLabel.numberOfLines = 2
        tutorialLabel.font = .boldSystemFont(ofSize: 25)
        tutorialLabel.text = """
        일기 씁시다!
        잘 써봅시다!!
        """
        tutorialLabel.backgroundColor = .white
        
        blackView.backgroundColor = .black
        blackView.alpha = 0
        
        tutorialLabel.alpha = 0
        UIView.animate(withDuration: 0.5) {
            self.tutorialLabel.alpha = 1
            self.tutorialLabel.backgroundColor = .blue
        } completion: { _ in
            self.animateBlackView()
            self.animateImageView()
        }
        
    }
    
    func animateBlackView() {
        UIView.animate(withDuration: 0.5) {
            self.blackView.transform = CGAffineTransform(scaleX: 3, y: 1) // 배수로 조절
            self.blackView.alpha = 1
        } completion: { _ in

        }

    }
    
    func animateImageView() {
        
        UIView.animate(withDuration: 1, delay: 0.5, options: [.repeat, .autoreverse]) {
            self.starImageView.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
        } completion: { bool in
            print(bool)
        }

        
    }
    
}
