//
//  FirstModalViewController.swift
//  TestWindow
//
//  Created by  aleksandr on 29.09.22.
//

import UIKit

class FirstModalViewController: UIViewController {

    public var text: String = ""
    public var modelText = MyModel(firstLine: "", secondLine: "", thirdLine: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let secondModalViewController = segue.destination as? SecondModalViewController {
            secondModalViewController.view.backgroundColor = .red
            secondModalViewController.text = text
        }
    }
    override func viewWillDisappear(_ animated: Bool) {
        guard let structBack = self.presentingViewController as? MainViewController else { return }
        structBack.modelText = modelText
        structBack.view.backgroundColor = .white
        structBack.setLabels()
        structBack.setLabelsHidden(false)
    }
    
    @IBAction func presentOtherController2(_ sender: Any) {
     performSegue(withIdentifier: "toSecond", sender: self)
    }

}
