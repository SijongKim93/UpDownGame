//
//  ViewController.swift
//  UpDownGame
//
//  Created by 김시종 on 3/3/24.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    
    
    //컴퓨터가 랜덤으로 숫자 선택 1~10
    var comNumber = Int.random(in: 1...10)
//    var myNumber: Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 메인레이블에 "선택하세요"
        mainLabel.text = "선택하세요"
        // numberLable 은 공백 ""
        numberLabel.text = ""
        
        
    }


    @IBAction func buttonTapped(_ sender: UIButton) {
        // 버튼의 숫자를 가져와야함
        let numString = sender.currentTitle!
        // 파라미터.현재타이틀
        // numberLabel 이 선택된 숫자에 맞게 변경해야함
        numberLabel.text = numString
        // 선택한 숫자를 변수에다가 저장
//        guard let num = Int(numString) else { return }
//        myNumber = num
        
    }
    
    
    @IBAction func selectButtonTapped(_ sender: UIButton) {
        // 컴퓨터의 숫자와 내가 선택한 숫자 비교 UP / Down / Bingo (메인레이블에)
        guard let myNumString = numberLabel.text else { return }
        // 숫자레이블에 있는 문자열 가져오기(옵셔널 벗기기)
        // 타입 변환 (문자열 -> 정수)
        guard let myNumber = Int(myNumString) else { return }
        
        
        if comNumber > myNumber {
            mainLabel.text = "Up"
        } else if comNumber < myNumber {
            mainLabel.text = "Down"
        } else {
            mainLabel.text = "Bingo😁"
        }
        
        
        
    }
    
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        // 메인레이블 "선택하세요"
        // 숫자 레이블 다시 빈공간
        mainLabel.text = "선택하세요"
        numberLabel.text = ""
        // 컴퓨터 랜덤숫자 다시 선택
        comNumber = Int.random(in: 1...10)
        
        
        
        
    }
    
}

