
import UIKit

struct MyItem {
    var image = ""
    var name = ""
    var time = ""
}

class zomatoMainPag: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout,UISearchBarDelegate {
   
    
    
    
    @IBOutlet weak var cv3: UICollectionView!
    @IBOutlet weak var searchbar: UISearchBar!
    @IBOutlet weak var cv2: UICollectionView!
    @IBOutlet weak var cv: UICollectionView!
    var imgarray = [11,12,13,14,15,16,17,18,19,20,21,22]
    var restauArray = [31,32,33,34,35,36,37,38,39,40,41]
    var labelArray = ["J D Restaurants","Shree Sai Restaurants","McDoonald's","Mahadev Dalbaati","Taste Of Bhagwati","Chandan Bhojnalaya","Sarvottam Restaurants","Jay Jalaram Thali","Center Point","Tulsi Restaurant","Punjabi Dhaba"]
    
    var showArr : [MyItem] = []
    let backupArr : [MyItem] = [
        MyItem(image: "1", name: "La Pino'z Pizza", time: "25-30 Min"),
        MyItem(image: "2", name: "Jeevandhara Restaurant", time: "30-35 Min"),
        MyItem(image: "3", name: "MK Sandwich", time: "40-45 Min"),
        MyItem(image: "4", name: "JD Restaurant", time: "25-30 Min"),
        MyItem(image: "5", name: "Punjabi Dhaba", time: "30-40 Min"),
        MyItem(image: "6", name: "Mahadev Dalbati", time: "30-40 Min"),
        MyItem(image: "7", name: "Octant Pizza", time: "25-30 Min"),
        MyItem(image: "8", name: "Anand Dhosa", time: "35-40 Min"),
        MyItem(image: "9", name: "Sasuma Gujarati Thali", time: "40-50 Min"),
        MyItem(image: "10", name: "Gita's Burger", time: "25-30 Min"),
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        showArr = backupArr
        cv.reloadData()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.cv{
            return showArr.count
        }
       else if collectionView == self.cv3{
            return labelArray.count
        }
        else {
            return imgarray.count
        }
       
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    
        if collectionView == self.cv{
            let item = showArr[indexPath.row]
            let cell = cv.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell1
            cell.backgroundColor = UIColor.systemGray6
            cell.layer.cornerRadius = 15
            cell.layer.masksToBounds = true
            cell.imageview.image = UIImage(named: item.image.description)
            cell.label1.text = item.name
            cell.label2.text = item.time
            return cell

        }
        
        else if collectionView == self.cv3{
            let cell3 = cv3.dequeueReusableCell(withReuseIdentifier: "cell3", for: indexPath) as! CollectionViewCell3
            cell3.layer.cornerRadius = 30
            cell3.layer.masksToBounds = true
            cell3.layer.borderColor = UIColor.red.cgColor
            cell3.layer.borderWidth = 1
            cell3.rateStar.layer.cornerRadius = 5
            cell3.rateStar.layer.masksToBounds = true
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
        print("abc")
        if searchBar.text == ""{
            showArr = backupArr
        }
        else{
            showArr = []
            for i in backupArr {
                if i.name.contains(searchbar.text!) {
                    showArr.append(i)
                }
            }
        }
        cv.reloadData()
        
    }
    
    
}
