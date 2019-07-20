//
//  CustomKeyboardController.swift
//  KeyboardCustom
//
//  Created by ahmad shiddiq on 20/07/19.
//  Copyright © 2019 ahmad shiddiq. All rights reserved.
//

import Foundation
import UIKit

class CustomKeyboardController: UIViewController {
    let viewTop: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    let viewBottom: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let viewBorder: UIView = {
        let border = UIView()
        border.layer.borderWidth = 1
        border.layer.borderColor = UIColor.white.cgColor
        border.layer.cornerRadius = 8
        border.clipsToBounds = true
        return border
    }()
    
    let labeltitle: UILabel = {
       let title = UILabel()
        title.text = "SIMPLE CALCULATOR"
        title.font = UIFont.boldSystemFont(ofSize: 20)
        title.textAlignment = .center
        return title
    }()
    
    let labeldemmyInput: UILabel = {
        let demmy = UILabel()
        demmy.text = "0.0"
        demmy.textColor = UIColor.darkGray
        demmy.font = UIFont.systemFont(ofSize: 18)
        demmy.textAlignment = .left
        return demmy
    }()
    
    let labelinput: UILabel = {
        let input = UILabel()
        input.text = "0.0"
        input.font = UIFont.boldSystemFont(ofSize: 40)
        input.textAlignment = .right
        return input
    }()
    
