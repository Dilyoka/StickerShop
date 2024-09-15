//
//  MenuViewController.swift
//  StickerShop
//
//  Created by dilyar  on 03.02.2023.
//

import UIKit

class MenuViewController: UIViewController {

    @IBOutlet weak var coin: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        coin.text! = String(user.kolvoMonet)
    }
    

}
