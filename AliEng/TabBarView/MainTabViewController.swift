//
//  MainTabViewController.swift
//  AliEng
//
//  Created by Umid on 26/05/21.
//

import UIKit

class MainTabViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let item1 = storyboard.instantiateViewController(withIdentifier: "LectureViewController") as! LectureViewController
        let navigationController1 = UINavigationController(rootViewController: item1)
        let icon1 = UITabBarItem(title: "Сабактар", image: UIImage(named: "book.png")!.withRenderingMode(.alwaysOriginal), selectedImage: UIImage(named: "book.png")!.withRenderingMode(.alwaysOriginal))
        navigationController1.tabBarItem = icon1
        
        
        let item2 = storyboard.instantiateViewController(withIdentifier: "DialogViewController") as! DialogViewController
         let navigationController2 = UINavigationController(rootViewController: item2)
       //  navigationController2.title = "Справка"
        let icon2 = UITabBarItem(title: "Диалог жаттау", image: UIImage(named: "play.png")!.withRenderingMode(.alwaysOriginal), selectedImage: UIImage(named: "play.png")!.withRenderingMode(.alwaysOriginal))
        navigationController2.tabBarItem = icon2
        
        let item3 = storyboard.instantiateViewController(withIdentifier: "MyDialogsViewController") as! MyDialogsViewController
        let navigationController3 = UINavigationController(rootViewController: item3)
        let icon3 = UITabBarItem(title: "Диалог тарым", image: UIImage(named: "bullet.png")!.withRenderingMode(.alwaysOriginal), selectedImage: UIImage(named: "bullet.png")!.withRenderingMode(.alwaysOriginal))
        navigationController3.tabBarItem = icon3
       
        
        
        let item4 = storyboard.instantiateViewController(withIdentifier: "MenuViewController") as! MenuViewController
        let navigationController4 = UINavigationController(rootViewController: item4)
        let icon4 = UITabBarItem(title: "Меню", image: UIImage(named: "menu.png")!.withRenderingMode(.alwaysOriginal), selectedImage: UIImage(named: "menu.png")!.withRenderingMode(.alwaysOriginal))
        navigationController4.tabBarItem = icon4
        
        let controllers = [navigationController1,navigationController2,navigationController3,navigationController4]
        self.viewControllers = controllers
    }
    

}
