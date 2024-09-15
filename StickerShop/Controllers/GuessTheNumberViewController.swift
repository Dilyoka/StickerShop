//
//  GuessTheNumberViewController.swift
//  StickerShop
//
//  Created by dilyar  on 03.02.2023.
//

import UIKit



class GuessTheNumberViewController: UIViewController {
    
    var rnd : Int!
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var txt: UITextField!

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func check(_ sender: Any) {
        let t = Int(txt.text!)
        
        rnd = Int.random(in: 1...10)
        
        if t == rnd {
            user.kolvoMonet += 100
            if let newViewController = storyboard?
            .instantiateViewController(withIdentifier: "menuViewController")
                as? MenuViewController {
                newViewController.modalPresentationStyle = .fullScreen
                present(newViewController, animated: false, completion: nil)
            }
        }
            else {
                // txt.text! = " "
                // rnd = Int(txt.text!)
                if let newViewController = storyboard?
                .instantiateViewController(withIdentifier: "menuViewController")
                    as? MenuViewController {
                    newViewController.modalPresentationStyle = .fullScreen
                    present(newViewController, animated: false, completion: nil)
                }
            }
    }
    
    @IBAction func instruction(_ sender: Any) {
        let alert = UIAlertController(title:"Instruction", message:
            "In input field, enter a number \n from 1 to 10. \n If you guessed +100 coins ＼(￣▽￣)／ \n If not, 0 coins ┐(￣ヘ￣)┌ \n GOOD LUCK (*^‿^*)", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default))
        present(alert, animated: false,completion: nil)
    }
    
}

