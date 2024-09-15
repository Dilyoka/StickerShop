//
//  OthresViewController.swift
//  StickerShop
//
//  Created by dilyar  on 05.02.2023.
//

import UIKit

class OthresViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func pack_1(_ sender: Any) {
        
        let kermit = 99
        
        if kermit <= user.kolvoMonet {
            let alert = UIAlertController(title: "Attention", message: "Do you want to buy this sticker pack", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title:"Yes", style: .default, handler: { action in user.kolvoMonet -= kermit
                if let newViewController = self.storyboard?.instantiateViewController(withIdentifier: "menuViewController") as? MenuViewController {
                    newViewController.modalPresentationStyle = .fullScreen
                    self.present(newViewController, animated: false, completion: nil)
                }}))
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
        let milaha = 300
        
        if milaha <= user.kolvoMonet {
    
            let alert = UIAlertController(title: "Attention", message: "Do you want to buy this sticker pack", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title:"Yes", style: .default, handler: { action in user.kolvoMonet -= milaha
                if let newViewController = self.storyboard?.instantiateViewController(withIdentifier: "menuViewController") as? MenuViewController {
                    newViewController.modalPresentationStyle = .fullScreen
                    self.present(newViewController, animated: false, completion: nil)
                }}))
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
        let cartoon = 60
        
        if cartoon <= user.kolvoMonet {
            let alert = UIAlertController(title: "Attention", message: "Do you want to buy this sticker pack", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title:"Yes", style: .default, handler: { action in user.kolvoMonet -= cartoon
                if let newViewController = self.storyboard?.instantiateViewController(withIdentifier: "menuViewController") as? MenuViewController {
                    newViewController.modalPresentationStyle = .fullScreen
                    self.present(newViewController, animated: false, completion: nil)
                }}))
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
