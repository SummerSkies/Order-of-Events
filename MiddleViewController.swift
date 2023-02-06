//
//  MiddleViewController.swift
//  OrderOfEvents
//
//  Created by Juliana Nielson on 2/6/23.
//

import UIKit

class MiddleViewController: UIViewController {

    @IBOutlet weak var lifeCycleLabel: UILabel!
    var eventNumber = 1
    
    func updateLabel(to string: String) {
        if let currentText = lifeCycleLabel.text {
            lifeCycleLabel.text = "\(currentText)\nEvent number \(eventNumber) was \(string)"
            eventNumber += 1
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateLabel(to: "viewDidLoad")
    }

    override func viewWillAppear(_ animated: Bool) {
            updateLabel(to: "viewWillAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
            updateLabel(to: "viewWillDisappear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
            updateLabel(to: "viewDidAppear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
            updateLabel(to: "viewDidDisappear")
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
