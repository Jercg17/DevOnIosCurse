import SpriteKit

class GameScene: SKScene {
    var ship:Int = 0
    override func didMove(to view: SKView) {
        self.backgroundColor = UIColor.darkGray
        let fondo = SKSpriteNode(imageNamed: "fondo2")
        fondo.position = CGPoint(x: self.frame.midX, y: self.frame.midY)
        fondo.zPosition = -1
        self.addChild(fondo)
        let num1 = SKSpriteNode(imageNamed: "1")
        num1.position = CGPoint(x: self.frame.midX, y: self.frame.midY*1.2)
        self.addChild(num1)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: self)
            print(location)
            let num2:SKSpriteNode
            if ship == 0{
                num2 = SKSpriteNode(imageNamed: "Spaceship")
            }else if ship > 10 {
                num2 = SKSpriteNode(imageNamed: "3")
            }else {
                num2 = SKSpriteNode(imageNamed: "2")
            }
            num2.position = CGPoint(x: location.x, y: location.y)
            self.addChild(num2)
            ship+=1;
        }
    }
    override func update(_ currentTime: CFTimeInterval) {
    }
}
