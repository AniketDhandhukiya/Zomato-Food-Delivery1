//
//  zomatoMainPage.swift
//  Zomato-Food Delivery
//
//  Created by R83 on 17/04/23.
//

import UIKit


struct Elements{
    var array1 = ["La Pino'z Pizza","Jeevandhara Restaurant","MK Sandwich","JD Restaurant","Punjabi Dhaba","Mahadev Dalbati","Octant Pizza","Anand Dhosa","Sasuma Gujarati Thali","Gita's Burger"]
    var array2 = ["25-30 min","30-35 min","40-45 min","25-30 min","30-40 min","30-40 min","25-30 min","35-40 min","40-50 min","25-30 min"]
}
class zomatoMainPag: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout,UISearchBarDelegate {
   
    
    
    
    var arrrrrr : [Elements] = []
    var araaaay : [Elements] = []
    
    @IBOutlet weak var cv3: UICollectionView!
    @IBOutlet weak var searchbar: UISearchBar!
    @IBOutlet weak var cv2: UICollectionView!
    @IBOutlet weak var cv: UICollectionView!
    var arr = [1,2,3,4,5,6,7,8,9,10]
    var imgarray = [11,12,13,14,15,16,17,18,19,20,21,22]
    var restauArray = [31,31,31,31,31,31,31,31,31,31,31]
    var labelArray = ["J D Restaurants","Shree Sai Restaurants","McDoonald's","Mahadev Dalbaati","Taste Of Bhagwati","Chandan Bhojnalaya","Sarvottam Restaurants","Jay Jalaram Thali","Center Point","Tulsi Restaurant","Punjabi Dhaba"]
    var arr1 = ["La Pino'z Pizza","Jeevandhara Restaurant","MK Sandwich","JD Restaurant","Punjabi Dhaba","Mahadev Dalbati","Octant Pizza","Anand Dhosa","Sasuma Gujarati Thali","Gita's Burger"]
    var arr2 = ["25-30 min","30-35 min","40-45 min","25-30 min","30-40 min","30-40 min","25-30 min","35-40 min","40-50 min","25-30 min"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.cv{
            return arr.count
        }
       else if collectionView == self.cv3{
            return labelArray.count
        }
        else {
            return arr2.count
        }
       
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    
        if collectionView == self.cv{
            
            let cell = cv.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell1
            cell.backgroundColor = UIColor.systemGray6
            cell.layer.cornerRadius = 15
            cell.layer.masksToBounds = true
            cell.imageview.image = UIImage(named: arr[indexPath.row].description)
            cell.label1.text = arr1[indexPath.row]
            cell.label2.text = arr2[indexPath.row]
            return cell

        }
        
        else if collectionView == self.cv3{
            let cell3 = cv3.dequeueReusableCell(withReuseIdentifier: "cell3", for: indexPath) as! CollectionViewCell3
            cell3.labelOnImage.text = labelArray[indexPath.row]
            cell3.imageViewres.image = UIImage(named: restauArray[indexPath.row].description)

            return cell3
        }
        let cell2 = cv2.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath) as! CollectionViewCell2
            cell2.imageview2.image = UIImage(named: imgarray[indexPath.row].description)
        cell2.layer.cornerRadius = 45
        cell2.layer.masksToBounds = true
        return cell2
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == self.cv{
            return CGSize(width: 235, height: 91)
        }
        else if collectionView == self.cv3{
            return CGSize(width: 391, height: 184)
        }
        return CGSize(width: 96, height: 89)
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        arrrrrr = araaaay.filter({ i in
            return i.array1.contains(searchbar.text!)
        })
        cv.reloadData()
        
    }
    
    
}
