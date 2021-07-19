



import UIKit
import SpriteKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
         let ancho =  750
         let alto = 1334
        
         let scene = GameScene(size: CGSize(width: ancho, height: alto))
        
        
        
            let skView = self.view as! SKView
            skView.showsFPS = true
            skView.showsNodeCount = true
            skView.ignoresSiblingOrder = true
            scene.scaleMode = .aspectFill
            skView.presentScene(scene)
      
     }

    
}
