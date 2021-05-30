//
//  DialogListViewController.swift
//  AliEng
//
//  Created by Umid on 29/05/21.
//

import UIKit

class DialogListViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{

    @IBOutlet weak var listTableView: UITableView!
    var titleArray:[String] = []
    @IBOutlet weak var vcTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        defaultSettings()
       
    }
    func defaultSettings(){
        listTableView.separatorColor = .clear
        listTableView.delegate = self
        listTableView.dataSource = self
        listTableView.register(UINib.init(nibName: "DetailTableCell", bundle: nil), forCellReuseIdentifier: "detail")
        titleArray = ["Get home","Get up","Go to bed","Leave home"]
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
       
       
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let alert = UIAlertController(title: "", message: "Do you want to learn this dialog?", preferredStyle: .alert)
        
        let ok = UIAlertAction(title: "Yes", style: .default, handler: { action in
            dialogCount += 1
            self.navigationController?.popViewController(animated: true)
        })
        alert.addAction(ok)
        let cancel = UIAlertAction(title: "No", style: .default, handler: { action in
            self.navigationController?.popViewController(animated: true)
        })
        alert.addAction(cancel)
        DispatchQueue.main.async(execute: {
            self.present(alert, animated: true)
        })
        
    }

}
