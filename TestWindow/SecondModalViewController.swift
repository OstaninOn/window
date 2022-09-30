//
//  SecondModalViewController.swift
//  TestWindow
//
//  Created by  aleksandr on 29.09.22.
//

import UIKit

class SecondModalViewController: UIViewController {
    public var text: String = ""
    public var modelText = MyModel(firstLine: "", secondLine: "", thirdLine: "")
    
    
            
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
     
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let thirdModalViewController = segue.destination as? ThirdModalViewController {
            thirdModalViewController.view.backgroundColor = .green
            thirdModalViewController.text = text
        }
    }
    
    
    override func viewWillDisappear(_ animated: Bool) {
        guard let structBack = self .presentingViewController as? FirstModalViewController else { return }
        structBack.modelText = modelText
    }
    
    
    @IBAction func presentOtherController3(_ sender: Any) {
        performSegue(withIdentifier: "toThird", sender: self)
    }
    
    

}
