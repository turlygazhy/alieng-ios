//
//  DialogDetailViewController.swift
//  AliEng
//
//  Created by Umid on 28/05/21.
//

import UIKit

class DialogDetailViewController: UIViewController {

    @IBOutlet weak var answerView: UIView!
    
    @IBOutlet weak var variantsView: UIView!
    
    @IBOutlet weak var dialogLabel: UILabel!
    
    @IBOutlet weak var answerLabel: UILabel!
    
    @IBOutlet weak var answerButton: UIButton!
    
    @IBOutlet weak var firstBtn: UIButton!
    
    @IBOutlet weak var secondBtn: UIButton!
    
    @IBOutlet weak var thirdBtn: UIButton!
    
    @IBOutlet weak var fourthBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstBtn.layer.cornerRadius = 10
        secondBtn.layer.cornerRadius = 10
        thirdBtn.layer.cornerRadius = 10
        fourthBtn.layer.cornerRadius = 10

    }
    
    @IBAction func chooseAction(_ sender: UIButton) {
        if sender.tag > 2 {
            goodAnswers += 1
        }else{
            badAnswers += 1
        }
       
        openResult()
    }
    
    func openResult(){
        var dataArray = [Data]()
        if goodAnswers > 0 {
            for var index  in 1...goodAnswers {
                let slice = Data.init(myValue: CGFloat(index), myColor: .random())
                dataArray.append(slice)
            }
            
        }
        
        if badAnswers > 0 {
            for var index  in 1...badAnswers {
                let slice = Data.init(myValue: CGFloat(index), myColor: .random())
                dataArray.append(slice)
            }
        }
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let VC = storyboard.instantiateViewController(withIdentifier: "ResultViewController") as! ResultViewController
        VC.slicesData = dataArray
        self.navigationController?.pushViewController(VC, animated: true)
        
    }
    
    
    @IBAction func showAnswerAction(_ sender: UIButton) {
        
        answerView.alpha = 0
        variantsView.alpha = 1
        answerLabel.alpha = 1
        
    }
    

}
