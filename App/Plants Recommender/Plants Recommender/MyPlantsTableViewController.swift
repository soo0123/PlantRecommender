//
//  MyPlantsTableViewController.swift
//  Plants_test1
//
//  Created by 이진휘 on 13/07/2019.
//  Copyright © 2019 MyAppDevelopment. All rights reserved.
//

import UIKit

var myPlants : [(NSString, [Float], NSString, NSString, NSString, NSString)] =
//[["이름", [0, 0, 0, 0, 0], "관리 난이도", "타입", "추천 장소", "주의"]]
[("남천\n(Nandina)", [5, 3, 3, 2, 3], "쉬움", "자생식물", "거실, 베란다", "햇빛 많은 곳에서 관리"),
 ("만병초\n(Rhododendron)", [2, 5, 3, 5, 5], "어려움", "자생식물", "베란다", "잎에 유독성분이 있음, 멸종위기종"),
 ("자금우\n(Marlberry)", [4, 5, 4, 5, 2], "쉬움", "자생식물", "공부방", "직사광선, 고건조 피하기"),
 ("백량금\n(Coralberry)", [5, 1, 4, 3, 2], "쉬움", "자생식물", "거실", "겉흙이 마르면 물 주기"),
 ("털머위\n(Leopard Plant)", [4, 2, 3, 4, 5], "보통", "자생식물", "공부방", "자주 분무하되 잎에 직접 분무하지 않기,직사광선 피하기"),
 ("마삭줄\n(Asiatic Jasmine)", [4, 3, 2, 5, 5], "보통", "자생식물", "공부방", "햇빛 많은 곳에서 관리"),
 ("아왜나무", [2, 2, 2, 1, 3], "쉬움", "자생식물", "", ""),
 ("팔손이\n(Paperplant)", [3, 3, 4, 4, 4], "쉬움", "자생식물", "베란다, 거실", "약간 건조하게 관리"),
("돈나무\n(MoneyTree)", [1, 1, 4, 2, 5], "쉬움", "자생식물", "거실, 베란다", "겉흙 마르면 물 주기, 햇빛 많은 곳에서 관리"),
("소나무\n(PineTree)", [4, 5, 5, 5, 3], "보통", "자생식물", "", ""),
("산호수\n(Tiny Ardisia)", [1, 1, 4, 4, 3], "쉬움", "자생식물", "거실, 주방", "겉흙 마르면 물 주기, 직사광선 피하기"),
("넉줄고사리\n(Squirrels-foot Fern)", [5, 1, 4, 3, 3], "쉬움", "자생식물(양치류)", "거실", "분무 자주해주기, 겉흙 마르면 물 주기"),
("봉의꼬리\n(SpiderBrake)", [5, 1, 2, 3, 4], "보통", "자생식물(양치류)", "거실", "분무 자주해주기"),
("보스톤고사리\n(Boston Fern)", [5, 4, 2, 2, 4], "보통", "자생식물(양치류)", "거실", "건조할 때 잎에 분무하기"),
("구아바\n(Guava)", [5, 2, 2, 4, 4], "보통", "목본성 관엽식물", "", ""),
("관음죽\n(Bamboo Palm)", [5, 3, 2, 4, 4], "보통", "목본성 관엽식물", "화장실", "암모니아 제거효과 탁월, 자주 관리하기"),
("멕시코소철\n(Zamia)", [5, 1, 2, 4, 3], "쉬움", "목본성 관엽식물", "거실, 베란다", "수명이 길고 구하기 쉬움, 잎 잘 닦아주기"),
("디지고데카\n(Aralia)", [5, 1, 2, 4, 2], "약간 어려움", "목본성 관엽식물", "거실", "분무 자주해주기"),
("인도고무나무\n(Ficus)", [4, 4, 4, 4, 3], "쉬움", "목본성 관엽식물", "거실", "물 너무 많이 주지 않기"),
("아이비\n(Ivy)", [3, 4, 4, 4, 5], "쉬움", "목본성 관엽식물", "공부방", "분무 자주 해주기"),
("드라세라 '마지나타'\n(Dragon Tree)", [2, 3, 2, 3, 3], "보통", "목본성 관엽식물", "", ""),
("벵갈고무나무\n(Banyan Fig)", [4, 1, 3, 5, 1], "보통", "목본성 관엽식물", "거실", "건조시 자주 분무, 습할 땐 환기"),
("벤자민고무나무\n(Weeping Fig)", [2, 4, 4, 3, 3], "보통", "목본성 관엽식물", "현관", "흙 촉촉하게 유지"),
("파키라\n(Water Chestnut)", [1, 1, 4, 1, 2], "약간 어려움", "목본성 관엽식물", "거실", "직사광선 피하기"),
("호야\n(Hoya Plant)", [1, 5, 3, 4, 2], "보통", "목본성 관엽식물", "거실", "자주 분무해주기"),
("쉐프렐라 '홍콩'\n(Dwarf Umbrella Tree)", [1, 1, 4, 4, 4], "보통", "목본성 관엽식물", "거실, 침실", "관리 소홀시 해충 잘 생김"),
("쉐프렐라 '액티노필라'\n(Umbrella Tree)", [1, 1, 4, 4, 4], "보통", "목본성 관엽식물", "거실, 침실, 베란다", ""),
("드라세나 '맛상게아나'\n(Dracaena Fragrans)", [1, 4, 1, 3, 5], "쉬움", "목본성 관엽식물", "거실", "흙 촉촉하게 유지"),
("드라세나 '와네키'\n(Dracaena)", [1, 3, 2, 3, 3], "보통", "목본성 관엽식물", "", ""),
("클로로피텀 (접란)\n(Airplanlant)", [5, 2, 4, 1, 4], "보통", "초본성 관엽식물", "거실, 주방", "공중걸이로 적합, 흙 촉촉하게 유지"),
("디펜바키아 '마리안느'\n(Dieffenbachia Maculata)", [5, 4, 2, 5, 1], "약간 어려움", "초본성 관엽식물", "거실", "분무 자주해주기, 독성식물임"),
("디펜바키아 '트로픽스노우'\n(Dumbcane)", [5, 4, 2, 5, 1], "약간 어려움", "초본성 관엽식물", "거실", "분무 자주해주기,독성식물임"),
("틸란드시아 '시아네아'\n(Pink Quill)", [5, 5, 3, 4, 2], "약간 어려움", "초본성 관엽식물", "거실", "분무 자주해주기"),
("틸란드시아 '이오난사'\n(Skyplant)", [5, 5, 3, 4, 2], "약간 어려움", "초본성 관엽식물", "거실", "분무 자주해주기"),
("수염 틸란드시아\n(Spanish Moss)", [5, 5, 3, 4, 2], "약간 어려움", "초본성 관엽식물", "거실", "분무 자주해주기"),
("안스리움\n(Flamingo Lily)", [5, 1, 5, 1, 4], "약간 어려움", "초본성 관엽식물", "화장실, 주방", "암모니아 제거 탁월, 분무하지 않기"),
("싱고니움\n(Arrowhead Vine)", [5, 1, 2, 3, 4], "약간 어려움", "초본성 관엽식물", "거실, 주방", "분무 자주해주기"),
("아글라오네마\n(Chinese Evergreens)", [3, 2, 2, 4, 3], "보통", "초본성 관엽식물", "공부방", "햇빛없이 잘자람, 분무하지 않기"),
("필로덴드론 '선라이트'\n(Heartleaf)", [3, 1, 3, 5, 3], "약간 어려움", "초본성 관엽식물", "거실 외 아무곳", "공기정화에 적당히 좋음"),
("필로덴드론 '셀륨'\n(Lacytree Philodendron)", [3, 1, 3, 5, 3], "약간 어려움", "초본성 관엽식물", "거실 외 아무곳", "공기정화에 적당히 좋음"),
("필로덴드론 '콩고'\n(Philodendron Congo)", [3, 1, 3, 5, 3], "약간 어려움", "초본성 관엽식물", "거실 외 아무곳", "공기정화에 적당히 좋음"),
("아레카야자\n(Areca Palm)", [2, 4, 2, 5, 5], "약간 어려움", "초본성 관엽식물", "거실", "흙 촉촉히 유지"),
("피닉스야자\n(Dwarf Date Palm)", [2, 5, 2, 3, 4], "쉬움", "초본성 관엽식물", "", ""),
("스킨답터스\n(Devil's Ivy)", [1, 3, 5, 5, 2], "보통", "초본성 관엽식물", "주방", "흙 촉촉히 유지, 재배와 관리가 쉬움"),
("칼라데아\n(Calatheas)", [1, 2, 2, 5, 1], "어려움", "초본성 관엽식물", "공부방", "집에서 키우기 어려움, 분무 자주해주기"),
("산세베리아\n(Sansevieria)", [1, 2, 2, 2, 1], "쉬움", "초본성 관엽식물", "", ""),
("관엽베고니아\n(Begonia)", [2, 2, 2, 3, 5], "약간 어려움", "초본성 관엽식물", "거실", "흙 촉촉히 유지"),
("꽃베고니아\n(Begonia)", [2, 2, 2, 3, 5], "약간 어려움", "초본성 관엽식물", "거실", "흙 촉촉히 유지"),
("스파티필럼\n(Peace Lily)", [1, 4, 4, 4, 4], "보통", "초본성 관엽식물", "", "클리브렌디와 마우나로아가 인기종"),
("피토니아\n(Fittonia)", [2, 5, 1, 5, 5], "쉬움", "초본성 관엽식물", "침실, 공부방", "직사광선 피하고, 자주 분무해주기"),
("페페로미아\n(Peperomia)", [4, 1, 2, 2, 2], "쉬움", "초본성 관엽식물", "거실", "2~3일에 한번 분무, 과습에 약함"),
("장미허브\n(Mexican Mint)", [4, 1, 3, 5, 5], "쉬움", "허브식물", "공부방", "습하면 안됨"),
("라벤더\n(Lavender)", [5, 4, 2, 4, 3], "어려움", "허브식물", "공부방", "흙 촉촉히 유지"),
("제라늄\n(Geranium)", [5, 5, 5, 5, 5], "쉬움", "허브식물", "베란다", "약간 건조함을 선호"),
("로즈마리\n(Rosemary)", [4, 5, 2, 5, 5], "쉬움", "허브식물", "거실", ""),
("애플민트\n(AppleMint)", [4, 5, 2, 4, 4], "보통", "허브식물", "거실", "흙 촉촉히 유지"),
("페퍼민트\n(Peppermint)", [3, 5, 5, 4, 4], "보통", "허브식물", "", ""),
("레몬버베나\n(Lemon BeeBrush)", [3, 5, 5, 4, 3], "쉬움", "허브식물", "거실, 베란다", "흙 촉촉히 유지, 과습 방지"),
("나도풍란\n(Orchid)", [5, 2, 2, 1, 3], "약간 어려움", "난식물", "침실, 거실", "흙 촉촉히 유지, 과습 방지"),
("호접란\n(Moth Orchid)", [3, 1, 3, 1, 1], "어려움", "난식물", "침실", "흙 촉촉히 유지, 밤에 광합성함"),
("심비디움\n(Cymbidium)", [1, 1, 2, 3, 5], "약간 어려움", "난식물", "베란다, 창가", ""),
("꽃아카다\n(Echeveria)", [3, 5, 3, 2, 1], "보통", "다육식뮬", "", ""),
("천대전금", [3, 1, 3, 1, 1], "보통", "다육식물", "", ""),
("연봉", [3, 5, 3, 1, 1], "보통", "다육식물", "", ""),
("벽어연", [3, 4, 3, 1, 1], "보통", "다육식물", "", ""),
("깃털이끼\n(Hypnales)", [3, 5, 2, 5, 5], "쉬움", "이끼류", "", ""),
("비단이끼\n(Silk Moss)", [3, 5, 2, 5, 5], "쉬움", "이끼류", "", ""),
("행운목\n(Dracaena Fragrans)", [1, 4, 1, 3, 5], "쉬움", "목본성 관엽식물", "거실", "흙 촉촉하게 유지")]

