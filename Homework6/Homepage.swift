//
//  ViewController.swift
//  Homework6
//
//  Created by İsmail Nermiş on 29.09.2023.
//

import UIKit

class Homepage: UIViewController {
    
    @IBOutlet weak var cicekCV: UICollectionView!
    @IBOutlet weak var flowerTV: UITableView!
    
    var flowersList = [Flowers]()
    var tableList = [TableFlower]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let f1 = Flowers(item: "item1")
        let f2 = Flowers(item: "item2")
        let f3 = Flowers(item: "item3")
        let f4 = Flowers(item: "item4")
        let f5 = Flowers(item: "item5")
        let f6 = Flowers(item: "item6")
        let f7 = Flowers(item: "item7")
        let f8 = Flowers(item: "item8")
        let f9 = Flowers(item: "item9")
        let f10 = Flowers(item: "item10")
        let f11 = Flowers(item: "item11")
        let f12 = Flowers(item: "item12")
        let f13 = Flowers(item: "item13")
        flowersList.append(f1)
        flowersList.append(f2)
        flowersList.append(f3)
        flowersList.append(f4)
        flowersList.append(f5)
        flowersList.append(f6)
        flowersList.append(f7)
        flowersList.append(f8)
        flowersList.append(f9)
        flowersList.append(f10)
        flowersList.append(f11)
        flowersList.append(f12)
        flowersList.append(f13)
        
        let t1 = TableFlower(item: "table1")
        let t2 = TableFlower(item: "table2")
        let t3 = TableFlower(item: "table3")
        let t4 = TableFlower(item: "table4")
        let t5 = TableFlower(item: "table5")
        let t6 = TableFlower(item: "table6")
        let t7 = TableFlower(item: "table7")
        let t8 = TableFlower(item: "table8")
        let t9 = TableFlower(item: "table9")
        let t10 = TableFlower(item: "table10")
        tableList.append(t1)
        tableList.append(t2)
        tableList.append(t3)
        tableList.append(t4)
        tableList.append(t5)
        tableList.append(t6)
        tableList.append(t7)
        tableList.append(t8)
        tableList.append(t9)
        tableList.append(t10)
        
        cicekCV.delegate = self
        cicekCV.dataSource = self
        flowerTV.delegate = self
        flowerTV.dataSource = self
        
        let design = UICollectionViewFlowLayout()
        
        design.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        design.minimumLineSpacing = 0
        design.minimumInteritemSpacing = 0
        
        //let viewWidth = UIScreen.main.bounds.width
        //let itemWidth = viewWidth / 5
        design.itemSize = CGSize(width: 63, height: 90)
        cicekCV.collectionViewLayout = design
    }
    
    
    
}

extension Homepage : UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return flowersList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "flowerCell", for: indexPath) as! FlowerCell
        let flower = flowersList[indexPath.row]
        
        cell.imageViewCicek.image = UIImage(named: flower.item!)
        
        
        return cell
    }
    
    
}

extension Homepage : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableFlowerCell") as! TableFlowerCell
        
        let flower = tableList[indexPath.row]
        cell.imageCell.image = UIImage(named: flower.item!)
        
        return cell
    }
    
    
}
