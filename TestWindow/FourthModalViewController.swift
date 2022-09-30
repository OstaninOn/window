//
//  FourthModalViewController.swift
//  TestWindow
//
//  Created by  aleksandr on 29.09.22.
//

import UIKit

class FourthModalViewController: UIViewController {
    public let modelText = MyModel(firstLine: "и", secondLine: "вот", thirdLine: "начало")
    
    @IBOutlet weak var labelText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    override func viewWillDisappear(_ animated: Bool) {
        guard let structBack = self.presentingViewController as? ThirdModalViewController else {
            return }
        structBack.modelText = modelText
    }

}
