//
//  WelcomeViewController.swift
//  SwiftApp
//
//  Created by JOEYCO-0072PK on 14/12/2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var holderview:UIView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        configure()
    }
    
    private func configure()
    {
        //configuration of screens
        let scrollView = UIScrollView(frame: holderview.bounds)
        holderview.addSubview(scrollView)
        
        let titles = ["Ready..","steady..","Go!"]
        for x in 0..<3{
            let pageView = UIView(frame: CGRect(x:CGFloat(x)*holderview.frame.size.width,y:0,width: holderview.frame.size.width,height: holderview.frame.size.height))
            
            let label = UILabel(frame: CGRect(x:10,y:10,width: pageView.frame.size.width-20,height: 120))
            
            let imageView = UIImageView(frame: CGRect(x:10,y:10+120+10,width: pageView.frame.size.width-20,height: pageView.frame.size.height-60-130-15))
            
            let button = UIButton(frame: CGRect(x:10,y:pageView.frame.size.height-60,width: pageView.frame.size.width-20,height: 50))
            
            label.textAlignment = .center
            label.font = UIFont(name: "Helvetica-Bold", size: 32)
            pageView.addSubview(label)
            label.text = titles[x]
            
            imageView.contentMode = .scaleAspectFit
            imageView.image = UIImage(named: "welcome_\(x)")
            pageView.addSubview(imageView)
            
            button.setTitleColor(.white, for: .normal)
            button.backgroundColor = .black
            button.setTitle("Continue", for: .normal)
            
            if x==2{
                button.setTitle("Get Started", for: .normal)
            }
            button.addTarget(self, action: #selector(didTapButton(_ :)), for: .touchUpInside)
            pageView.addSubview(button)
        }
    }
    
    @objc func didTapButton(_ button: UIButton)
    {
        
    }
}
