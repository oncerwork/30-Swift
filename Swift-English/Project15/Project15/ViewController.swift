//
//  ViewController.swift
//  Project15
//
//  Created by apple on 2018/2/27.
//  Copyright © 2018年 com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tap: UIButton!
    
    var imageView:UIImageView!
    var currentAnimation = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        imageView = UIImageView(image: UIImage(named: "penguin"))
        imageView.frame = CGRect(x: 0, y: 0, width: 300, height: 300);
        imageView.center = self.view.center
        view.addSubview(imageView)
        
    }

    
    @IBAction func tapped(_ sender: Any) {
        
        tap.isHidden = true
        UIView.animate(withDuration: 1, delay: 0, options: [], animations: { [unowned self] in
            switch self.currentAnimation {
            case 0:
                self.imageView.transform = CGAffineTransform(scaleX: 2, y: 2)
                
            default:
                break
            }
            
        }) {[unowned self] (finished:Bool) in
            self.tap.isHidden = false
        }
        

        currentAnimation += 1
        if currentAnimation > 7 {
            currentAnimation = 0
        }
        
        switch currentAnimation {
        case 0:
            anim1()
        case 1:
            anim2()
        case 3:
            andSoOn()
        default:
            return
        }
    }
    
    
    func anim1(){
        
    }
    func anim2(){
        
    }
    func andSoOn(){
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

