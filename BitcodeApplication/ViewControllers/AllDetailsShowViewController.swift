//
//  AllDetailsShowViewController.swift
//  BitcodeApplication
//
//  Created by Mac on 28/04/23.
//

import UIKit

class AllDetailsShowViewController: UIViewController {

    @IBOutlet weak var imagelbl: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var ageLbl: UILabel!
    
    var image:UIImage?
    var name:String?
    var age:String?
    override func viewDidLoad() {
        super.viewDidLoad()
        dataBind()
        
    }
    func dataBind() {
        imagelbl.image = image
        nameLbl.text = name
        ageLbl.text = age
    }
}
