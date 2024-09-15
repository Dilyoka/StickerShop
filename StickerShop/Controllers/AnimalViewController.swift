//
//  AnimalViewController.swift
//  StickerShop
//
//  Created by dilyar  on 05.02.2023.
//

import UIKit

class AnimalViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func pack_1(_ sender: Any) {
        
        let catsPack = 30
        
        if catsPack <= user.kolvoMonet {
            let alert = UIAlertController(title: "Attention", message: "Do you want to buy this sticker pack", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title:"Yes", style: .default, handler: {action in
                user.kolvoMonet -= catsPack
                if let newViewController = self.storyboard?.instantiateViewController(withIdentifier: "menuViewController") as? MenuViewController {
                    newViewController.modalPresentationStyle = .fullScreen
                    self.present(newViewController, animated: false, completion: nil)
                }}))
            alert.addAction(UIAlertAction(title:"No", style: .default ))
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
        
        let dogsPack = 30
        
        if dogsPack <= user.kolvoMonet {
            let alert = UIAlertController(title: "Attention", message: "Do you want to buy this sticker pack", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title:"Yes", style: .default, handler: { action in
                user.kolvoMonet -= dogsPack
                if let newViewController = self.storyboard?.instantiateViewController(withIdentifier: "menuViewController") as? MenuViewController {
                    newViewController.modalPresentationStyle = .fullScreen
                    self.present(newViewController, animated: false, completion: nil)
                }
            }))
            alert.addAction(UIAlertAction(title:"No", style: .default ))
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
        let others = 40
        
        if others <= user.kolvoMonet {
            let alert = UIAlertController(title: "Attention", message: "Do you want to buy this sticker pack", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title:"Yes", style: .default, handler: { action in
                user.kolvoMonet -= others
                if let newViewController = self.storyboard?.instantiateViewController(withIdentifier: "authViewController") as? AuthViewController{
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
