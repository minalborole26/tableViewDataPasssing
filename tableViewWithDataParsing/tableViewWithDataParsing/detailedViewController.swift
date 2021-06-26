//
//  detailedViewController.swift
//  tableViewWithDataParsing
//
//  Created by minal borole on 26/06/21.
//

import UIKit

class detailedViewController: UIViewController {

    @IBOutlet weak var dImg: UIImageView!
    
    @IBOutlet weak var dLbl1: UILabel!
    
    @IBOutlet weak var dLbl2: UILabel!
    var strLbl1: String!
    var strLbl2: String!
    var strImg: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dLbl1.text = strLbl1
        dLbl2.text = strLbl1
        dImg.image = strImg

        // Do any additional setup after loading the view.
    }
    

    

}
