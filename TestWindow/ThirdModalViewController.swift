//
//  ThirdModalViewController.swift
//  TestWindow
//
//  Created by  aleksandr on 29.09.22.
//

import UIKit

class ThirdModalViewController: UIViewController {
    
    public var text = ""
    public var modelText = MyModel(firstLine: "", secondLine: "", thirdLine: "")

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let fourthModalViewController = segue.destination as? FourthModalViewController {
            fourthModalViewController.view.backgroundColor = .blue
            fourthModalViewController.labelText.text = text
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        guard let structBack = self.presentingViewController as? SecondModalViewController else { return }
        structBack.modelText = modelText
    }
    
    
    @IBAction func presentOtherController4(_ sender: Any) {
        performSegue(withIdentifier: "toFourth", sender: self)
    }
    

}
