//
//  ViewController.swift
//  college compass
//
//  Created by Apple on 6/13/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit
import SafariServices


class ViewController: UIViewController {
    

    @IBOutlet weak var lable1: UILabel!
    
   
    @IBAction func viewButton(_ sender: UIButton) {
        showSafari(for: scolarships[myIndex].URL)
    }
    
    func showSafari(for url: String){
        guard let url = URL(string: url) else {
            
            return
        }
        
        let safariVC = SFSafariViewController(url: url)
        present(safariVC, animated: true){
            
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lable1.text = scolarships[myIndex].text
      
        // Do any additional setup after loading the view.



}

}
