//
//  TestViewController.swift
//  Plants_test1
//
//  Created by 이진휘 on 01/10/2019.
//  Copyright © 2019 MyAppDevelopment. All rights reserved.
//

import UIKit

var resultPlant : String = ""
var resultPlace : String = ""

class TestViewController: UIViewController {
    
    @IBOutlet weak var TestNavigationItems: UINavigationItem!
    @IBOutlet weak var placeSegmentedControl: UISegmentedControl!
    @IBOutlet weak var sizeSegmentedControl: UISegmentedControl!
    @IBOutlet weak var lightConditionSegmentedControl: UISegmentedControl!
    @IBOutlet weak var experienceSegmentedControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        let fontAttribute = [NSAttributedString.Key.foregroundColor: UIColor.white]
//        let bgAttribute =
//            [NSAttributedString.Key.backgroundColor:
//                UIColor.white, NSAttributedString.Key.]
        // Do any additional setup after loading the view.
        self.navigationController?.navigationBar.tintColor = UIColor(red: 89/256, green: 150/256, blue: 96/256, alpha: 1)
    self.placeSegmentedControl.setTitleTextAttributes(fontAttribute, for: .selected)
    self.sizeSegmentedControl.setTitleTextAttributes(fontAttribute, for: .selected)
    self.lightConditionSegmentedControl.setTitleTextAttributes(fontAttribute, for: .selected)
    self.experienceSegmentedControl.setTitleTextAttributes(fontAttribute, for: .selected)
    }
    
    @IBOutlet weak var placeLabel: UILabel!
    @IBOutlet weak var sizeLabel: UILabel!
    @IBOutlet weak var lightConditionLabel: UILabel!
    @IBOutlet weak var experienceLabel: UILabel!

    @IBOutlet weak var showResultButton: UIButton!
    
    var place : String = ""
    var size : String = ""
    var lightCondition : String = ""
    var experience : String = ""
    
    @IBAction func placeChanged(_ sender: Any) {
        switch placeSegmentedControl.selectedSegmentIndex
        {
            case 0 :
                place = "베란다"
            case 1 :
                place = "거실"
            case 2 :
                place = "침실"
            case 3 :
                place = "서재"
            case 4 :
                place = "부엌"
            default:
                break
        }
    }
    
    @IBAction func sizeChanged(_ sender: Any) {
        switch sizeSegmentedControl.selectedSegmentIndex
        {
            case 0 :
                size = "3평 이하"
            case 1 :
                size = "3평~10평"
            case 2 :
                size = "10평~20평"
            case 3 :
                size = "20평 이상"
            default:
                break
        }
    }
    
    @IBAction func lightConditionChanged(_ sender: Any) {
        switch lightConditionSegmentedControl.selectedSegmentIndex
        {
            case 0 :
                lightCondition = "별로 안들어요"
            case 1 :
                lightCondition = "보통이에요"
            case 2 :
                lightCondition = "매우 잘들어요"
            default:
                break
        }
    }
    
    @IBAction func experienceChanged(_ sender: Any) {
        switch experienceSegmentedControl.selectedSegmentIndex
        {
            case 0 :
                experience = "별로 없어요"
            case 1 :
                experience = "보통이에요"
            case 2 :
                experience = "많아요"
            default:
                break
        }
    }
    
    @IBAction func showResultButton(_ sender: Any) {
        if place == "베란다" {
            if size == "3평 이하" {
                if lightCondition == "매우 잘들어요" {
                    if experience == "많아요" {
                        resultPlant = "꽃베고니아\n(Begonia)"
                    }
                    else if experience == "보통이에요" {
                        resultPlant = "애플민트\n(AppleMint)"
                    }
                    else if experience == "별로 없어요" {
                        resultPlant = "레몬버베나\n(Lemon BeeBrush)"
                    }
                }
                else if lightCondition == "보통이에요" {
                    if experience == "많아요" {
                        resultPlant = "심비디움\n(Cymbidium)"
                    }
                    else if experience == "보통이에요" {
                        resultPlant = "장미허브\n(Mexican Mint)"
                    }
                    else if experience == "별로 없어요" {
                        resultPlant = "자금우\n(Marlberry)"
                    }
                }
                else if lightCondition == "별로 안들어요" {
                if experience == "많아요" {
                    resultPlant = "틸란드시아 '이오난사'\n(Skyplant)"
                }
                else if experience == "보통이에요" {
                    resultPlant = "깃털이끼\n(Hypnales)"
                }
                else if experience == "별로 없어요" {
                    resultPlant = "산호수\n(Tiny Ardisia)"
                }
            }
        }
            else if size == "3평~10평" {
                    if lightCondition == "매우 잘들어요" {
                        if experience == "많아요" {
                            resultPlant = "라벤더\n(Lavender)"
                        }
                        else if experience == "보통이에요" {
                            resultPlant = "로즈마리\n(Rosemary)"
                        }
                        else if experience == "별로 없어요" {
                            resultPlant = "아이비\n(Ivy)"
                        }
                    }
                    else if lightCondition == "보통이에요" {
                        if experience == "많아요" {
                            resultPlant = "관엽베고니아\n(Begonia)"
                        }
                        else if experience == "보통이에요" {
                            resultPlant = "디펜바키아 '마리안느'\n(Dieffenbachia Maculata)"
                        }
                        else if experience == "별로 없어요" {
                            resultPlant = "보스톤고사리\n(Boston Fern)"
                        }
                    }
                    else if lightCondition == "별로 안들어요" {
                    if experience == "많아요" {
                        resultPlant = "필로덴드론 '콩고'\n(Philodendron Congo)"
                    }
                    else if experience == "보통이에요" {
                        resultPlant = "봉의꼬리\n(SpiderBrake)"
                    }
                    else if experience == "별로 없어요" {
                        resultPlant = "넉줄고사리\n(Squirrels-foot Fern)"
                    }
                }
            }
            else if size == "10평~20평" {
                    if lightCondition == "매우 잘들어요" {
                        if experience == "많아요" {
                            resultPlant = "만병초\n(Rhododendron)"
                        }
                        else if experience == "보통이에요" {
                            resultPlant = "소나무\n(PineTree)"
                        }
                        else if experience == "별로 없어요" {
                            resultPlant = "돈나무\n(MoneyTree)"
                        }
                    }
                    else if lightCondition == "보통이에요" {
                        if experience == "많아요" {
                            resultPlant = "드라세나 '와네키'\n(Dracaena)"
                        }
                        else if experience == "보통이에요" {
                            resultPlant = "스파티필럼\n(Peace Lily)"
                        }
                        else if experience == "별로 없어요" {
                            resultPlant = "멕시코소철\n(Zamia)"
                        }
                    }
                    else if lightCondition == "별로 안들어요" {
                    if experience == "많아요" {
                        resultPlant = "필로덴드론 '셀륨'\n(Lacytree Philodendron)"
                    }
                    else if experience == "보통이에요" {
                        resultPlant = "쉐프렐라 '홍콩'\n(Dwarf Umbrella Tree)"
                    }
                    else if experience == "별로 없어요" {
                        resultPlant = "드라세나 '맛상게아나'\n(Dracaena Fragrans)"
                    }
                }
            }
            else if size == "20평 이상" {
                    if lightCondition == "매우 잘들어요" {
                        if experience == "많아요" {
                            resultPlant = "만병초\n(Rhododendron)"
                        }
                        else if experience == "보통이에요" {
                            resultPlant = "구아바\n(Guava)"
                        }
                        else if experience == "별로 없어요" {
                            resultPlant = "멕시코소철\n(Zamia)"
                        }
                    }
                    else if lightCondition == "보통이에요" {
                        if experience == "많아요" {
                            resultPlant = "아레카야자\n(Areca Palm)"
                        }
                        else if experience == "보통이에요" {
                            resultPlant = "인도고무나무\n(Ficus)"
                        }
                        else if experience == "별로 없어요" {
                            resultPlant = "남천\n(Nandina)"
                        }
                    }
                    else if lightCondition == "별로 안들어요" {
                    if experience == "많아요" {
                        resultPlant = "디지고데카\n(Aralia)"
                    }
                    else if experience == "보통이에요" {
                        resultPlant = "쉐프렐라 '액티노필라'\n(Umbrella Tree)"
                    }
                    else if experience == "별로 없어요" {
                        resultPlant = "드라세나 '마지나타'\n(Dragon Tree)"
                    }
                }
            }
            resultPlace = "베란다"
        }
        else if place == "거실" {
            if size == "3평 이하" {
                if lightCondition == "매우 잘들어요" {
                    if experience == "많아요" {
                        resultPlant = "안스리움\n(Flamingo Lily)"
                    }
                    else if experience == "보통이에요" {
                        resultPlant = "호야\n(Hoya Plant)"
                    }
                    else if experience == "별로 없어요" {
                        resultPlant = "꽃아카다\n(Echeveria)"
                    }
                }
                else if lightCondition == "보통이에요" {
                    if experience == "많아요" {
                        resultPlant = "레몬버베나\n(Lemon BeeBrush)"
                    }
                    else if experience == "보통이에요" {
                        resultPlant = "싱고니움\n(Arrowhead Vine)"
                    }
                    else if experience == "별로 없어요" {
                        resultPlant = "페페로미아\n(Peperomia)"
                    }
                }
                else if lightCondition == "별로 안들어요" {
                if experience == "많아요" {
                    resultPlant = ""
                }
                else if experience == "보통이에요" {
                    resultPlant = "산호수\n(Tiny Ardisia)"
                }
                else if experience == "별로 없어요" {
                    resultPlant = "페페로미아\n(Peperomia)"
                }
            }
        }
            else if size == "3평~10평" {
                    if lightCondition == "매우 잘들어요" {
                        if experience == "많아요" {
                            resultPlant = "꽃베고니아\n(Begonia)"
                        }
                        else if experience == "보통이에요" {
                            resultPlant = "관엽베고니아\n(Begonia)"
                        }
                        else if experience == "별로 없어요" {
                            resultPlant = "제라늄\n(Geranium)"
                        }
                    }
                    else if lightCondition == "보통이에요" {
                        if experience == "많아요" {
                            resultPlant = "디펜바키아 '마리안느'\n(Dieffenbachia Maculata)"
                        }
                        else if experience == "보통이에요" {
                            resultPlant = "클로로피텀 (접란)\n(Airplanlant)"
                        }
                        else if experience == "별로 없어요" {
                            resultPlant = "넉줄고사리\n(Squirrels-foot Fern)"
                        }
                    }
                    else if lightCondition == "별로 안들어요" {
                    if experience == "많아요" {
                        resultPlant = "수염 틸란드시아\n(Spanish Moss)"
                    }
                    else if experience == "보통이에요" {
                        resultPlant = "틸란드시아 '이오난사'\n(Skyplant)"
                    }
                    else if experience == "별로 없어요" {
                        resultPlant = "봉의꼬리\n(SpiderBrake)"
                    }
                }
            }
            else if size == "10평~20평" {
                    if lightCondition == "매우 잘들어요" {
                        if experience == "많아요" {
                            resultPlant = "파키라\n(Water Chestnut)"
                        }
                        else if experience == "보통이에요" {
                            resultPlant = "파키라\n(Water Chestnut)"
                        }
                        else if experience == "별로 없어요" {
                            resultPlant = "팔손이\n(Paperplant)"
                        }
                    }
                    else if lightCondition == "보통이에요" {
                        if experience == "많아요" {
                            resultPlant = "드라세나 '마지나타'\n(Dragon Tree)"
                        }
                        else if experience == "보통이에요" {
                            resultPlant = "보스톤고사리\n(Boston Fern)"
                        }
                        else if experience == "별로 없어요" {
                            resultPlant = "드라세나 '와네키'\n(Dracaena)"
                        }
                    }
                    else if lightCondition == "별로 안들어요" {
                    if experience == "많아요" {
                        resultPlant = "수염 틸란드시아\n(Spanish Moss)"
                    }
                    else if experience == "보통이에요" {
                        resultPlant = "틸란드시아 '이오난사'\n(Skyplant)"
                    }
                    else if experience == "별로 없어요" {
                        resultPlant = "관음죽\n(Bamboo Palm)"
                    }
                }
            }
            else if size == "20평 이상" {
                    if lightCondition == "매우 잘들어요" {
                        if experience == "많아요" {
                            resultPlant = "아레카야자\n(Areca Palm)"
                        }
                        else if experience == "보통이에요" {
                            resultPlant = "구아바\n(Guava)"
                        }
                        else if experience == "별로 없어요" {
                            resultPlant = "멕시코소철\n(Zamia)"
                        }
                    }
                    else if lightCondition == "보통이에요" {
                        if experience == "많아요" {
                            resultPlant = "필로덴드론 '셀륨'\n(Lacytree Philodendron)"
                        }
                        else if experience == "보통이에요" {
                            resultPlant = "파키라\n(Water Chestnut)"
                        }
                        else if experience == "별로 없어요" {
                            resultPlant = "인도고무나무\n(Ficus)"
                        }
                    }
                    else if lightCondition == "별로 안들어요" {
                    if experience == "많아요" {
                        resultPlant = "디지고데카\n(Aralia)"
                    }
                    else if experience == "보통이에요" {
                        resultPlant = "쉐프렐라 '액티노필라'\n(Umbrella Tree)"
                    }
                    else if experience == "별로 없어요" {
                        resultPlant = "행운목\n(Dracaena Fragrans)"
                    }
                }
            }
            resultPlace = "거실"
        }
        else if place == "침실" {
            if size == "3평 이하" {
                if lightCondition == "매우 잘들어요" {
                    if experience == "많아요" {
                        resultPlant = "꽃베고니아\n(Begonia)"
                    }
                    else if experience == "보통이에요" {
                        resultPlant = "꽃아카다\n(Echeveria)"
                    }
                    else if experience == "별로 안들어요" {
                        resultPlant = "선인장\n(Cactus)"
                    }
                }
                else if lightCondition == "보통이에요" {
                    if experience == "많아요" {
                        resultPlant = "나도풍란\n(Orchid)"
                    }
                    else if experience == "보통이에요" {
                        resultPlant = "피토니아\n(Fittonia)"
                    }
                    else if experience == "별로 없어요" {
                        resultPlant = "꽃아카다\n(Echeveria)"
                    }
                }
                else if lightCondition == "별로 안들어요" {
                if experience == "많아요" {
                    resultPlant = "비단이끼\n(Silk Moss)"
                }
                else if experience == "보통이에요" {
                    resultPlant = "아글라오네마\n(Chinese Evergreens)"
                }
                else if experience == "별로 없어요" {
                    resultPlant = "스킨답터스\n(Devil's Ivy)"
                }
            }
        }
            else if size == "3평~10평" {
                    if lightCondition == "매우 잘들어요" {
                        if experience == "많아요" {
                            resultPlant = "심비디움\n(Cymbidium)"
                        }
                        else if experience == "보통이에요" {
                            resultPlant = "레몬버베나\n(Lemon BeeBrush)"
                        }
                        else if experience == "별로 없어요" {
                            resultPlant = "호야\n(Hoya Plant)"
                        }
                    }
                    else if lightCondition == "보통이에요" {
                        if experience == "많아요" {
                            resultPlant = "나도풍란\n(Orchid)"
                        }
                        else if experience == "보통이에요" {
                            resultPlant = "호접란\n(Moth Orchid)"
                        }
                        else if experience == "별로 없어요" {
                            resultPlant = "페퍼민트\n(Peppermint)"
                        }
                    }
                    else if lightCondition == "별로 안들어요" {
                    if experience == "많아요" {
                        resultPlant = "필로덴드론 '선라이트'\n(Heartleaf)"
                    }
                    else if experience == "보통이에요" {
                        resultPlant = "비단이끼\n(Silk Moss)"
                    }
                    else if experience == "별로 없어요" {
                        resultPlant = "스파티필럼\n(Peace Lily)"
                    }
                }
            }
            else if size == "10평~20평" {
                    if lightCondition == "매우 잘들어요" {
                        if experience == "많아요" {
                            resultPlant = "호접란\n(Moth Orchid)"
                        }
                        else if experience == "보통이에요" {
                            resultPlant = "마삭줄\n(Asiatic Jasmine)"
                        }
                        else if experience == "별로 없어요" {
                            resultPlant = "벵갈고무나무\n(Banyan Fig)"
                        }
                    }
                    else if lightCondition == "보통이에요" {
                        if experience == "많아요" {
                            resultPlant = "나도풍란\n(Orchid)"
                        }
                        else if experience == "보통이에요" {
                            resultPlant = "파키라\n(Water Chestnut)"
                        }
                        else if experience == "별로 없어요" {
                            resultPlant = "산세베리아\n(Sansevieria)"
                        }
                    }
                    else if lightCondition == "별로 안들어요" {
                    if experience == "많아요" {
                        resultPlant = "필로덴드론 '셀륨'\n(Lacytree Philodendron)"
                    }
                    else if experience == "보통이에요" {
                        resultPlant = "쉐프렐라 '홍콩'\n(Dwarf Umbrella Tree)"
                    }
                    else if experience == "별로 없어요" {
                        resultPlant = "스파티필럼\n(Peace Lily)"
                    }
                }
            }
            else if size == "20평 이상" {
                    if lightCondition == "매우 잘들어요" {
                        if experience == "많아요" {
                            resultPlant = "마삭줄\n(Asiatic Jasmine)"
                        }
                        else if experience == "보통이에요" {
                            resultPlant = "멕시코소철\n(Zamia)"
                        }
                        else if experience == "별로 없어요" {
                            resultPlant = "돈나무\n(MoneyTree)"
                        }
                    }
                    else if lightCondition == "보통이에요" {
                        if experience == "많아요" {
                            resultPlant = "아레카야자\n(Areca Palm)"
                        }
                        else if experience == "보통이에요" {
                            resultPlant = "파키라\n(Water Chestnut)"
                        }
                        else if experience == "별로 없어요" {
                            resultPlant = "벤자민고무나무\n(Weeping Fig)"
                        }
                    }
                    else if lightCondition == "별로 안들어요" {
                    if experience == "많아요" {
                        resultPlant = "디펜바키아 '마리안느'\n(Dieffenbachia Maculata)"
                    }
                    else if experience == "보통이에요" {
                        resultPlant = "쉐프렐라 '홍콩'\n(Dwarf Umbrella Tree)"
                    }
                    else if experience == "별로 없어요" {
                        resultPlant = "스파티필럼\n(Peace Lily)"
                    }
                }
            }
            resultPlace = "침실"
        }
        else if place == "서재" {
            if size == "3평 이하" {
                if lightCondition == "매우 잘들어요" {
                    if experience == "많아요" {
                        resultPlant = "라벤더\n(Lavender)"
                    }
                    else if experience == "보통이에요" {
                        resultPlant = "애플민트\n(AppleMint)"
                    }
                    else if experience == "별로 없어요" {
                        resultPlant = "자금우\n(Marlberry)"
                    }
                }
                else if lightCondition == "보통이에요" {
                    if experience == "많아요" {
                        resultPlant = "아글라오네마\n(Chinese Evergreens)"
                    }
                    else if experience == "보통이에요" {
                        resultPlant = "로즈마리\n(Rosemary)"
                    }
                    else if experience == "별로 없어요" {
                        resultPlant = "제라늄\n(Geranium)"
                    }
                }
                else if lightCondition == "별로 안들어요" {
                if experience == "많아요" {
                    resultPlant = "칼라데아\n(Calatheas)"
                }
                else if experience == "보통이에요" {
                    resultPlant = "깃털이끼\n(Hypnales)"
                }
                else if experience == "별로 없어요" {
                    resultPlant = "산호수\n(Tiny Ardisia)"
                }
            }
        }
            else if size == "3평~10평" {
                    if lightCondition == "매우 잘들어요" {
                        if experience == "많아요" {
                            resultPlant = "라벤더\n(Lavender)"
                        }
                        else if experience == "보통이에요" {
                            resultPlant = "장미허브\n(Mexican Mint)"
                        }
                        else if experience == "별로 없어요" {
                            resultPlant = "자금우\n(Marlberry)"
                        }
                    }
                    else if lightCondition == "보통이에요" {
                        if experience == "많아요" {
                            resultPlant = "로즈마리\n(Rosemary)"
                        }
                        else if experience == "보통이에요" {
                            resultPlant = "산호수\n(Tiny Ardisia)"
                        }
                        else if experience == "별로 없어요" {
                            resultPlant = "스파티필럼\n(Peace Lily)"
                        }
                    }
                    else if lightCondition == "별로 안들어요" {
                    if experience == "많아요" {
                        resultPlant = "칼라데아\n(Calatheas)"
                    }
                    else if experience == "보통이에요" {
                        resultPlant = "털머위\n(Leopard Plant)"
                    }
                    else if experience == "별로 없어요" {
                        resultPlant = "피토니아\n(Fittonia)"
                    }
                }
            }
            else if size == "10평~20평" {
                    if lightCondition == "매우 잘들어요" {
                        if experience == "많아요" {
                            resultPlant = "아레카야자\n(Areca Palm)"
                        }
                        else if experience == "보통이에요" {
                            resultPlant = "마삭줄\n(Asiatic Jasmine)"
                        }
                        else if experience == "별로 없어요" {
                            resultPlant = "팔손이\n(Paperplant)"
                        }
                    }
                    else if lightCondition == "보통이에요" {
                        if experience == "많아요" {
                            resultPlant = "디펜바키아 '트로픽스노우'\n(Dumbcane)"
                        }
                        else if experience == "보통이에요" {
                            resultPlant = "피닉스야자\n(Dwarf Date Palm)"
                        }
                        else if experience == "별로 없어요" {
                            resultPlant = "벵갈고무나무\n(Banyan Fig)"
                        }
                    }
                    else if lightCondition == "별로 안들어요" {
                    if experience == "많아요" {
                        resultPlant = "필로덴드론 '셀륨'\n(Lacytree Philodendron)"
                    }
                    else if experience == "보통이에요" {
                        resultPlant = "아글라오네마\n(Chinese Evergreens)"
                    }
                    else if experience == "별로 없어요" {
                        resultPlant = "스파티필럼\n(Peace Lily)"
                    }
                }
            }
            else if size == "20평 이상" {
                    if lightCondition == "매우 잘들어요" {
                        if experience == "많아요" {
                            resultPlant = "아레카야자\n(Areca Palm)"
                        }
                        else if experience == "보통이에요" {
                            resultPlant = "마삭줄\n(Asiatic Jasmine)"
                        }
                        else if experience == "별로 없어요" {
                            resultPlant = "팔손이\n(Paperplant)"
                        }
                    }
                    else if lightCondition == "보통이에요" {
                        if experience == "많아요" {
                            resultPlant = "필로덴드론 '셀륨'\n(Lacytree Philodendron)"
                        }
                        else if experience == "보통이에요" {
                            resultPlant = "관음죽\n(Bamboo Palm)"
                        }
                        else if experience == "별로 없어요" {
                            resultPlant = "벤자민고무나무\n(Weeping Fig)"
                        }
                    }
                    else if lightCondition == "별로 안들어요" {
                    if experience == "많아요" {
                        resultPlant = "칼라데아\n(Calatheas)"
                    }
                    else if experience == "보통이에요" {
                        resultPlant = "쉐프렐라 '액티노필라'\n(Umbrella Tree)"
                    }
                    else if experience == "별로 없어요" {
                        resultPlant = "쉐프렐라 '홍콩'\n(Dwarf Umbrella Tree)"
                    }
                }
            }
            resultPlace = "서재"
        }
        else if place == "부엌" {
            if size == "3평 이하" {
                if lightCondition == "매우 잘들어요" {
                    if experience == "많아요" {
                        resultPlant = "안스리움\n(Flamingo Lily)"
                    }
                    else if experience == "보통이에요" {
                        resultPlant = "장미허브\n(Mexican Mint)"
                    }
                    else if experience == "별로 없어요" {
                        resultPlant = "레몬버베나\n(Lemon BeeBrush)"
                    }
                }
                else if lightCondition == "보통이에요" {
                    if experience == "많아요" {
                        resultPlant = "싱고니움\n(Arrowhead Vine)"
                    }
                    else if experience == "보통이에요" {
                        resultPlant = "레몬버베나\n(Lemon BeeBrush)"
                    }
                    else if experience == "별로 없어요" {
                        resultPlant = "스킨답서스\n(Devil's Ivy)"
                    }
                }
                else if lightCondition == "별로 안들어요" {
                if experience == "많아요" {
                    resultPlant = "싱고니움\n(Arrowhead Vine)"
                }
                else if experience == "보통이에요" {
                    resultPlant = "스킨답서스\n(Devil's Ivy)"
                }
                else if experience == "별로 없어요" {
                    resultPlant = "스킨답서스\n(Devil's Ivy)"
                }
            }
        }
            else if size == "3평~10평" {
                    if lightCondition == "매우 잘들어요" {
                        if experience == "많아요" {
                            resultPlant = "안스리움\n(Flamingo Lily)"
                        }
                        else if experience == "보통이에요" {
                            resultPlant = "페퍼민트\n(Peppermint)"
                        }
                        else if experience == "별로 없어요" {
                            resultPlant = "제라늄\n(Geranium)"
                        }
                    }
                    else if lightCondition == "보통이에요" {
                        if experience == "많아요" {
                            resultPlant = "필로덴드론 '선라이트'\n(Heartleaf)"
                        }
                        else if experience == "보통이에요" {
                            resultPlant = "클로로피턴 (접란)\n(Airplane Plant)"
                        }
                        else if experience == "별로 없어요" {
                            resultPlant = "스킨답서스\n(Devil's Ivy)"
                        }
                    }
                    else if lightCondition == "별로 안들어요" {
                    if experience == "많아요" {
                        resultPlant = "싱고니움\n(Arrowhead Vine)"
                    }
                    else if experience == "보통이에요" {
                        resultPlant = "백량금\n(Coralberry)"
                    }
                    else if experience == "별로 없어요" {
                        resultPlant = "스킨답서스\n(Devil's Ivy)"
                    }
                }
            }
            else if size == "10평~20평" {
                    if lightCondition == "매우 잘들어요" {
                        if experience == "많아요" {
                            resultPlant = "안스리움\n(Flamingo Lily)"
                        }
                        else if experience == "보통이에요" {
                            resultPlant = "소나무\n(Pine Tree)"
                        }
                        else if experience == "별로 없어요" {
                            resultPlant = "산세베리아\n(Sansevieria)"
                        }
                    }
                    else if lightCondition == "보통이에요" {
                        if experience == "많아요" {
                            resultPlant = "필로덴드론 '선라이트'\n(Heartleaf)"
                        }
                        else if experience == "보통이에요" {
                            resultPlant = "클로로피텀 (접란)\n(Airplane Plant)"
                        }
                        else if experience == "별로 없어요" {
                            resultPlant = "백량금\n(Coralberry)"
                        }
                    }
                    else if lightCondition == "별로 안들어요" {
                    if experience == "많아요" {
                        resultPlant = "디펜바키아 '트로픽스노우'\n(Dumbcane)"
                    }
                    else if experience == "보통이에요" {
                        resultPlant = "쉐프렐라 '홍콩'\n(Dwarf Umbrella Tree)"
                    }
                    else if experience == "별로 없어요" {
                        resultPlant = "스킨답서스\n(Devil's Ivy)"
                    }
                }
            }
            else if size == "20평 이상" {
                    if lightCondition == "매우 잘들어요" {
                        if experience == "많아요" {
                            resultPlant = "페퍼민트\n(Peppermint)"
                        }
                        else if experience == "보통이에요" {
                            resultPlant = "팔손이\n(Paperplant)"
                        }
                        else if experience == "별로 없어요" {
                            resultPlant = "돈나무\n(MoneyTree)"
                        }
                    }
                    else if lightCondition == "보통이에요" {
                        if experience == "많아요" {
                            resultPlant = "클로로피텀 (접란)\n(Airplane Plant)"
                        }
                        else if experience == "보통이에요" {
                            resultPlant = "넉줄고사리\n(Squirrels-foot Fern)"
                        }
                        else if experience == "별로 없어요" {
                            resultPlant = "스킨답서스\n(Devil's Ivy)"
                        }
                    }
                    else if lightCondition == "별로 안들어요" {
                    if experience == "많아요" {
                        resultPlant = "백량금\n(Coralberry)"
                    }
                    else if experience == "보통이에요" {
                        resultPlant = "쉐프렐라 '홍콩'\n(Dwarf Umbrella Tree)"
                    }
                    else if experience == "별로 없어요" {
                        resultPlant = "스킨답서스\n(Devil's Ivy)"
                    }
                }
            }
            resultPlace = "부엌"
        }
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    
}
