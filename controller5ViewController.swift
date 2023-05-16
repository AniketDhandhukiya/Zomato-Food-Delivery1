

import UIKit

class controller5ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    

    var array = ["1","2","3","4","5","6","7"]
    var array2 = ["8","9","10","11","12","13","14"]
    var imgArray = [101,102,103,104,105,106,107]
    @IBOutlet weak var cv1: UICollectionView!
    @IBOutlet weak var view1: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
     
        
    }
   
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return array.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cv1.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! menuCell
        cell.lb1.text = array[indexPath.row]
        cell.lb2.text = array2[indexPath.row]
        cell.imgview1.image = UIImage(named: imgArray[indexPath.row].description)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 398, height: 224)
    }


}
