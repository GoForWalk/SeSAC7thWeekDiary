//
//  WalkThroughPageViewController.swift
//  SeSAC7thWeekDiary
//
//  Created by sae hun chung on 2022/08/16.
//

import UIKit

class WalkThroughPageViewController: UIPageViewController {

    // 배열 형태로 뷰 컨트롤러를 추가
    var pageViewControllerList: [UIViewController] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .lightGray
        createPageViewController()
        configurePageViewController()
    }
    
    // 배열에 뷰 컨트롤러 추가
    func createPageViewController() {
        let sb = self.storyboard
        
        let vc1 = sb?.instantiateViewController(withIdentifier: FirstViewController.reuseIdentifier) as! FirstViewController
        let vc2 = sb?.instantiateViewController(withIdentifier: SecondViewController.reuseIdentifier) as! SecondViewController
        let vc3 = sb?.instantiateViewController(withIdentifier: ThirdViewController.reuseIdentifier) as! ThirdViewController
        
        pageViewControllerList = [vc1, vc2, vc3]
    }
    
    func configurePageViewController() {
        
        delegate = self
        dataSource = self
        
        // display
        guard let first = pageViewControllerList.first else { return }
        
        setViewControllers([first], direction: .forward, animated: true)
    }
    
}

extension WalkThroughPageViewController: UIPageViewControllerDelegate, UIPageViewControllerDataSource {
    
    // 필수
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        // 현재 페이지뷰컨트롤러에 보이는 뷰컨의 인덱스 가져오기
        // 이전 뷰컨이 없다면 nil
        
        guard let viewControllerIndex = pageViewControllerList.firstIndex(of: viewController) else { return nil }
        
        let previousIndex = viewControllerIndex - 1
        
        return previousIndex < 0 ? nil : pageViewControllerList[previousIndex]
    }
    
    // 팔수
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        guard let viewControllerIndex = pageViewControllerList.firstIndex(of: viewController) else { return nil }
        
        let nextIndex = viewControllerIndex + 1
        
        return nextIndex >= pageViewControllerList.count ? nil : pageViewControllerList[nextIndex]
        
    }
    
    // pageControl 개수
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return pageViewControllerList.count
    }
    
    // 현재 페이지에서 pageControl의 위치
    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        guard let first = viewControllers?.first, let index = pageViewControllerList.firstIndex(of: first) else { return 0}
        print("====", first)
        return index
    }
    
}
