
import UIKit


private let reuseIdentifier = "celda"

class ColeccionVC: UICollectionViewController {

    var numeros:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for valor in 0...19{
            numeros.append("\(valor+1)")
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return numeros.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell:Celda = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! Celda
    
        // Configurar celda
        cell.imagenNum.image = UIImage(named: numeros[indexPath.row])
        
        return cell
    }

}
