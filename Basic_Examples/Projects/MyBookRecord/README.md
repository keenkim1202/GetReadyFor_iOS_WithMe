# 도서목록 앱
> starter 파일을 다운받아 진행하세요. 화면 UI는 실행 영상을 참고해서 구성해주세요 :)
> 과제가 어렵다면 🌟 표시된 사항은 제외하고 구현해보세요.

## 실행 영상

<img src="https://user-images.githubusercontent.com/59866819/204872037-8f105c58-e383-48c5-87d7-3a405a201fc5.mp4">

## 화면 구성
- `MainViewController` (도서 목록 화면)
- `DetailViewController` (도서 상세 화면)
- `AddViewController` (도서 추가 화면)

## 기능 명세
### 모델
- `Book` 구조체 안에 static(타입 프로퍼티)를 활용하여 데이터를 저장합니다.
  - 책 제목(title), 저자(author), 책표지 이미지(coverImage), 책소개(introduction) 정보를 담고 있는 모델을 만들어보세요.
  - 도서 목록은 Book.swift 하단의 주석 부분을 참고하세요. (출처: 알라딘에서 발췌)
  - 도서 목록 배열의 이름은 `BookData`로 명시해주세요.
- 기본으로 제공되는 표지 이미지는 `Assets`에 들어있습니다.
  - 새로운 이미지를 앨범으로부터 불러와 저장하고자 할 때, 책 이름을 `파일명`으로 저장해주세요.
  - 이미지명은 책 이름과 같고, 책 이름에 공백이 있을 경우 `-`로 대체되어 있습니다.

```
예시)
책 제목: 별이 빛나는 밤에
이미지명: 별이-빛나는-밤에
```
### 공통
- 책 제목과 일치하는 표지 이미지가 존재하지 않는 경우, 시스템 이미지(`book.closed.fill`) 을 보여줍니다.

### 도서 목록 화면
> navigationBar에 "나의 도서 목록" 이라는 타이틀을 보여줍니다.
- BookData에 저장된 도서 목록을 tableView에 보여줍니다.
- 오른쪽 상단의 `+` 버튼을 통해 새로운 도서를 추가할 수 있습니다.
  - `+` 버튼을 누르면 `도서 추가` 화면으로 이동합니다.
- 목록에서 도서 항목을 누르면 `도서 상세` 화면으로 이동합니다.

### 도서 추가 화면
> navigationBar에 "도서 추가하기" 이라는 타이틀을 보여줍니다.
- 이미지를 클릭하면 사진 앨범으로부터 이미지를 선택할 수 있습니다. 🌟
  - 이미지를 선택하지 않아도 추가가 가능합니다.
- 책 제목, 저자, 책 소개를 작성하지 않으면 저장할 수 없습니다.
  - 이 경우, `"일부 항목이 비어있습니다. 마저 작성해주세요."` 라는 경고창(alert)를 띄워주세요.
- 오른쪽 상단의 `"추가하기"` 버튼을 통해 작성한 도서 정보를 저장할 수 있습니다.
  - 새로운 도서 정보는 `도서 목록`의 최상단에 뜨도록 해주세요. 🌟
  - 만약 이미지를 저장하는데 실패하는 경우, `"이미지 저장에 실패했습니다. 다시 시도해 주세요."` 라는 경고창(alert)를 띄워주세요. 🌟
  - 성공적으로 저장한 경우, `도서 목록` 화면으로 돌아옵니다.

### 도서 상세 화면
> navigationBar에 "상세 정보" 이라는 타이틀을 보여줍니다.
- 목록에서 누른 도서에 대한 정보를 화면에 보여줍니다.
- 화면 하단에 `"도서 정보 삭제"` 버튼을 통해 도서 목록에서 삭제할 수 있습니다.
  - 버튼을 누를 시, `"정말 삭제하시겠습니까?"` 라는 경고창(alert)를 띄워주세요.
  - `"취소"`를 누르면 상세 화면에 그대로 있고, `"삭제"` 버튼을 누르면 도서 정보를 삭제하고 `도서 목록` 화면으로 돌아옵니다.

## 추가 도전 과제
- 상세 정보 화면의 오른쪽 상단에 `"수정"` 버튼을 추가하세요.
  - 버튼을 누르면 버튼명이 `"저장"` 으로 바뀌고, 도서 정보를 수정할 수 있게 됩니다.
  - `"저장"` 버튼을 누르면 수정된 도서 정보가 도서 목록에 반영됩니다.
- 수정 중간에 뒤로 갈 수 없도록 왼쪽 상단의 `뒤로 가기` 버튼을 비활성화 해주세요.