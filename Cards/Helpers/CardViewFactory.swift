import UIKit
import Foundation

class CardViewFacroty {
    func get(_ shape: CardType, withSize size: CGSize, andColor color: CardColor) -> UIView {
        let frame = CGRect(origin: .zero, size: size)
        let viewColor = getViewColorBy(modelColor: color)
        
        
        switch shape {
        case .circle:
            return CardView<CircleShape>(frame: frame, color: viewColor)
        case .square:
            return CardView<SquareShape>(frame: frame, color: viewColor)
        case .cross:
            return CardView<CrossShape>(frame: frame, color: viewColor)
        case .fill:
            return CardView<FillShape>(frame: frame, color: viewColor)
        case .triangle:
            return CardView<TriangleShape>(frame: frame, color: viewColor)
        }
    }
    
    private func getViewColorBy(modelColor: CardColor) -> UIColor {
        switch modelColor {
        case .gray:
            return UIColor.gray
        case .black:
            return UIColor.black
        case .orange:
            return UIColor.orange
        case .purple:
            return UIColor.purple
        case .yellow:
            return UIColor.yellow
        case .red:
            return UIColor.red
        case .green:
            return UIColor.green
        case .brown:
            return UIColor.brown
        }
    }
}
