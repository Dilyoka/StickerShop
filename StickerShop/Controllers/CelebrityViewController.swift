//
//  CelebrityViewController.swift
//  StickerShop
//
//  Created by dilyar  on 05.02.2023.
//

import UIKit

class CelebrityViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func pack_1(_ sender: Any) {
        
        let tom = 50
        
        if tom <= user.kolvoMonet {
            let alert = UIAlertController(title: "Attention", message: "Do you want to buy this sticker pack", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title:"Yes", style: .default, handler: { action in  user.kolvoMonet -= tom
                if let newViewController = self.storyboard?.instantiateViewController(withIdentifier: "menuViewController") as? MenuViewController {
                    newViewController.modalPresentationStyle = .fullScreen
                    self.present(newViewController, animated: false, completion: nil)
                }
            }))
            alert.addAction(UIAlertAction(title:"No", style: .default))
            present(alert, animated: false, completion: nil)
        }
        else {
            user.isBlackList = true
            if let newViewController = storyboard?.instantiateViewController(withIdentifier: "authViewController") as? AuthViewController {
                newViewController.modalPresentationStyle = .fullScreen
                present(newViewController, animated: false, completion: nil)
            }
        }
    }
    
    @IBAction func pack_2(_ sender: Any) {
        let heroes = 50
        
        if heroes <= user.kolvoMonet {
            let alert = UIAlertController(title: "Attention", message: "Do you want to buy this sticker pack", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title:"Yes", style: .default, handler: { action in user.kolvoMonet -= heroes
                if let newViewController = self.storyboard?.instantiateViewController(withIdentifier: "menuViewController") as? MenuViewController {
                    newViewController.modalPresentationStyle = .fullScreen
                    self.present(newViewController, animated: false, completion: nil)
                }
            }))
            alert.addAction(UIAlertAction(title:"No", style: .default))
            present(alert, animated: false, completion: nil)
         
        }
        else {
            user.isBlackList = true
            if let newViewController = storyboard?.instantiateViewController(withIdentifier: "authViewController") as? AuthViewController {
                newViewController.modalPresentationStyle = .fullScreen
                present(newViewController, animated: false, completion: nil)
            }
        }
    }
    
    
    @IBAction func pack_3(_ sender: Any) {
        let others = 55
        
        if others <= user.kolvoMonet {
            let alert = UIAlertController(title: "Attention", message: "Do you want to buy this sticker pack", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title:"Yes", style: .default, handler: { action in user.kolvoMonet -= others
                if let newViewController = self.storyboard?.instantiateViewController(withIdentifier: "menuViewController") as? MenuViewController {
                    newViewController.modalPresentationStyle = .fullScreen
                self.present(newViewController, animated: false, completion: nil)
                }
            }))
            alert.addAction(UIAlertAction(title:"No", style: .default))
            present(alert, animated: false, completion: nil)
        }
        else {
            user.isBlackList = true
            if let newViewController = storyboard?.instantiateViewController(withIdentifier: "authViewController") as? AuthViewController {
                newViewController.modalPresentationStyle = .fullScreen
                present(newViewController, animated: false, completion: nil)
            }
        }
    }

}
