//
//  ViewController.swift
//  MySliderCards(ImageSlides)
//
//  Created by Srans022019 on 26/05/20.
//  Copyright © 2020 vikas. All rights reserved.
//

import UIKit
import CardSlider

struct Slider: CardSliderItem {
    var image: UIImage
    var rating: Int?
    var title: String
    var subtitle: String?
    var description: String?
}

class ViewController: UIViewController, CardSliderDataSource {
   
    @IBOutlet weak var cardSliderBtn: UIButton!
    
    var dataInfo = [Slider]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        dataInfo.append(Slider(image: UIImage(named: "image1")!, rating: 10, title: "A boy thinking", subtitle: "Boy seing the nature", description: "Enjoying and living in nature!"))
        dataInfo.append(Slider(image: UIImage(named: "image2")!, rating: 10, title: "Seasons", subtitle: "Nice Seasons and weather", description: "The weather in winter seasn is so eye capturing!"))
        dataInfo.append(Slider(image: UIImage(named: "image3")!, rating: 10, title: "Water Falls", subtitle: "Many waterfalls are so good", description: "India has a wonderfull waterfalls regions!"))
        
        
        // Do any additional setup after loading the view.
    }

    @IBAction func onTapCardSlider(_ sender: Any) {
        
        let nextVC = CardSliderViewController.with(dataSource: self)
        nextVC.modalPresentationStyle = .fullScreen
        present(nextVC, animated: true, completion: nil)
    }
    
    func item(for index: Int) -> CardSliderItem {
        return dataInfo[index]
    }
    
    func numberOfItems() -> Int {
        return dataInfo.count
    }
    
}

