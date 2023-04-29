
import UIKit

struct items{
    var img = ""
    var name = ""
    var location = ""
}

class diningPage: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    
    
    @IBOutlet weak var cv1: UICollectionView!
    
    var showArr : [items] = []
    var backupArr : [items] = [
        items(img: "71", name: "", location: ""),
        items(img: "72", name: "", location: ""),
        items(img: "73", name: "", location: ""),
        items(img: "74", name: "", location: ""),
        items(img: "75", name: "", location: ""),
        items(img: "76", name: "", location: ""),
        items(img: "77", name: "", location: ""),
        items(img: "78", name: "", location: ""),
        items(img: "79", name: "", location: ""),
        items(img: "80", name: "", location: ""),
//        items(img: <#T##String#>, name: <#T##String#>, location: <#T##String#>),
//        items(img: <#T##String#>, name: <#T##String#>, location: <#T##String#>),
//        items(img: <#T##String#>, name: <#T##String#>, location: <#T##String#>),
//        items(img: <#T##String#>, name: <#T##String#>, location: <#T##String#>),
//        items(img: <#T##String#>, name: <#T##String#>, location: <#T##String#>),
    ]
    
    @IBOutlet weak var iv1: UIImageView!
    @IBOutlet weak var iv2: UIImageView!
    @IBOutlet weak var iv3: UIImageView!
    @IBOutlet weak var iv4: UIImageView!
    @IBOutlet weak var iv5: UIImageView!
    @IBOutlet weak var iv6: UIImageView!
    @IBOutlet weak var iv7: UIImageView!

    


    override func viewDidLoad() {
        super.viewDidLoad()
        iv1.layer.cornerRadius = 10
        iv1.layer.masksToBounds = true
        iv2.layer.cornerRadius = 10
        iv2.layer.masksToBounds = true
        iv3.layer.cornerRadius = 10
        iv3.layer.masksToBounds = true
        iv4.layer.cornerRadius = 10
        iv4.layer.masksToBounds = true
        iv5.layer.cornerRadius = 10
        iv5.layer.masksToBounds = true
        iv6.layer.cornerRadius = 10
        iv6.layer.masksToBounds = true
        iv7.layer.cornerRadius = 10
        iv7.layer.masksToBounds = true
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return backupArr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
    }
}
