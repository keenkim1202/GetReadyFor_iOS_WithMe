//
//  TranslateViewController.swift
//  APIPractice
//
//  Created by KEEN on 2022/06/03.
//

import UIKit

// 카카오 번역 API를 통해
// translateButton을 누르면,
// originalTextView에 입력한 내용을 번역한 문장이 translatedLabel에 보이도록 구현하기.

class TranslateViewController: UIViewController {
    @IBOutlet weak var originalTextView: UITextView!
    @IBOutlet weak var translatedLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func trnalateButtonClicked(_ sender: UIButton) {
        
    }
}
