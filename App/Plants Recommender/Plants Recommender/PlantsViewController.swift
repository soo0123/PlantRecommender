//
//  PlantsViewController.swift
//  Charts
//
//  Created by 이진휘 on 03/10/2019.
//

import UIKit
import DDSpiderChart

class PlantsViewController: UIViewController {
    
    @IBOutlet weak var spiderChart: DDSpiderChartView!
    @IBOutlet weak var plantName: UILabel!
    @IBOutlet weak var plantNameEng: UILabel!
    @IBOutlet weak var plantImage: UIImageView!
    @IBOutlet weak var plantType: UILabel!
    @IBOutlet weak var plantDifficulty: UILabel!
    @IBOutlet weak var plantRecommendPlace: UILabel!
    @IBOutlet weak var plantCaution: UILabel!
    
    @IBOutlet weak var addPlantButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.tintColor = UIColor(red: 89/256, green: 150/256, blue: 96/256, alpha: 1)
        

        let fullNameArr : [String] = resultPlant.components(separatedBy: "\n")
        let imageName = fullNameArr[0]
        plantName.text = fullNameArr[0]
        plantNameEng.text = fullNameArr[1]
        plantImage.image = UIImage(named: imageName)
        plantRecommendPlace.numberOfLines = 0
        plantDifficulty.numberOfLines = 0
        for i in myPlants {
            if i.0 as String == resultPlant {
                if i.3 as String == "" {
                    plantType.text = "\u{2022} Plant Type: 자생식물(양치류)"
                }
                else {
                    plantType.text = i.3 as String
                }
                if i.2 as String == "" {
                    plantDifficulty.text = "\u{2022} Difficulty: 쉬움"
                }
                else {
                    plantDifficulty.text = "\u{2022} Difficulty: " + (i.2 as String)
                }
                if i.4 as String == "" {
                    plantRecommendPlace.text = "\u{2022} Best Place: 거실"
                }
                else {
                    plantRecommendPlace.text = "\u{2022} Best Place: " + (i.4 as String)
                }
                if i.5 as String == ""{
                    plantCaution.text = "\u{2022} Notes: 분무 자주해주기, 겉흙 마르면 물주기"
                }
                else {
                    plantCaution.text = "\u{2022} Notes: " + (i.5 as String)
                }
                spiderChart.axes = ["Formaldehyde 정화능력", "VOCs 제거능력", "CO2 & CO 제거능력", "음이온 발생능력", "가습 능력"]
                spiderChart.addDataSet(values: [(i.1)[0] / 5, (i.1)[1] / 5, (i.1)[2] / 5, (i.1)[3] / 5, (i.1)[4] / 5], color: UIColor(red: 89/256, green: 150/256, blue: 96/256, alpha: 1))
            }
        }
        
    }
    
    @IBAction func addPlant(_ sender: UIButton) {
        
        if resultPlace == "베란다(Patio)" {
            RoomArray[0].add(resultPlant)
            if isEmpty[0] {
                isEmpty[0] = false
            }
        }
        else if resultPlace == "거실(Living Room)" {
            RoomArray[1].add(resultPlant)
            if isEmpty[1] {
                isEmpty[1] = false
            }
        }
        else if resultPlace == "서재(Library)" {
            RoomArray[2].add(resultPlant)
            if isEmpty[2] {
                isEmpty[2] = false
            }
        }
        else if resultPlace == "침실(Bedroom)" {
            RoomArray[3].add(resultPlant)
            if isEmpty[3] {
                isEmpty[3] = false
            }
        }
        else if resultPlace == "부엌(Kitchen)" {
            RoomArray[4].add(resultPlant)
            if isEmpty[4] {
                isEmpty[4] = false
            }
        }
        
    }
    
    func attributedAxisLabel(_ label: String) -> NSAttributedString {
        let attributedString = NSMutableAttributedString()
        attributedString.append(NSAttributedString(string: label, attributes: [NSAttributedString.Key.foregroundColor: UIColor.black, NSAttributedString.Key.font: UIFont(name: "AvenirNextCondensed-Bold", size: 16)!]))
        return attributedString
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

}