    private let btnOne = UIButton.btnCustom(text: "1")
    private let btnTwo = UIButton.btnCustom(text: "2")
    private let btnThree = UIButton.btnCustom(text: "3")
    private let btnFour = UIButton.btnCustom(text: "4")
    private let btnFive = UIButton.btnCustom(text: "5")
    private let btnSix = UIButton.btnCustom(text: "6")
    private let btnSeven = UIButton.btnCustom(text: "7")
    private let btnEight = UIButton.btnCustom(text: "8")
    private let btnNine = UIButton.btnCustom(text: "9")
    private let btnZero = UIButton.btnCustom(text: "0")
    private let btnEquel = UIButton.btnCustom(text: "=")
    private let btnDel = UIButton.btnCustom(text: "Del")
    private let btnKurang = UIButton.btnCustom(text: "-")
    private let btnAdd = UIButton.btnCustom(text: "+")
    private let btnKali = UIButton.btnCustom(text: "x")
    private let btnBagi = UIButton.btnCustom(text: ":")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let gradient: CAGradientLayer = CAGradientLayer()
        gradient.colors = [ UIColor.darkGray.cgColor, UIColor.lightGray.cgColor]
        gradient.locations = [0.0 , 1.0]
        gradient.startPoint = CGPoint(x: 0.5, y: 1.0)
        gradient.endPoint = CGPoint(x: 0.4, y: 0.0)
        gradient.frame = view.layer.frame
        view.layer.insertSublayer(gradient, at: 0)
        setupView()
        setupAction()
    }
    
    private func setupView(){
        view.addSubview(viewTop)
        viewTop.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        viewTop.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        viewTop.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        viewTop.heightAnchor.constraint(equalToConstant: view.frame.height/2).isActive = true
        
        viewTop.addSubview(labeltitle)
        labeltitle.translatesAutoresizingMaskIntoConstraints = false
        labeltitle.topAnchor.constraint(equalTo: viewTop.topAnchor, constant: 24).isActive = true
        labeltitle.leadingAnchor.constraint(equalTo: viewTop.leadingAnchor, constant: 24).isActive = true
        labeltitle.trailingAnchor.constraint(equalTo: viewTop.trailingAnchor, constant: -24).isActive = true
        
        viewTop.addSubview(viewBorder)
        viewBorder.translatesAutoresizingMaskIntoConstraints = false
        viewBorder.topAnchor.constraint(equalTo: labeltitle.bottomAnchor, constant: 16).isActive = true
        viewBorder.leadingAnchor.constraint(equalTo: viewTop.leadingAnchor, constant: 16).isActive = true
        viewBorder.trailingAnchor.constraint(equalTo: viewTop.trailingAnchor, constant: -16).isActive = true
        viewBorder.bottomAnchor.constraint(equalTo: viewTop.bottomAnchor, constant: -16).isActive = true
        
        viewBorder.addSubview(labeldemmyInput)
        labeldemmyInput.translatesAutoresizingMaskIntoConstraints = false
        labeldemmyInput.topAnchor.constraint(equalTo: viewBorder.topAnchor, constant: 10).isActive = true
        labeldemmyInput.leadingAnchor.constraint(equalTo: viewBorder.leadingAnchor, constant: 10).isActive = true
        labeldemmyInput.trailingAnchor.constraint(equalTo: viewBorder.trailingAnchor, constant: -10).isActive = true
        
        viewBorder.addSubview(labelinput)
        labelinput.translatesAutoresizingMaskIntoConstraints = false
        labelinput.centerXAnchor.constraint(equalTo: viewBorder.centerXAnchor).isActive = true
        labelinput.centerYAnchor.constraint(equalTo: viewBorder.centerYAnchor).isActive = true
        labelinput.trailingAnchor.constraint(equalTo: viewBorder.trailingAnchor, constant: -8).isActive = true
        labelinput.leadingAnchor.constraint(equalTo: viewBorder.leadingAnchor, constant: 8).isActive = true
        labelinput.heightAnchor.constraint(equalToConstant: 150).isActive = true
        
        view.addSubview(viewBottom)
        viewBottom.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        viewBottom.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        viewBottom.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchorr).isActive = true
        viewBottom.heightAnchor.constraint(equalToConstant: view.frame.height/2).isActive = true
        
        let oneLayout = UIView()
        oneLayout.translatesAutoresizingMaskIntoConstraints = false
        let twoLayout =  UIView()
        twoLayout.translatesAutoresizingMaskIntoConstraints = false
        let threeLayout =  UIView()
        threeLayout.translatesAutoresizingMaskIntoConstraints = false
        let fourLayout = UIView()
        fourLayout.translatesAutoresizingMaskIntoConstraints = false
        
        viewBottom.addSubview(oneLayout)
        oneLayout.leadingAnchor.constraint(equalTo: viewBottom.safeAreaLayoutGuide.leadingAnchor).isActive = true
        oneLayout.trailingAnchor.constraint(equalTo: viewBottom.safeAreaLayoutGuide.trailingAnchor).isActive = true
        oneLayout.topAnchor.constraint(equalTo: viewBottom.safeAreaLayoutGuide.topAnchor).isActive = true
        oneLayout.heightAnchor.constraint(equalToConstant: view.frame.height/8).isActive = true
       
        oneLayout.addSubview(btnOne)
        btnOne.leadingAnchor.constraint(equalTo: oneLayout.leadingAnchor).isActive = true
        btnOne.topAnchor.constraint(equalTo: oneLayout.topAnchor).isActive = true
        btnOne.bottomAnchor.constraint(equalTo: oneLayout.bottomAnchor).isActive = true
        btnOne.widthAnchor.constraint(equalToConstant: view.frame.width/4).isActive = true
        
        oneLayout.addSubview(btnTwo)
        btnTwo.leadingAnchor.constraint(equalTo: btnOne.trailingAnchor).isActive = true
        btnTwo.topAnchor.constraint(equalTo: oneLayout.topAnchor).isActive = true
        btnTwo.bottomAnchor.constraint(equalTo: oneLayout.bottomAnchor).isActive = true
        btnTwo.widthAnchor.constraint(equalToConstant: view.frame.width/4).isActive = true
        
        oneLayout.addSubview(btnThree)
        btnThree.leadingAnchor.constraint(equalTo: btnTwo.trailingAnchor).isActive = true
        btnThree.topAnchor.constraint(equalTo: oneLayout.topAnchor).isActive = true
        btnThree.bottomAnchor.constraint(equalTo: oneLayout.bottomAnchor).isActive = true
        btnThree.widthAnchor.constraint(equalToConstant: view.frame.width/4).isActive = true
        
        oneLayout.addSubview(btnAdd)
        btnAdd.leadingAnchor.constraint(equalTo: btnThree.trailingAnchor).isActive = true
        btnAdd.topAnchor.constraint(equalTo: oneLayout.topAnchor).isActive = true
        btnAdd.bottomAnchor.constraint(equalTo: oneLayout.bottomAnchor).isActive = true
        btnAdd.widthAnchor.constraint(equalToConstant: view.frame.width/4).isActive = true
        
        viewBottom.addSubview(twoLayout)
        twoLayout.leadingAnchor.constraint(equalTo: viewBottom.safeAreaLayoutGuide.leadingAnchor).isActive = true
        twoLayout.trailingAnchor.constraint(equalTo: viewBottom.safeAreaLayoutGuide.trailingAnchor).isActive = true
        twoLayout.topAnchor.constraint(equalTo: oneLayout.bottomAnchor).isActive = true
        twoLayout.heightAnchor.constraint(equalToConstant: view.frame.height/8).isActive = true
        
        twoLayout.addSubview(btnFour)
        btnFour.leadingAnchor.constraint(equalTo: twoLayout.leadingAnchor).isActive = true
        btnFour.topAnchor.constraint(equalTo: twoLayout.topAnchor).isActive = true
        btnFour.bottomAnchor.constraint(equalTo: twoLayout.bottomAnchor).isActive = true
        btnFour.widthAnchor.constraint(equalToConstant: view.frame.width/4).isActive = true
        
        twoLayout.addSubview(btnFive)
        btnFive.leadingAnchor.constraint(equalTo: btnFour.trailingAnchor).isActive = true
        btnFive.topAnchor.constraint(equalTo: twoLayout.topAnchor).isActive = true
        btnFive.bottomAnchor.constraint(equalTo: twoLayout.bottomAnchor).isActive = true
        btnFive.widthAnchor.constraint(equalToConstant: view.frame.width/4).isActive = true
        
        twoLayout.addSubview(btnSix)
        btnSix.leadingAnchor.constraint(equalTo: btnFive.trailingAnchor).isActive = true
        btnSix.topAnchor.constraint(equalTo: twoLayout.topAnchor).isActive = true
        btnSix.bottomAnchor.constraint(equalTo: twoLayout.bottomAnchor).isActive = true
        btnSix.widthAnchor.constraint(equalToConstant: view.frame.width/4).isActive = true
        
        twoLayout.addSubview(btnKurang)
        btnKurang.leadingAnchor.constraint(equalTo: btnSix.trailingAnchor).isActive = true
        btnKurang.topAnchor.constraint(equalTo: twoLayout.topAnchor).isActive = true
        btnKurang.bottomAnchor.constraint(equalTo: twoLayout.bottomAnchor).isActive = true
        btnKurang.widthAnchor.constraint(equalToConstant: view.frame.width/4).isActive = true
        
        viewBottom.addSubview(threeLayout)
        threeLayout.leadingAnchor.constraint(equalTo: viewBottom.safeAreaLayoutGuide.leadingAnchor).isActive = true
        threeLayout.trailingAnchor.constraint(equalTo: viewBottom.safeAreaLayoutGuide.trailingAnchor).isActive = true
        threeLayout.topAnchor.constraint(equalTo: twoLayout.bottomAnchor).isActive = true
        threeLayout.heightAnchor.constraint(equalToConstant: view.frame.height/8).isActive = true
        
        threeLayout.addSubview(btnSeven)
        btnSeven.leadingAnchor.constraint(equalTo: threeLayout.leadingAnchor).isActive = true
        btnSeven.topAnchor.constraint(equalTo: threeLayout.topAnchor).isActive = true
        btnSeven.bottomAnchor.constraint(equalTo: threeLayout.bottomAnchor).isActive = true
        btnSeven.widthAnchor.constraint(equalToConstant: view.frame.width/4).isActive = true
        
        threeLayout.addSubview(btnEight)
        btnEight.leadingAnchor.constraint(equalTo: btnSeven.trailingAnchor).isActive = true
        btnEight.topAnchor.constraint(equalTo: threeLayout.topAnchor).isActive = true
        btnEight.bottomAnchor.constraint(equalTo: threeLayout.bottomAnchor).isActive = true
        btnEight.widthAnchor.constraint(equalToConstant: view.frame.width/4).isActive = true
        
        threeLayout.addSubview(btnNine)
        btnNine.leadingAnchor.constraint(equalTo: btnEight.trailingAnchor).isActive = true
        btnNine.topAnchor.constraint(equalTo: threeLayout.topAnchor).isActive = true
        btnNine.bottomAnchor.constraint(equalTo: threeLayout.bottomAnchor).isActive = true
        btnNine.widthAnchor.constraint(equalToConstant: view.frame.width/4).isActive = true
        
        threeLayout.addSubview(btnKali)
        btnKali.leadingAnchor.constraint(equalTo: btnNine.trailingAnchor).isActive = true
        btnKali.topAnchor.constraint(equalTo: threeLayout.topAnchor).isActive = true
        btnKali.bottomAnchor.constraint(equalTo: threeLayout.bottomAnchor).isActive = true
        btnKali.widthAnchor.constraint(equalToConstant: view.frame.width/4).isActive = true
        
        viewBottom.addSubview(fourLayout)
        fourLayout.leadingAnchor.constraint(equalTo: viewBottom.safeAreaLayoutGuide.leadingAnchor).isActive = true
        fourLayout.trailingAnchor.constraint(equalTo: viewBottom.safeAreaLayoutGuide.trailingAnchor).isActive = true
        fourLayout.topAnchor.constraint(equalTo: threeLayout.bottomAnchor).isActive = true
        fourLayout.heightAnchor.constraint(equalToConstant:view.frame.height/8).isActive = true
        
        fourLayout.addSubview(btnZero)
        btnZero.leadingAnchor.constraint(equalTo: fourLayout.leadingAnchor).isActive = true
        btnZero.topAnchor.constraint(equalTo: fourLayout.topAnchor).isActive = true
        btnZero.bottomAnchor.constraint(equalTo: fourLayout.bottomAnchor).isActive = true
        btnZero.widthAnchor.constraint(equalToConstant: view.frame.width/4).isActive = true
        
        fourLayout.addSubview(btnDel)
        btnDel.leadingAnchor.constraint(equalTo: btnZero.trailingAnchor).isActive = true
        btnDel.topAnchor.constraint(equalTo: fourLayout.topAnchor).isActive = true
        btnDel.bottomAnchor.constraint(equalTo: fourLayout.bottomAnchor).isActive = true
        btnDel.widthAnchor.constraint(equalToConstant: view.frame.width/4).isActive = true
        
        fourLayout.addSubview(btnEquel)
        btnEquel.leadingAnchor.constraint(equalTo: btnDel.trailingAnchor).isActive = true
        btnEquel.topAnchor.constraint(equalTo: fourLayout.topAnchor).isActive = true
        btnEquel.bottomAnchor.constraint(equalTo: fourLayout.bottomAnchor).isActive = true
        btnEquel.widthAnchor.constraint(equalToConstant: view.frame.width/4).isActive = true
        
        fourLayout.addSubview(btnBagi)
        btnBagi.leadingAnchor.constraint(equalTo: btnEquel.trailingAnchor).isActive = true
        btnBagi.topAnchor.constraint(equalTo: fourLayout.topAnchor).isActive = true
        btnBagi.bottomAnchor.constraint(equalTo: fourLayout.bottomAnchor).isActive = true
        btnBagi.widthAnchor.constraint(equalToConstant: view.frame.width/4).isActive = true
    }
    
    func setupAction(){
        btnOne.addTarget(self, action: #selector(one), for: .touchUpInside)
        btnTwo.addTarget(self, action: #selector(two), for: .touchUpInside)
        btnThree.addTarget(self, action: #selector(three), for: .touchUpInside)
        btnFour.addTarget(self, action: #selector(four), for: .touchUpInside)
        btnFive.addTarget(self, action: #selector(five), for: .touchUpInside)
        btnSix.addTarget(self, action: #selector(six), for: .touchUpInside)
        btnSeven.addTarget(self, action: #selector(seven), for: .touchUpInside)
        btnEight.addTarget(self, action: #selector(eight), for: .touchUpInside)
        btnNine.addTarget(self, action: #selector(nine), for: .touchUpInside)
        btnZero.addTarget(self, action: #selector(zero), for: .touchUpInside)
        
        btnKali.addTarget(self, action: #selector(kali), for: .touchUpInside)
        btnKurang.addTarget(self, action: #selector(kurang), for: .touchUpInside)
        btnBagi.addTarget(self, action: #selector(bagi), for: .touchUpInside)
        btnAdd.addTarget(self, action: #selector(add), for: .touchUpInside)
        
        btnEquel.addTarget(self, action: #selector(equel), for: .touchUpInside)
        btnDel.addTarget(self, action: #selector(del), for: .touchUpInside)
    }
    
    var operation = true
    var op = "+"
    var firstnumber: Double?
    
    
    func Addnumberfunc(number: String){
        var textNum = String(labelinput.text!)
        if  operation{
            textNum = ""
            operation = false
        }
        textNum = textNum + number
        labelinput.text = textNum
    }
    
    @objc func one() {
        Addnumberfunc(number: "1")
    }
    @objc func two() {
        Addnumberfunc(number: "2")
    }
    @objc func three() {
        Addnumberfunc(number: "3")
    }
    @objc func four() {
        Addnumberfunc(number: "4")
    }
    @objc func five() {
        Addnumberfunc(number: "5")
    }
    @objc func six() {
        Addnumberfunc(number: "6")
    }
    @objc func seven() {
        Addnumberfunc(number: "7")
    }
    @objc func eight() {
        Addnumberfunc(number: "8")
    }
    @objc func nine() {
        Addnumberfunc(number: "9")
    }
    @objc func zero() {
        Addnumberfunc(number: "0")
    }
    
    @objc func add() {
        op = "+"
        firstnumber = Double(labelinput.text!)
        operation = true
    }
    
    @objc func kurang() {
        op = "-"
        firstnumber = Double(labelinput.text!)
        operation = true
    }
    
    @objc func bagi() {
        op = ":"
        firstnumber = Double(labelinput.text!)
        operation = true
    }
    
    @objc func kali() {
        op = "x"
        firstnumber = Double(labelinput.text!)
        operation = true
    }
    
    @objc func del() {
        labelinput.text = "0.0"
        operation = true
    }
    
    @objc func equel() {
        let number2 = Double(labelinput.text!)
         labeldemmyInput.text = "\(firstnumber!)"+op+"\(number2!)"
        var result: Double
        
        switch op {
        case "+":
            result = firstnumber! + number2!
        case "-":
            result = firstnumber! - number2!
        case "x":
            result = firstnumber! * number2!
        case ":":
            result = firstnumber! / number2!
        default:
            result = 0.0
        }
        labelinput.text = "\(result)"
        
    }
    
  
     
    
}
