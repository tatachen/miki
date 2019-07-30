import UIKit
import PlaygroundSupport

let image = UIImage(named: "miki.jpeg")
let imageView = UIImageView(image: image)
let backgroundView = UIView(frame: CGRect(x: 0, y: 0, width: 380, height: 380))

backgroundView.backgroundColor = UIColor.white

// 兩隻耳朵
let alpha : CGFloat = 1
let aDegree : CGFloat = CGFloat.pi/180
let earView1 = UIView(frame: CGRect(x: 75, y: 2, width: 125, height: 125))
earView1.layer.cornerRadius = earView1.frame.width / 2
earView1.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: alpha)
backgroundView.addSubview(earView1)

let earView2 = UIView(frame: CGRect(x: 0, y: 148, width: 125, height: 125))
earView2.layer.cornerRadius = earView2.frame.width / 2
earView2.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: alpha)
backgroundView.addSubview(earView2)

let headPath = UIBezierPath(arcCenter: CGPoint(x: 220, y: 198), radius: 112, startAngle: aDegree*0, endAngle: aDegree*110, clockwise: false)
headPath.addQuadCurve(to: CGPoint(x: 287, y: 291), controlPoint: CGPoint(x: 235, y: 356))
headPath.addQuadCurve(to: CGPoint(x: 361, y: 225), controlPoint: CGPoint(x: 360, y: 284))
let headShape = CAShapeLayer()
headShape.path = headPath.cgPath
headShape.fillColor = UIColor(red: 0, green: 0, blue: 0, alpha: alpha).cgColor
backgroundView.layer.addSublayer(headShape)

// 臉白色的部分
let faceView = UIView(frame: imageView.frame)
faceView.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: alpha)
let facePath = UIBezierPath()
facePath.move(to: CGPoint(x: 323, y: 196))
facePath.addQuadCurve(to: CGPoint(x: 283, y: 112), controlPoint: CGPoint(x: 323, y: 140))
facePath.addQuadCurve(to: CGPoint(x: 265, y: 121), controlPoint: CGPoint(x: 259, y: 93))
facePath.addCurve(to: CGPoint(x: 192, y: 212), controlPoint1: CGPoint(x: 218, y: 52), controlPoint2: CGPoint(x: 130, y: 105))
facePath.addCurve(to: CGPoint(x: 179, y: 297), controlPoint1: CGPoint(x: 138, y: 178), controlPoint2: CGPoint(x: 81, y: 237))
facePath.addQuadCurve(to: CGPoint(x: 176, y: 283), controlPoint: CGPoint(x: 174, y: 287))
facePath.addQuadCurve(to: CGPoint(x: 282, y: 290), controlPoint: CGPoint(x: 230, y: 355))
facePath.addLine(to: CGPoint(x: 268, y: 290 ))
facePath.addQuadCurve(to: CGPoint(x: 178, y: 245), controlPoint: CGPoint(x: 205, y: 338))
facePath.addQuadCurve(to: CGPoint(x: 167, y: 228), controlPoint: CGPoint(x: 168, y: 238))
facePath.addQuadCurve(to: CGPoint(x: 272, y: 284), controlPoint: CGPoint(x: 205, y: 274))
facePath.addQuadCurve(to: CGPoint(x: 354, y: 230), controlPoint: CGPoint(x: 340, y: 291))
facePath.addQuadCurve(to: CGPoint(x: 335, y: 203), controlPoint: CGPoint(x: 324, y: 230))
facePath.addQuadCurve(to: CGPoint(x: 295, y: 210), controlPoint: CGPoint(x: 324, y: 196))
facePath.addQuadCurve(to: CGPoint(x: 302, y: 205), controlPoint: CGPoint(x: 297, y: 205))
facePath.addCurve(to: CGPoint(x: 317, y: 198), controlPoint1: CGPoint(x: 269, y: 118), controlPoint2: CGPoint(x: 310, y: 119))
facePath.close()
let faceShape = CAShapeLayer()
faceShape.path = facePath.cgPath;
faceView.layer.mask = faceShape
backgroundView.addSubview(faceView)

// 左眼
let eyeView = UIView(frame: CGRect(x: 246, y: 145, width: 48, height: 80))
eyeView.backgroundColor = UIColor.black
let eyePath = UIBezierPath(ovalIn: CGRect(x: 10, y: 0, width: 25, height: 74))
let eyeShape = CAShapeLayer()
eyeShape.path = eyePath.cgPath;
eyeView.layer.mask = eyeShape
eyeView.transform = CGAffineTransform(rotationAngle: -aDegree*18)
backgroundView.addSubview(eyeView)

// 黑鼻子
let noseView = UIView(frame: imageView.frame)
noseView.backgroundColor = UIColor.black
let nosePath = UIBezierPath(ovalIn: CGRect(x: 335, y: 91, width: 36, height: 60))
let noseShape = CAShapeLayer()
noseShape.path = nosePath.cgPath
noseView.layer.mask = noseShape
noseView.transform = CGAffineTransform(rotationAngle: aDegree*28)
backgroundView.addSubview(noseView)

// 粉粉的舌頭
let tongueView = UIView(frame: imageView.frame)
tongueView.backgroundColor = UIColor(red: 255/255, green: 134/255, blue: 149/255, alpha: alpha)
let tonguePath = UIBezierPath()
tonguePath.move(to: CGPoint(x: 202, y: 287))
tonguePath.addQuadCurve(to: CGPoint(x: 257, y: 294), controlPoint: CGPoint(x: 224, y: 310))
tonguePath.addQuadCurve(to: CGPoint(x: 255, y: 289), controlPoint: CGPoint(x: 260, y: 290))
tonguePath.addQuadCurve(to: CGPoint(x: 236, y: 292), controlPoint: CGPoint(x: 225, y: 272))
tonguePath.addQuadCurve(to: CGPoint(x: 202, y: 287), controlPoint: CGPoint(x: 218, y: 269))
let tongueShpae = CAShapeLayer()
tongueShpae.path = tonguePath.cgPath
tongueView.layer.mask = tongueShpae
backgroundView.addSubview(tongueView)

PlaygroundPage.current.liveView = backgroundView

