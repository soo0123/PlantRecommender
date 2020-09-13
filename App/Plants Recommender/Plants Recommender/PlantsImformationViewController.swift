//
//  PlantsImformationViewController.swift
//  Plants_test1
//
//  Created by 이주영 on 2019/12/26.
//  Copyright © 2019 MyAppDevelopment. All rights reserved.
//

import UIKit
import DDSpiderChart

class PlantsImformationViewController: UIViewController {

    @IBOutlet weak var plantName: UILabel!
    @IBOutlet weak var plantNameEng: UILabel!
    @IBOutlet weak var plantImage: UIImageView!
    @IBOutlet weak var plantType: UILabel!
    @IBOutlet weak var plantDifficulty: UILabel!
    @IBOutlet weak var plantRecommendPlace: UILabel!
    
    @IBOutlet weak var plantCaution: UILabel!
    @IBOutlet weak var spiderChart: DDSpiderChartView!
    
    @IBOutlet weak var plantLabel: UILabel!
    
    @IBOutlet weak var airLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if cellPlant == "" {
            plantLabel.text = ""
            airLabel.text = ""
//            self.performSegue(withIdentifier: "noPlants", sender: self)
//            self.title = "식물을 추천받으세요!"
//            self.navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor(red: 89/256, green: 150/256, blue: 96/256, alpha: 1)]
//            self.navigationController?.navigationBar.tintColor = UIColor(red: 89/256, green: 150/256, blue: 96/256, alpha: 1)
            plantName.text = ""
            plantNameEng.text = ""
            plantImage.image = nil
            plantType.text = ""
            plantRecommendPlace.text = ""
            plantDifficulty.text = ""
            plantCaution.text = ""
            spiderChart.color = .white
            
            let label = UILabel(frame: CGRect(x: 0, y: 0, width: 300, height: 300))
            label.center = self.view.center
            label.center.y = self.view.center.y - 50
            label.textAlignment = .center
            label.font = label.font.withSize(25)
            label.lineBreakMode = .byWordWrapping
            label.textColor = UIColor.lightGray
            label.numberOfLines = 0
            label.text = "추천받은 식물이 없습니다." + "\n" + "식물을 추가해주세요"
            self.view.addSubview(label)
            label.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
            label.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
            label.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
            label.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
            
        }
        else {
            self.navigationController?.navigationBar.tintColor = UIColor(red: 89/256, green: 150/256, blue: 96/256, alpha: 1)
            let fullNameArr : [String] = cellPlant.components(separatedBy: "\n")
            let imageName = fullNameArr[0]
            print(imageName)
            plantName.text = fullNameArr[0]
            plantNameEng.text = fullNameArr[1]
            
            plantImage.image = UIImage(named: imageName)
            for i in myPlants {
                if i.0 as String == cellPlant {
                    plantType.text = i.3 as String
                    plantDifficulty.text = "Difficulty : " + (i.2 as String)
                    if i.4 as String == "" {
                        plantRecommendPlace.text = ""
                    }
                    else {
                        plantRecommendPlace.text = "Best Place : " +  (i.4 as String)
                    }
                    if i.5 as String == ""{
                        plantCaution.text = "Caution: None"
                    }
                    else {
                        plantCaution.text = "Caution: " + (i.5 as String)
                    }
                    spiderChart.axes = ["Formaldehyde 정화능력", "VOCs 제거능력", "CO2 & CO 제거능력", "음이온 발생능력", "가습 능력"]
                    spiderChart.addDataSet(values: [(i.1)[0] / 5, (i.1)[1] / 5, (i.1)[2] / 5, (i.1)[3] / 5, (i.1)[4] / 5], color: UIColor(red: 89/256, green: 150/256, blue: 96/256, alpha: 1))
                }
            }
        }
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
