import UIKit

let treeImage = UIImage(named: "tree.jpeg")
let treeImageView = UIImageView(image: treeImage)
treeImageView.alpha = 0.3

let babyImage = UIImage(named: "baby.jpg")
let babyImageView = UIImageView(image: babyImage)
babyImageView.alpha = 0.9

let heartImage = UIImage(named: "heart.png")
let heartImageView = UIImageView(image: heartImage)
heartImageView.frame = CGRect(x: 0, y: -40, width: 400, height: 500)
babyImageView.mask = heartImageView

let heartImageView2 = UIImageView(image: heartImage)
heartImageView2.frame = heartImageView.frame
heartImageView2.backgroundColor = UIColor.clear
treeImageView.addSubview(heartImageView2)

let messageLabel = UILabel(frame: CGRect(x: 15  , y: 370, width: 0, height: 0))
messageLabel.text = "My dear daughter:\nOne day, I counted your fingers and kissed each one.One day, we crossed the street, and you held my hand tight.Though I may not often say it, I do love you dearly.\nI love you three thousand.\nYours ever\nKai.W"
messageLabel.textColor = UIColor(red: 1, green: 0, blue: 0, alpha: 1)
messageLabel.font = UIFont(name: "Snell Roundhand Bold", size: 20)
messageLabel.numberOfLines = 0
let size = messageLabel.sizeThatFits(CGSize(width: 360, height: 0))
messageLabel.frame.size = size
messageLabel.sizeToFit()

let backgroundaView = UIView(frame: treeImageView.frame)
backgroundaView.addSubview(treeImageView)
backgroundaView.addSubview(babyImageView)
backgroundaView.addSubview(messageLabel)
backgroundaView.layer.borderWidth = 8
backgroundaView.layer.borderColor = UIColor.systemOrange.cgColor
//backgroundaView.layer.borderColor = CGColor(red: 1, green: 166/255, blue: 40/255, alpha: 1)

for i in 1...9 {
    let loveLabel = UILabel(frame: CGRect(x: i*40, y: 580, width: 0, height: 0))
    loveLabel.text = "❤️"
    loveLabel.font = UIFont.systemFont(ofSize: 20)
    loveLabel.transform = CGAffineTransform(rotationAngle: CGFloat.random(in: 0...(.pi*2)))
    loveLabel.sizeToFit()
    backgroundaView.addSubview(loveLabel)
}
backgroundaView.layer.cornerRadius = 50
backgroundaView.clipsToBounds = true
backgroundaView








