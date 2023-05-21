
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
    var restauArray = [4,32,33,6,35,36,37,38,39,40,5,1,2,3,7,8,9,10]
    var selectedCell = 0
    var labelArray = ["J D Restaurants","Shree Sai Restaurants","McDoonald's","Mahadev Dalbaati","Taste Of Bhagwati","Chandan Bhojnalaya","Sarvottam Restaurants","Jay Jalaram Thali","Center Point","Tulsi Restaurant","Punjabi Dhaba","La Pino'z Pizza","Jeevandhara Restaurant","MK Sandwich","Octant Pizza","Anand Dhosa","Sasuma Gujarati Thali","Gita's Burger"]
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
        MyItem(image: "32", name: "Shree Sai Restaurants", time: "35-40 Min"),
        MyItem(image: "33", name: "McDoonald's", time: "25-30 Min"),
        //MyItem(image: "34", name: "Mahadev Dalbaati", time: "25-30 Min"),
        MyItem(image: "35", name: "Taste Of Bhagwati", time: "35-45 Min"),
        MyItem(image: "36", name: "Chandan Bhojnalaya", time: "30-45 Min"),
        MyItem(image: "37", name: "Sarvottam Restaurants", time: "30-45 Min"),
        MyItem(image: "38", name: "Jay Jalaram Thali", time: "30-45 Min"),
        MyItem(image: "39", name: "Center Point", time: "30-45 Min"),
        MyItem(image: "40", name: "Tulsi Restaurant", time: "30-45 Min"),

    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        showArr = backupArr
        cv.reloadData()
        //cv3.reloadData()        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.cv{
            return showArr.count
        }
       else if collectionView == self.cv3{
            return showArr.count
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
            //let item2 = showArr[indexPath.row]
            let cell3 = cv3.dequeueReusableCell(withReuseIdentifier: "cell3", for: indexPath) as! CollectionViewCell3
            cell3.layer.cornerRadius = 30
            cell3.layer.masksToBounds = true
            cell3.view22.layer.cornerRadius = 15
            cell3.view22.layer.masksToBounds = true
//            cell3.layer.borderColor = UIColor.red.cgColor
//            cell3.layer.borderWidth = 1
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
            return CGSize(width: 405, height: 235)
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
        //cv3.reloadData()
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.row == 0 {
        let nv = storyboard?.instantiateViewController(withIdentifier: "controller5ViewController") as! controller5ViewController
            navigationController?.pushViewController(nv, animated: true)
            nv.array3 = ["A classic cheesy Margherita Cant go wrong Fat14.3 per 100 g Protein-12.6 per 100 g Carbohydrate-39.2 per 100 g Sugar-0 per 100 g Calories-336 k.calNutritional information per 100g","A classic cheesy Margherita Cant go wrong Fat14.3 per 100 g Protein-12.6 per 100 g Carbohydrate-39.2 per 100 g Sugar-0 per 100 g Calories-336 k.calNutritional information per 100g","A classic cheesy Margherita Cant go wrong Fat14.3 per 100 g Protein-12.6 per 100 g Carbohydrate-39.2 per 100 g Sugar-0 per 100 g Calories-336 k.calNutritional information per 100g","A classic cheesy Margherita Cant go wrong Fat14.3 per 100 g Protein-12.6 per 100 g Carbohydrate-39.2 per 100 g Sugar-0 per 100 g Calories-336 k.calNutritional information per 100g","A classic cheesy Margherita Cant go wrong Fat14.3 per 100 g Protein-12.6 per 100 g Carbohydrate-39.2 per 100 g Sugar-0 per 100 g Calories-336 k.calNutritional information per 100g","A classic cheesy Margherita Cant go wrong Fat14.3 per 100 g Protein-12.6 per 100 g Carbohydrate-39.2 per 100 g Sugar-0 per 100 g Calories-336 k.calNutritional information per 100g","A classic cheesy Margherita Cant go wrong Fat14.3 per 100 g Protein-12.6 per 100 g Carbohydrate-39.2 per 100 g Sugar-0 per 100 g Calories-336 k.calNutritional information per 100g"]
            nv.array2 = ["₹145","₹275","₹195","₹139","₹195","₹79","₹295"]
            nv.array1 = ["Margherita Pizza","7 Cheesy Pizza","Spicy Cheesy","Capsicum & Paneer Pizza","Farm Villa Pizza","Capsicum Pizza","Perry Perry Pizza"]
            nv.imgArray = [101,102,103,104,105,106,107]
            nv.a = "La Pino'z Pizza"
            nv.b = "Pizza, Pasta, Italian"
            nv.c = "Varachha, Surat"
        }
        else if indexPath.row == 1 {
        let nv = storyboard?.instantiateViewController(withIdentifier: "controller5ViewController") as! controller5ViewController
            navigationController?.pushViewController(nv, animated: true)
            nv.array3 = ["Chief's Special","Paneer Special","Sweet Tasty","Spicy Taste, Paneer, Capsicum with Gravy","Jeevandhar Sp.","Rice with Tadka","dal Jeera rice"]
            nv.array2 = ["₹200","₹190","₹280","₹140","₹200","₹150","₹120"]
            nv.array1 = ["Punjabi Thali","Jeevandhara Thali","Paneer Handi","Gujarati Thali","Jeevandhara Special Dal Khichdi","Dal Fry","Masala Dosa"]
            nv.imgArray = [33333,33333,333333,33333,33333,33333,33333]
            nv.a = "Jeevandhara Restaurant"
            nv.b = "Punjabi, South Indian, Chinese"
            nv.c = "Varachha, Surat"
        }
        else if indexPath.row == 2 {
        let nv = storyboard?.instantiateViewController(withIdentifier: "controller5ViewController") as! controller5ViewController
            navigationController?.pushViewController(nv, animated: true)
            nv.array3 = ["[Spicy]House special schezwan sauce with veggies and cheese.","vegetables and cheese loaded with house special dressing.","","Open sub with tandoori and spicy touch with paneer and capsicum.","paneer cubes marianted with tandoori veg.","Our house special Russian salad between twop layers.","An italian classic in a asandwich twist."]
            nv.array2 = ["₹231","₹258","₹280","₹131","₹220","₹73","₹240"]
            nv.array1 = ["Schezwan Mayo Sandwich","Boss(Best Of Shakti Sandwich)","Mexican","Paneer Tandoori","Russian Mayo Sandwich","Bread Butter","Pizza Sandwich"]
            nv.imgArray = [501,502,503,504,505,506,507]
            nv.a = "M.K Sandwich"
            nv.b = "Sandwich, Fast Food, Beverages"
            nv.c = "Mota Varachha, Surat"
        }
    }
    
}
