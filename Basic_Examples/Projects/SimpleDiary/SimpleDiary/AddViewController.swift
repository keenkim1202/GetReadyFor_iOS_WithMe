//
//  AddViewController.swift
//  SimpleDiary
//
//  Created by KEEN on 2022/03/12.
//

import UIKit

class AddViewController: UIViewController {
  
  let placeholder: String = "내용을 입력해주세요."
  let imagePicker = UIImagePickerController()
  
  @IBOutlet weak var imageView: UIImageView!
  @IBOutlet weak var textView: UITextView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    textView.delegate = self
    imagePicker.delegate = self
    
    imageView.contentMode = .scaleAspectFill
    
    if textView.text.isEmpty {
      textView.text = placeholder
      textView.textColor = .lightGray
    }
    
    title = "Add Diary"
    let rightBarButton = UIBarButtonItem(title: "완료", style: .done, target: self, action: #selector(doneButtonClicked))
    self.navigationItem.rightBarButtonItem = rightBarButton
  }
  
  func showAlertSheet() {
    let alertAction = UIAlertController(title: "사진 추가하기", message: "어떤 방식으로 사진을 추가하시겠습니까?", preferredStyle: .actionSheet)
    
    let cameraButton = UIAlertAction(title: "카메라", style: .default) { _ in
      print("camera on")
      // self.imagePicker.sourceType = .camera
      // self.present(self.imagePicker, animated: true, completion: nil)
    }
    
    let photolibraryButton = UIAlertAction(title: "사진첩", style: .default) { _ in
      print("photolibrary on")
      self.imagePicker.sourceType = .photoLibrary
      self.present(self.imagePicker, animated: true, completion: nil)
    }
    
    let cancelButton = UIAlertAction(title: "취소", style: .cancel, handler: nil)
    
    alertAction.addAction(cameraButton)
    alertAction.addAction(photolibraryButton)
    alertAction.addAction(cancelButton)
    
    self.present(alertAction, animated: true, completion: nil)
  }
  
  override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    self.view.endEditing(true)
  }
  
  @IBAction func addImageButtonClicked(_ sender: UIButton) {
    showAlertSheet()
  }
  
  @objc func doneButtonClicked() {
    print(">> done")
    Diary.diaryData.content = textView.text
    Diary.diaryData.writtenDate = Date()
    
    self.navigationController?.popViewController(animated: true)
  }
  
}

extension AddViewController: UITextViewDelegate {
  func textViewDidBeginEditing(_ textView: UITextView) {
    // textView의 내용이 placeholder와 같으면 지우기
    if textView.text == placeholder {
      textView.text = ""
      textView.textColor = .label
    }
  }
  
  func textViewDidEndEditing(_ textView: UITextView) {
    // textview가 비어있으면, placeholder 띄워주기
    if textView.text.isEmpty {
      textView.text = placeholder
      textView.textColor = .lightGray
    }
  }
}

extension AddViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
  func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
    print("picking finish")
    
    if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
      imageView.image = image
      Diary.diaryData.diaryImage = image
    } else {
      print("image picking fail.")
    }
    
    self.dismiss(animated: true, completion: nil)
  }
}
