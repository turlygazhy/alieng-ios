//
//  DialogViewController.swift
//  AliEng
//
//  Created by Umid on 26/05/21.
//

import UIKit

class DialogViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var selectedTheme = ""
    var titleArray:[String] = []
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        defaultSettings()
       
    }
    func defaultSettings(){
       tableView.separatorColor = .clear
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib.init(nibName: "DetailTableCell", bundle: nil), forCellReuseIdentifier: "detail")
        titleArray = ["Лекция","Сабак сездeрi","Практика","Диалог"]
    }
    
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
        return titleArray.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "detail", for: indexPath) as! DetailTableCell
      
        cell.nameLabel.text = titleArray[indexPath.row]
            return cell
        }
       
       
}
