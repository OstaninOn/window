//
//  ViewController.swift
//  TestWindow
//
//  Created by  aleksandr on 29.09.22.
//

import UIKit

class MainViewController: UIViewController {
    
    public var modelText = MyModel(firstLine: "", secondLine: "", thirdLine: "")
    private let text: String = "прошли сутки пока разобрался"
    
    @IBOutlet weak var labelFirstLine: UILabel!
    @IBOutlet weak var labelSecondLine: UILabel!
    @IBOutlet weak var labelThirdLine: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
     
        view.backgroundColor = .systemIndigo
        
    setLabelsHidden(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let firstModalConntroller = segue.destination as? FirstModalViewController {
               firstModalConntroller.view.backgroundColor = .systemCyan
               firstModalConntroller.text = text
        }
    }
    
    public func setLabels() {
        labelFirstLine.text = modelText.firstLine
        labelSecondLine.text = modelText.secondLine
        labelThirdLine.text = modelText.thirdLine
    }
    public func setLabelsHidden(_ bool: Bool){
        labelSecondLine.isHidden = bool
        labelFirstLine.isHidden = bool
        labelThirdLine.isHidden = bool
    }
    
    @IBAction func presentOtherController(_ sender: Any) {
        performSegue(withIdentifier: "toFirst", sender: self)
        
    }
    
}

