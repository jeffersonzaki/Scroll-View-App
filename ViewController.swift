//
//  ViewController.swift
//  SrollViewApp
//
//  Created by Zaki Jefferson on 11/10/18.
//  Copyright © 2018 Zaki Jefferson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var pageControl: UIPageControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        scrollView.delegate = self
    }
}

    extension ViewController: UIScrollViewDelegate {
        
        func scrollViewDidScroll(_ scrollView: UIScrollView) {
            //calculate the page index
            let pageIndex = Int(scrollView.contentOffset.x/375)
            
            //set the page control
            pageControl.currentPage = pageIndex
        }
    }