var livingRoomArray : NSMutableArray = []
var balconyArray : NSMutableArray = []
var studyRoomArray : NSMutableArray = []
var kitchenArray : NSMutableArray = []
var bedroomArray : NSMutableArray = []
var cellPlant : String = ""

var RoomArray : [NSMutableArray] = [balconyArray, livingRoomArray, studyRoomArray, kitchenArray, bedroomArray]

var isEmpty : [Bool] = [true, true, true, true, true]

class MyPlantsTableViewController: UITableViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Uncomment the following line to preserve selection between presentations
        self.clearsSelectionOnViewWillAppear = false
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        
        return RoomArray.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        var rows : Int = RoomArray[section].count
        
        if isEmpty[section] {
            rows = 1
        }

        return rows
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        var sectionTitle : String = ""
        
        if section == 0 {
            sectionTitle =  "베란다(Patio)"
        }
        else if section == 1 {
            sectionTitle =  "거실(Living Room)"
        }
        else if section == 2 {
            sectionTitle =  "서재(Library)"
        }
        else if section == 3 {
            sectionTitle =  "침실(Bedroom)"
        }
        else if section == 4 {
            sectionTitle =  "부엌(Kitchen)"
        }
        return sectionTitle
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Plants", for: indexPath) as! MyPlantsTableViewCell
        
        cell.selectionStyle = .none
        
        // Configure the cell...
        tableView.rowHeight = 80
        tableView.sectionFooterHeight = CGFloat(28)
        tableView.sectionHeaderHeight = CGFloat(28)
        
        if isEmpty[indexPath.section] {
            cell.cellPlantName.text = "식물을 추가하세요"
            //cell.cellPlantImage.image = nil
        }
        else {
            cell.cellPlantName.text = (RoomArray[indexPath.section][indexPath.row] as! String)
            let fullNameArr : [String] = (RoomArray[indexPath.section][indexPath.row] as! String).components(separatedBy: "\n")
            let imageName = fullNameArr[0]
            cell.cellPlantImage.image = UIImage(named: imageName)
        }
        
        //cell.textLabel?.alignmentRect(forFrame: CGRect(x: 114, y: 12, width: 184, height: 55))
        
        return cell
    }
    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete {
            
            // Delete the row from the data source
            if isEmpty[indexPath.section] {
                
            }
            else if RoomArray[indexPath.section].count == 1 {
                RoomArray[indexPath.section].removeObject(at: indexPath.row)
                isEmpty[indexPath.section] = true
                self.tableView.reloadData()
            }
            else {
                RoomArray[indexPath.section].removeObject(at: indexPath.row)
                tableView.deleteRows(at: [indexPath], with: .fade)
            }
        }
            /*RoomArray[indexPath.section].removeObject(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }*/
        else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    

    
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        if self.tableView.indexPathForSelectedRow != nil {
            
            if isEmpty[self.tableView.indexPathForSelectedRow!.section] {
                cellPlant = ""
            }
            else {
                cellPlant = RoomArray[self.tableView.indexPathForSelectedRow!.section][self.tableView.indexPathForSelectedRow!.row] as! String
            }
        }
    }

}
