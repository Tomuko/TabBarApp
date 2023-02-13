//
//  StartViewController.swift
//  TabBarApp
//
//  Created by Виктория Страдзина on 13.02.2023.
//

import UIKit

final class StartViewController: UIViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarVc = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarVc.viewControllers else { return }
        
        viewControllers.forEach { viewController in
            if let firstVC = viewController as? FirstViewController {
                firstVC.view.backgroundColor = .systemOrange
            } else if let secondVC = viewController as? SecondViewController {
                secondVC.view.backgroundColor = .systemMint
            } else if let navigationVC = viewController as? UINavigationController {
                guard let thirdVC = navigationVC.topViewController as? ThirdViewController else { return }
                thirdVC.title = "Third Screen"
                thirdVC.view.backgroundColor = .systemCyan
            }
        }
    }
}
