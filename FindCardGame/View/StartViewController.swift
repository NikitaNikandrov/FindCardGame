//
//  ViewController.swift
//  FindCardGame
//
//  Created by Никита on 19.09.2022.
//

import UIKit
import SnapKit

class StartViewController: UIViewController {
    
    private let startBotton = UIButton(type: .system)
    private let scoreLabel = UILabel()
    let scoreValueLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initStartVC()
    }

    private func initStartVC(){
        startBotton.setTitle("Start", for: .normal)
        startBotton.tintColor = .white
        startBotton.backgroundColor = .gray
        startBotton.layer.cornerRadius = 20
        view.addSubview(startBotton)
        startBotton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
            make.height.equalTo(40)
            make.width.equalTo(100)
        }
        
        scoreLabel.text = "Total score:"
        view.addSubview(scoreLabel)
        scoreLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().inset(200)
        }
        
        scoreValueLabel.text = "150"
        view.addSubview(scoreValueLabel)
        scoreValueLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(scoreLabel).inset(50)
        }
    }
}

