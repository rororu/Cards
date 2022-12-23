//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white
        self.view = view
        
        createBezier(on: view)
    }
    
    private func createBezier(on view: UIView) {
        let shapeLayer = CAShapeLayer()
        view.layer.addSublayer(shapeLayer)
        
        shapeLayer.strokeColor = UIColor.gray.cgColor
        shapeLayer.lineWidth = 5
        shapeLayer.fillColor = UIColor.green.cgColor
        shapeLayer.lineDashPattern = [5]
        shapeLayer.lineDashPhase = 2
        
        shapeLayer.path = getPath().cgPath
    }
    
    private func getPath() -> UIBezierPath {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 50, y: 50))
        path.addLine(to: CGPoint(x: 150, y: 50))
        
        path.addLine(to: CGPoint(x: 150, y: 150))
        
        return path
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
