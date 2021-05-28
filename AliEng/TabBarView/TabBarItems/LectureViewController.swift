//
//  LectureViewController.swift
//  AliEng
//
//  Created by Umid on 26/05/21.
//

import UIKit

class LectureViewController: UIViewController ,UICollectionViewDelegate, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    @IBOutlet weak var itemCollectionView: UICollectionView!
    var lessons = [Lesson]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        defaultSettings()
      
    }
    
    
    func defaultSettings() {
        lessons = DataService.instance.lessons
        itemCollectionView.register(UINib(nibName: "LectureCollectionCell", bundle: nil), forCellWithReuseIdentifier: "lec")
        
        itemCollectionView.delegate = self
        itemCollectionView.dataSource = self
        
        let _flowLayout = UICollectionViewFlowLayout()
        _flowLayout.sectionInset = UIEdgeInsets(top: 0,left:5, bottom: 10,right: 5)
        _flowLayout.scrollDirection = UICollectionView.ScrollDirection.vertical
        _flowLayout.minimumInteritemSpacing = 0
        _flowLayout.minimumLineSpacing = 0
        itemCollectionView.collectionViewLayout = _flowLayout
    }
    
    func numberOfSections(in collectionView: UICollectionView) ->Int{
        
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       
        return lessons.count
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: collectionView.frame.width/2 - 5, height:collectionView.frame.height/3)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "lec", for: indexPath) as! LectureCollectionCell
        let theme = lessons[indexPath.item]
        cell.nameLabel.text = theme.name
        cell.numberLabel.text = "\(indexPath.item)"
        return cell
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let theme = lessons[indexPath.item]
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let VC = storyboard.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        VC.selectedTheme = theme.name
        self.navigationController?.pushViewController(VC, animated: true)
        
    }


}
