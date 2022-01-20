//
//  ViewController.swift
//  HomeWorkLesson6(task3)
//
//  Created by Виталий on 17.01.22.
//

import UIKit

class ViewController: UIViewController {
    private var labelMove: UILabel!
    
    private var upButton: UIButton!
    private var downButton: UIButton!
    private var leftButton: UIButton!
    private var rightButton: UIButton!
    
    //MARK: - ViewControllerLifeCicle
    //MARK: -
    
    override func loadView() {
        let customView = UIView(frame: UIScreen.main.bounds)
        
        upButton = UIButton()
        upButton.backgroundColor = .systemIndigo
        upButton.setTitle("Up", for: .normal)
        upButton.addTarget(self, action: #selector(onUpButton), for: .touchUpInside)
        customView.addSubview(upButton)
        
        downButton = UIButton()
        downButton.backgroundColor = .systemIndigo
        downButton.setTitle("Down", for: .normal)
        downButton.addTarget(self, action: #selector(onDownButton), for: .touchUpInside)
        customView.addSubview(downButton)
        
        rightButton = UIButton()
        rightButton.backgroundColor = .systemIndigo
        rightButton.setTitle("Right", for: .normal)
        rightButton.addTarget(self, action: #selector(onRightButton), for: .touchUpInside)

        customView.addSubview(rightButton)
        
        leftButton = UIButton()
        leftButton.backgroundColor = .systemIndigo
        leftButton.setTitle("Left", for: .normal)
        leftButton.addTarget(self, action: #selector(onLeftButton), for: .touchUpInside)

        customView.addSubview(leftButton)
        
        labelMove = UILabel()
        labelMove.backgroundColor = .systemCyan
        customView.addSubview(labelMove)
        
        view = customView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemGray
        // Do any additional setup after loading the view.
    }
    
    //MARK: - Layout
    //MARK: -
    
    override func viewWillLayoutSubviews() {
        let wigth: CGFloat = 60
        let hieght: CGFloat = 30
        
        upButton.frame = CGRect(x: view.bounds.minX + 30,
                                y: view.bounds.maxY - 70,
                                width: wigth,
                                height: hieght)
        
        var buttonDown = upButton.frame.offsetBy(dx: wigth + 30, dy: 0)
        buttonDown.size = CGSize(width: wigth, height: hieght)
        downButton.frame = buttonDown
        
        var buttonLeft = downButton.frame.offsetBy(dx: wigth + 30, dy: 0)
        buttonLeft.size = CGSize(width: wigth, height: hieght)
        leftButton.frame = buttonLeft
        
        var buttonRight = leftButton.frame.offsetBy(dx: wigth + 30, dy: 0)
        buttonRight.size = CGSize(width: wigth, height: hieght)
        rightButton.frame = buttonRight
        
        labelMove.frame = CGRect(x: view.bounds.midX - 25, y: view.bounds.midY - 25, width: 50, height: 50)

        labelMove.layer.cornerRadius = 0.5 * labelMove.bounds.size.width
        labelMove.clipsToBounds = true
        
    }

    //MARK: - Action
    //MARK: -
    
    @objc func onUpButton() {
        labelMove.frame = labelMove.frame.offsetBy(dx: 0, dy: -30)
    }
    @objc func onDownButton() {
        labelMove.frame = labelMove.frame.offsetBy(dx: 0, dy: 30)
    }
    @objc func onLeftButton() {
        labelMove.frame = labelMove.frame.offsetBy(dx: -30, dy: 0)
    }
    @objc func onRightButton() {
        labelMove.frame = labelMove.frame.offsetBy(dx: 30, dy: 0)

    }
}

