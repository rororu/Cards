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
        
        //MARK: - Two treangle
        let shapeLayer = CAShapeLayer()
        view.layer.addSublayer(shapeLayer)
        
        shapeLayer.strokeColor = UIColor.gray.cgColor
        shapeLayer.lineWidth = 5
        shapeLayer.fillColor = UIColor.green.cgColor
        
        shapeLayer.path = getPath().cgPath
        
        //MARK: - Rectangle
        let rectangle = CAShapeLayer()
        shapeLayer.addSublayer(rectangle)
        
        rectangle.fillColor = UIColor.yellow.cgColor
        rectangle.lineWidth = 5
        rectangle.strokeColor = UIColor.gray.cgColor
        
        rectangle.path = getRect().cgPath
        
        //MARK: - Arc
        let arc = CAShapeLayer()
        shapeLayer.addSublayer(arc)
        
        arc.fillColor = UIColor.blue.cgColor
        arc.strokeColor = UIColor.gray.cgColor
        arc.lineWidth = 5
        
        arc.path = getArc().cgPath
    }
    
    private func getPath() -> UIBezierPath {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 50, y: 50))
        path.addLine(to: CGPoint(x: 150, y: 50))
        
        path.addLine(to: CGPoint(x: 150, y: 150))
        path.close()
        
        path.move(to: CGPoint(x: 50, y: 70))
        path.addLine(to: CGPoint(x: 150, y: 170))
        path.addLine(to: CGPoint(x: 50, y: 170))
        path.close()
        
        return path
    }
    
    private func getRect() -> UIBezierPath {
        let rect = CGRect(x: 165, y: 50, width: 200, height: 100)
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.bottomLeft, .topRight], cornerRadii: CGSize(width: 30, height: 0))
        
        return path
    }
    
    private func getArc() -> UIBezierPath {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 50, y: 200))
        path.addCurve(to: CGPoint(x: 150, y: 340), controlPoint1: CGPoint(x: 100, y: 200), controlPoint2: CGPoint(x: 80, y: 360))
        
        return path
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
