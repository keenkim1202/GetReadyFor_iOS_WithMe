# Get Ready For iOS With Me

> 저와 함께 iOS 개발자가 되는 첫걸음을 시작해보세요!

iOS 개발자를 꿈꾸는 분들 환영합니다 🥳
미래의 저의 후배님들 이군요? ^^  
무엇을 공부하고 어떻게 해야할지 고민이 많으시죠?? 제가 경험한 내용을 바탕으로 일종의 로드맵(?) 가이드(?)를 작성해볼까 합니다.  
도움이 되셨으면 좋겠고 또 궁금한게 있으시면 이슈로 남겨주세요 :)
```
🤝 또한 PR은 언제나 환영입니다. 소소한 것이라도 iOS에 입문하시는 분들과 공유하고 싶은 내용이 있다면 PR 남겨주세요!
```

## 폴더 소개
- [예제 프로젝트 문서](/예제프로젝트_문서/)
    - 제가 제작한 예제 프로젝트 UI 및 기능 명세서입니다.
    - 어떤 프로젝트를 해야할지 막막할 때, 기능 명세를 어떻게 하면 좋을지 모르겠을 때 참고하세요. 혹은 직접 구현해보세요!
- [초보자를 위한 실습 프로젝트 코드 모음](/Basic_Examples/)
    - iOS 입문자분에게 알려드리면서 함께 한 예제들입니다. (공부를 어느 정도 하신분들께는 매우 쉬울 수 있습니다)
    - 필요한 부분의 프로젝트를 살펴보며 코드를 따라하고 로직을 이해해보세요.


## 목차
- 공통 개발자 관련..
    - [개발 관련 읽어두면 좋은 서적을 추천해주세요!](#개발-관련-서적-추천)
    - [아무래도 비전공자보다 전공자가 유리하겠죠..?](#아무래도-비전공자보다-전공자가-유리하겠죠)

- iOS 관련..
    - [뭐부터 공부하면 좋을까요?](#뭐부터-공부하면-좋을까요)
        - [무엇부터 공부하면 모를 때 보면 좋은 애플 기본 라이브러리 오브젝트 및 문법 공부 목록](#무엇부터-공부하면-모를-때-보면-좋은-애플-기본-라이브러리-오브젝트-및-문법-공부-목록)
    - [프로젝트를 하고 싶은데 Xcode의 X도 모르겠어요..](#프로젝트를-하고-싶은데-xcode의-x도-모르겠어요)
    - [프로젝트를 처음 생성하면 나오는 파일들은 뭐하는 녀석들인가요?](#프로젝트를-처음-생성하면-나오는-파일들은-뭐하는-녀석들인가요)
    - [iOS는 코딩테스트 언어는 무엇으로 하면 좋나요, 아무거나 상관없나요?](#ios는-코딩테스트-언어는-무엇으로-하면-좋나요-아무거나-상관없나요)
    - [취업준비할 때 무엇을 준비 하면 될까요?](#취업준비할-때-무엇을-준비-하면-될까요)
    - [찾아보니까 하이브리드앱도 있던데 네이티브랑 뭐가 다르고 장단점이 무엇인가요?](#찾아보니까-하이브리드앱도-있던데-네이티브랑-뭐가-다르고-장단점이-무엇인가요)
    - [UIKit은 뭐고 SwiftUI는 무엇인가요? 둘다 모른다면 무엇을 공부하는게 좋을까요?](#uikit은-뭐고-swiftui는-무엇인가요-둘다-모른다면-무엇을-공부하는게-좋을까요)

</br>
</br>

## 개발 관련 서적 추천
> 도서는 난이도를 표시해두었습니다.   
> 대부분의 책은 주니어, 시니어 가리지 않고 바이블 처럼 읽는 책이지만,   
> 입문자의 경우 판단하기 어려우므로 입문자가 읽기 쉬운, 좋은 도서는 별점이 낮습니다.

- [ 클린 시리즈 ]
    - [클린 코드](https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=34083680) `⭐️⭐️`
    - [클린 아키텍처](https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=202322454) `⭐️⭐️⭐️⭐️`
- [ 프로그래머를 위한 지침서 ]
    - [실용주의 프로그래머](https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=288786463) `⭐️`
    - [프로그래밍 수련법](https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=1711579) `⭐️` 
    - [조엘 온 소프트웨어](http://www.yes24.com/Product/Goods/1469763) `⭐️`
- [ 아키텍처 ]
    - [리팩터링](https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=236186172) `⭐️⭐️⭐️⭐️`
    - [컴퓨터 프로그램의 구조와 해석](https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=75122015) `⭐️⭐️⭐`
- [ 프로그래밍 패러다임 ]
    - [객체지향의 사실과 오해](https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=60550259) `⭐️⭐️⭐️`
    - [오브젝트](https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=193681076) `⭐️⭐️⭐️⭐️`
    - [함수형 사고](https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=85956851) `⭐️⭐️⭐️`
    - [쏙쏙 들어오는 함수형 코딩](https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=292349292) `⭐️⭐️⭐️`
- [ CS 지식 채우기 ]
    - [자료구조와 함께 배우는 알고리즘 입문 - Python](https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=246435695) `⭐️⭐️`
    - [Introduction To Algorithms - C](https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=43636357) `⭐️⭐️⭐️⭐️`
    - [이것이 코딩테스트다 - Python](https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=247882118&start=slayer) `⭐️⭐️`
- [ 개발 프로세스 & 방법론 ]
    - [테스트 주도 개발(TDD)](https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=37469717) `⭐️⭐️⭐️`
- [ Swift 관련 ]
    - [꼼꼼한 재은씨 시리즈](https://www.aladin.co.kr/search/wsearchresult.aspx?SearchTarget=Book&SearchWord=%EA%BC%BC%EA%BC%BC%ED%95%9C+%EC%9E%AC%EC%9D%80+%EC%94%A8%EC%9D%98+%EC%8A%A4%EC%9C%84%ED%94%84%ED%8A%B8&x=0&y=0) `⭐️`
    - [스위프트 프로그래밍](http://www.kyobobook.co.kr/product/detailViewKor.laf?mallGb=KOR&ejkGb=KOR&barcode=9791162242223) `⭐️⭐️`
- [ 기타 서적 ]
    - [나는 LINE 개발자 입니다](https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=204587884) `⭐️`
    - [함께 자라기](https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=175977462&start=slayer) `⭐️`

</br>

[⬆️ 목차로 이동](#목차)

------

</br>

## 뭐부터 공부하면 좋을까요?
Swift 문법만 공부한다고 iOS앱을 잘 만드는 것은 아닙니다.  
Swift와 iOS 두 개의 과목을 공부한다고 생각하시면 됩니다.

프로젝트를 만드는 것과 언어의 문법적인 부분을 공부하는 것은 병행되어야지 따로따로 해서는 빠른 시일 내에 실력이 늘기 어렵습니다! (우리는 언른 앱을 만들고, 포폴을 만들고, 취업을 해야 하잖아요??)

### 1) Swift 문법 공부

```
개인적인 추천으로는 역시 공식 Swift 문서를 처음부터 한번 훑어보는 것입니다.
```

처음부터 끝까지 정독하고 독파해 나가라는 것이 아닌, Swift는
- 이런 특성을 가지고 있는 언어구나.
- 이러한 타입이 존재하는구나. 
- 공식문서에 작성되어있는 형식으로 보아 이런 컨벤션을 추구하는 구나.

등을 개략적으로 파악할 수 있습니다.

</br>

그런 후에 야곰님의 [야곰의 스위프트 기본 문법 강좌](https://www.inflearn.com/course/%EC%8A%A4%EC%9C%84%ED%94%84%ED%8A%B8-%EA%B8%B0%EB%B3%B8-%EB%AC%B8%EB%B2%95)를 보는 것을 추천드려요! 

<img width="500" alt="스크린샷 2022-07-02 오후 11 20 15" src="https://user-images.githubusercontent.com/59866819/177007378-a0d747f7-26d5-4c49-8c5f-919f795122e6.png">

+ 위의 [개발 관련 서적](#개발-관련-서적-추천)의 스위프트 프로그래밍 책도 야곰님이 쓰신 책이에요! 함께 참고하면 좋습니다.



### 2) iOS 프로젝트
그러고 나서 iOS 프로젝트를 만들어나가기 시작해보세요!  
(물론 지속적으로 Swift문법을 공부하는 것도 잊지마시고요 😊)



만들어보면 좋은 순서는 다음과 같습니다.
- 내가 좋아하는 앱 화면 UI 따라 만들어보기 (Storyboard와 AutoLayout 연습)
    - iOS 프로젝트를 할 때 오브젝트들을 배치하고 제약조건을 설정해보는 연습을 할 수 있습니다.
    - 내가 원하는 UI를 구성할 줄 앎이 선행되어야 기능과 관련된 코드 로직을 짤 수 있겠죠?

- 버튼을 눌러 화면 전환하기(present/dismiss, push/pop 연습)
    - iOS에 기본으로 제공하는 화면 전환 방식은 두가지가 있습니다.
    - 두 가지 방법을 모두 연습해보도록 합니다.

- iOS 기본앱(메모장, 타이머, 계산기) 만들어보기(기본적이고 단순한 기능 구현해보기)
    - 기존의 UI와 동일하게 화면을 구성해보고, 기능을 구현해보세요!
    - 내가 사용하고 있던 앱들이라 친숙하게 다가올 겁니다.

### 3) WWDC

```
WWDC는 Apple사가 매년 6월즈음 캘리포니아에서 개최하는 대규모 개발자 회의입니다.  
```

<img width="500" alt="스크린샷 2022-07-03 오전 12 30 01" src="https://user-images.githubusercontent.com/59866819/177007451-76625e51-178a-4c10-ab75-6eea88333322.png">

아마 이전까지는 새로운 애플 기기 발표나 아이폰에 카메라 갯수가 늘었나에 대해서만 보셨을 거에요 😂
이제부터는 달라저야 합니다! 우리는 유망한 iOS개발자 들이잖아요?? 😉

WWDC에는 iOS, Swift가 업데이트 되면서 생기는 신 기능에 대한 발표와 다양한 세션에 대한 발표가 이루어집니다.
이제부터는 관심을 기울이고, 이전 세션들을 쭉 훑어보면서 관심있는 세션을 들어보고 예제를 따라해보고, 직접 미니 프로젝트를 만들어 적용해보세요!

[WWDC22 당장 보러가기](https://developer.apple.com/wwdc22/)

### 4) 나만의 앱 만들어보기
내가 만들고 싶은 앱을 직접 구상하여 만들어보는 경험을 해보는 것은 중요합니다.
- 제작자의 입장, 사용자의 입장에서 생각해보고 기능을 구상하고 직접 구현해보세요!

이왕이면 앱스토어에 출시도 해보세요! 
- 출시해보는 경험을 통해 심사 제출 준비, 배포, 리젝, 업데이트, 테스트플라이트를 해보면서 배포 사이클을 직접 경험해볼 수 있습니다.


</br>

[⬆️ 목차로 이동](#목차)

------

</br>


## 무엇부터 공부하면 모를 때 보면 좋은 애플 기본 라이브러리 오브젝트 및 문법 공부 목록
위의 글을 읽어도 어떻게 시작해야 할지 무엇부터 해야할지 모르겠다면, 우선 앱을 만들 때 사용하는 애플 기본 라이브러리들 부터 다뤄보아요!  
다뤄보면서 이해가 안가거나 부족한 문법을 채워나가면서 시작하는 것도 좋은 방법일 것 같아요~!  

</br>

생각나는대로 우선 적어보았으니 참고해보세요 :)

```
애플 필수 기본 라이브러리 
-----------------------------------------------------------
[ UI 관련 ]
-----------------------------------------------------------
- UI 구성방법 & AutoLayout
    - Storyboard
    - Codebase로 구성하기
- Components
    - UITextField
    - UILabel
    - UITextView
    - UIButton
    - Segment Control
    - UISwitch
    - UISlider
    - UIImageView
        - UIImage
    - UINavigationBar
        - right / left navigationbar items
    - UISearchBar

-----------------------------------------------------------
[ View 관련 ]
-----------------------------------------------------------
- UITableView
    - row, section
    - Custom HeaderView
- UICollectionView
    - row, section
    - Custom HeaderView
- UIStackView
- UIScrollView
- WKWebView
- MKMapView
- Activity Indicator View
- CustomView (code base)

-----------------------------------------------------------
[ Controller 관련 ]
-----------------------------------------------------------
- UIViewController
- UINavigationController
- UITabbarController
- UISearchController
- ActivityController

-----------------------------------------------------------
[ 데이터 저장 관련 ]
-----------------------------------------------------------
- UserDefaults
- CoreData
- FileManager

-----------------------------------------------------------
[ 네트워크 관련 ]
-----------------------------------------------------------
- URLSession
- Decodable
- Codable
- JsonDecoder
    - try, catch 구문의 활용

-----------------------------------------------------------
[ 기타 ]
-----------------------------------------------------------
- Timer
- UIAlert
- DatePicker
    - DateFormatter
- Struct, Class
- Extension
    - UIColor, UIFont ... 등을 확장하여 모듈화
    - String, Int, .. 등 기본 데이터 타입의 확장
- Property
    - Stored Property
    - Lazy Stored Property (lazy)
    - Computed Property (get, set)
    - Type Property (static , class)
    - Property Observer (didset, willset)
```

</br>

[⬆️ 목차로 이동](#목차)

------

</br>

## 프로젝트를 하고 싶은데 Xcode의 X도 모르겠어요..
### 1) 프로젝트 생성하는 방법
- Xcode를 켠다.
- `Create a new xcode project` 클릭
<img width="500" alt="1" src="https://user-images.githubusercontent.com/59866819/177007392-0f7d3b7e-752c-4f1d-adb7-58aca7115c4a.png">

- iOS > App 선택 후 Next 클릭
<img width="500" alt="2" src="https://user-images.githubusercontent.com/59866819/177007404-a9bcfd43-05c6-4970-b7a4-b88b167a5074.png">

- 프로젝트명 작성 후 Next 클릭
(SwiftUI의 경우, Interface를 `SwiftUI`로 설정)
<img width="500" alt="3" src="https://user-images.githubusercontent.com/59866819/177007409-5ed86e1d-fef8-4e59-a07a-867444f42ebc.png">


- 프로젝트 생성 완료!
<img width="500" alt="프로젝트 생성후" src="https://user-images.githubusercontent.com/59866819/177007422-882f7038-1941-4dde-aa08-ed969082629a.png">

`Main.Storyboard`에 UI를 구성하고, `ViewController.swift` 에 코드를 작성해보세요!


</br>

[⬆️ 목차로 이동](#목차)

------

</br>


## 프로젝트를 처음 생성하면 나오는 파일들은 뭐하는 녀석들인가요?

<img width="255" alt="스크린샷 2022-07-02 오후 11 49 55" src="https://user-images.githubusercontent.com/59866819/177007434-2db26b62-a2da-4f9d-a250-679a094af272.png">

프로젝트를 처음 생성하면 아래와 같은 파일들이 왼쪽 Project Navigator에 있을거에요!
- AppDelegate.swift
- SceneDelegate.swift
- ViewController.swift
- Main.storyboard
- Assets.xcassets
- LaunchScreen.storyboard
- Info.plist

각각의 파일에 대해 간략하게 설명해드릴게요
> AppDelegate.swift

```
앱의 생명주기를 다루는 파일입니다.
```

앱이 시작됬을 때(launch), 포어그라운드(foreground), 백그라운드(background) 상태일 때 등 생명주기별 특정 로직을 수행하도록 설정해줄 수 있는 파일입니다.

iOS를 공부하는 초반에는 건들일 일이 거의 없는 파일입니다ㅎㅎ (두려워하지 마세요)

그러면 언제 건들이냐! 하면
- 예를 들어 특정 URL을 열거나, Firebase를 사용하거나, Facebook로그인을 붙일 때 건들일 일이 있겠네요!

내부에는 아래와 같은 함수들이 있답니다.  
주석을 읽어보시면 대략적인 기능과 역할에 대해 파악하실 수 있을 겁니다. 입문 시점에는 그정도로 충분합니다.  
```swift
import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
}
```

> SceneDelegate.swift

<img width="772" alt="스크린샷 2022-07-03 오전 12 17 54" src="https://user-images.githubusercontent.com/59866819/177007447-ccaa1c6e-375d-4bad-9c9f-0d32238f91e3.png">

<img width="775" alt="스크린샷 2022-07-03 오전 12 18 00" src="https://user-images.githubusercontent.com/59866819/177007449-70e75174-fd85-4a05-ae4d-231ded29b85e.png">

iOS13을 기준으로 AppDelegate에서 일부 기능을 분리 및 추가하여 새로 생긴 파일입니다.
iOS13부터 Scene을 여러개 사용할 수 있게 되었습니다.
- 쉬운 예를 들면 pip기능을 통해 유튜브를 작게 띄워놓고 카톡을 한다던가, 아이패드에서 한 화면에 두가지 앱을 틀어놓고 사용한다던가 할때 Scene을 2개 만들어 사용중인 것이지요.

그래서 각각의 Scene마다 생명주기를 관리해줄 필요성이 생기게 되었어요

내부에는 아래와 같은 함수들이 있답니다.
```swift
import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        guard let _ = (scene as? UIWindowScene) else { return }
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }
}


```


자세한 내용이 알고 싶으신 분들은 [WWDC19 영상](https://developer.apple.com/videos/play/wwdc2019/258/) 과 [UIApplicationDelegate](https://developer.apple.com/documentation/uikit/uiapplicationdelegate) 관련 공식문서를 참고하시면 좋아요

하지만 얘도 AppDelegate와 마찬가지로 입문 초반에는 건들일 일이 잘 없습니다ㅎㅎ 


> ViewController.swift

```
여기가 실질적으로 우리가 코드를 작성하게 될 파일입니다.  
```

스토리보드에 있는 ViewController에서 작동할 로직을 작성할 수 있습니다.  
예를 들면 '이 버튼을 눌렀을 때 배경색을 빨갛게 바꿔줘!'와 같은 액션을 줄 수 있습니다.  

ViewController는 `class` 이고, 파일을 생성하면 `ViewDidLoad()` 라는 메서드가 자동으로 작성되어있을 겁니다.
```swift
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}
```
이 매서드는 뷰의 생명주기를 다루는 메서드이기에 지워도 작동은 하겠지만..!  
이 아이는 중요한 역할을 해줘요! 그렇기 때문에 지우지 마시고 ㅠ.ㅠ 'iOS 뷰 생명주기'에 대해 한번 검색해보시길 바랍니다.

그 안에 적혀있는 주석을 해석해보시면 짐작이 가시겠지만, 이 파일과 연결되어있는 뷰가 메모리에 로딩된 후에 설정해주고 싶은 추가적인 작업에 대해 작성해줄 수 있습니다.  
- 예를 들면 레이블에 '안녕하세요!'라는 문구를 미리 대입해두어 사용자가 앱을 켰을 때 해당 문구를 바로 볼 수 있게 한다던가
- API 통신을 통해 데이터를 가져와서 뿌려주는 작업을 한다던가!

> Main.storyboard

이 파일을 열면, 마치 핸드폰 같이 생긴 하얀 화면이 하나 있을 겁니다.  
그게 여러분이 프로젝트를 실행하면 마주하게 될 화면이에요!  
이 핸드폰 같이 생긴 녀석을 ViewController 라고 불러요. 그리고 한 화면당 하나의 swift파일을 만든다고 생각하시면 됩니다.

우측 상단에 '+' 버튼을 눌러서 레이블, 버튼, 텍스트필드 등을 자유롭게 올려보고 실행해보세요!
- 아마 내가 배치한 위치가 아닌 다른곳에 버튼이 보일 수도 있습니다 (이런 설정을 해주는 것이 AutoLayout!)

여기서 내가 원하는대로 UI를 구성하고 제약조건을 설정해서 다양한 디바이스에서도 통일성있는 UI를 제공해 보아요


> Assets.xcassets

```
asset을 번역하면 '자산' 이죠? 이 앱에서 필요로 하는 리소스들을 저장하는 곳입니다.  
```

예를 들면 이미지, 커스텀 색상 등을 여기에 저장해두고, 저장한 이름으로 프로젝트 내부 파일에서 불러와 사용할 수 있어요!

> LaunchScreen.storyboard

```
앱을 소개할 수 있는, 대표할 수 있는 간단한 화면을 구성할 수 있는 파일입니다.  
```

- 우리가 앱을 실행했을 때 짧게 번쩍하고 보이는 화면 있죠? 흔히 SplashView라고도 부릅니다.  
- 그런 화면을 스토리보드를 사용하여 구성할 수 있습니다.  

앱을 최초 실행할 때는 조금 길게 보일 수 있지만, 한번 실행하고 나서부터는 0.1초정도로 짧게 반짝 스쳐지나가 버리곤해요. 
- 그래서 기존에 우리가 봐온 앱들의 경우는 따로 커스텀을 하여 긴 시간을 보여주곤 한답니다. 

이 화면의 경우는 용량이 큰 이미지가 들어가는 등 파일이 무거워지면 시뮬레이터 상으로 안보이는 경우가 발생하곤해요! 
- 그러니 가벼운 텍스트나 용량이 작은 이미지를 활용해보면 좋아요ㅎㅎ


> Info.plist

plist는 property list의 약자에요.
```
실행 패키지에 관한 필수 설정 정보가 포함된 구조화된 텍스트 파일로,  
일반적으로 유니코드 UTF-8로 인코딩되며 내용은 XML로 되어있습니다.
루트 XML 노드는 키, 값으로 구성된 딕셔너리 형태입니다.
```
- Bundle, build 정보, 메인 스토리보드의 이름 등이 들어있습니다.
자세한 내용은 [공식문서](https://developer.apple.com/library/archive/documentation/General/Reference/InfoPlistKeyReference/Introduction/Introduction.html#//apple_ref/doc/uid/TP40009248-SW1)를 참조하세요!

우리가 실질적으로 이 아이를 사용하게 될때는 언제인가 하면
- 예를 들어, 화면을 항상 라이트 모드로 고정하고 싶을 때, 스토리보드 없이 코드 베이스로 화면을 구성하고 싶을 때, APIKey 값을 넣어줄 때 등이 있겠네요ㅎㅎ



## iOS는 코딩테스트 언어는 무엇으로 하면 좋나요, 아무거나 상관없나요?

현재는 Swift로 코딩테스트 언어를 고정하는 회사들이 많아졌어요! (2022년 기준)
그래서 우선 Swift로 코딩테스트를 준비하시는 걸 추천드려요ㅎㅎ

하지만 기존에 이미 알고리즘이나 자료구조 공부를 해오던 언어가 있거나 잘하시는 언어가 있고, 내가 목표로하는 회사가 다양한 언어로 코딩테스트를 볼 수 있게 해준다면! 상관이 없겠죠?? (확인 필수!)

```
-> 만약 아직 코딩테스트 준비를 제대로 해본적 없거나 예정중에 있다면 Swift로 공부할 것을 추천드립니다.
```

</br>

만약 iOS와 상관없이 코딩테스트에 유리한 언어가 무엇인지 묻는다면..C++과 Python이 있습니다!  
- C++은 컴퓨터에 가까운 언어이기 때문에 같은 로직이어도 상대적으로 속도가 빠른 장점이 있고, 
- Python은 코드가 상대적으로 간결하고 배우기 쉽다는 장점이 있습니다.  

자세한 차이점은 찾아보시고 자신과 맞는 언어로 준비하시길 바랍니다!

</br>

[⬆️ 목차로 이동](#목차)

------

</br>


## 취업준비할 때 무엇을 준비 하면 될까요?

```
Swift 문법, 포트폴리오용 프로젝트, 책 읽기, CS공부, 알고리즘, 깃헙 관리, 기술 블로그 다 하셔야 합니다.
```

하지만... 너무 빡세잖아요..? ㅠㅠ
다 하기 벅차시다면 최소한 프로젝트와 CS, 깃헙관리는 추천드립니다.

신입이 회사에 어필할 수 있는 것을 몇가지 되지 않습니다.

```
성실함, 성장가능성.
```

- `성실함`을 어필할 수 있는 방법은 깃헙에 잔디를 꾸준히 관리하는 것입니다. (혹은 꾸준한 블로그 포스팅)
- `성장가능성`을 어필할 수 있는 방법은 새로운 기술과 트랜드에 관심이 있다는 것을 보이고, 라이브러리에만 의존하지 않고 애플에서 제공하는 기본 라이브러리를 최대한 많이 사용해보고, CS에 빠삭한 것입니다.

갑자기 할게 엄청 많고 막막하죠..? 하나씩 하다보면 어느새 다 하고 계실거에요 ^_^   
벌써 겁먹지 마세요~!


</br>

[⬆️ 목차로 이동](#목차)

------

</br>

## 아무래도 비전공자보다 전공자가 유리하겠죠..?

```
선입견 입니다!
```

전공자라고 해서 CS에 빠삭하고 알고리즘 문제를 척척 풀 수 있는 건 아니랍니다. (물론 그런 분들도 계시지만 소수 입니다..)  
비전공자이신 분들, 자신이 전공한 과에 대해서 빠삭한가 라고 스스로에게 되물어보시면 답이 나올 겁니다! (누군가를 폄하하는 것이 아니라 자신감을 가지시라는 의미로 하는 말입니다ㅎㅎ)  

지금 스스로의 실력이 비전공자라서 부족하다고 느껴진다면  
지금부터 열심히 하시면 충분히 좋은 곳에 취직하시고 자기개발 하실 수 있습니다.


</br>

[⬆️ 목차로 이동](#목차)

------

</br>


## 찾아보니까 하이브리드앱도 있던데 네이티브랑 뭐가 다르고 장단점이 무엇인가요?

네이티브(Native) 라고 불리우는 녀석들은 각각의 플랫폼에서 정석적인 방법으로 개발하는 것이라고 보면되요.  
예를 들어 iOS의 경우는 Xcode 에서 Swift 언어를 사용하여 iOS앱을 개발하는 것이겠지요? (툴은 꼭 Xcode가 아니어도 되지만요!)  
AOS의 경우는 IntelliJ 에서 Java 혹은 Kotlin 언어를 사용하여 AOS앱을 개발하는 것이겠지요.  

</br>

이외의 하이브리드 앱들이 있는데,  
원래 대로라면 AOS 프로젝트 따로, iOS 프로젝트 따로 개발하여 각각의 스토어에 배포하지만  
하이브리드 앱이란 iOS와 AOS 두 가지를 하나의 프로젝트로 개발하는 것을 말해요.  

</br>

그래서 한 프로젝트로 두 개의 플랫폼을 모두 만족하는 앱을 만들 수 있다는 장점이 있습니다.  
그리고 이 하이브리드 앱을 개발하는 플랫폼은 대표적으로 두 가지가 있어요.   

```
플러터(Flutter)와 리액트네이티브(Reat Native) !
```

</br>

언뜻보면   
"두 가지 플랫폼을 한 번에 개발한다고? 개이득인데?"  
라고 생각할 수 있겠지만 장단점이 있습니다.  

</br>

### 장점
```
- 두 플랫폼을 하나의 프로젝트로 개발할 수 있다.
- 각각의 네이티브끼리의 개발 속도를 맞추는 작업이 필요 없어진다. (즉, 두 플랫폼을 같은 속도로 개발할 수 있다.)
- 플러터 혹은 리액트네이티브 개발자만 있으면 되므로 개발자 수가 적어도 된다. (양쪽의 네이티브 각각 있는 경우 보다)
- 앱뿐만 아니라 웹까지 한 번에 개발할 수 있다. (일부 플랫폼에서는 지원안 할 수 있습니다.)
```

</br>

### 단점
```
- 네이티브에 종속성/의존성이 걸려있다. (네이티브에서 큰 변화나 업데이트가 생겼을 때 반영이 오래걸리거나 어렵다.)
- 네이티브의 장점/강점을 살릴 수 없다. (네이티브에서만 가능한 기능들이 있다.)
- 만약 하이브리드 플랫폼이 빠르게 업데이트를 안하거나 서비스를 종료한다면 해결할 방법이 없다.
```

(*저자의 주관과 팩트가 섞여 있습니다. 더 자세히 궁금하신 분들은 추가적으로 검색해보시길 바랍니다.)

</br>
</br>
</br>

```
"하이브리드와 네이티브 중에 어떤 개발을 하는게 더 좋을까요?"  
```

라고 물어보시는 분들이 있습니다.
그 질문에는 사실 답이 없어요.
그래서 보통 저는 답변 드리기를...

</br>

> 만약 내가 가고싶은 회사가 있다면 

그 회사가 어떤 방식으로 개발하는지 찾아보고, 그리고 그 회사의 방식을 따라 공부하세요. 라고 합니다.
(모집 공고나 기술블로그를 참고하거나 직접 앱을 깔아보기)  

</br>

> 만약 iOS 개발자가 되고 싶다. 라고 하면 일단 네이티브 개발을 추천합니다.

애플에서 만든 프레임워크들을 사용해서 개발을 하면서 이해도를 높이고 그걸 바탕으로 나중에 하이브리드 앱에 관심이 생기면 도전해보세요.
결국은 iOS앱은 네이티브에 의존성이 걸릴 수 밖에 없거든요..! 
네이티브를 모르면서 iOS개발을 한다..? 여러분은 어떻게 생각하시나요ㅎㅎ

</br>

> 만약 앱 개발자가 되고 싶다. 라고 하면 하이브리드 앱개발을 추천합니다.

궁극적으로 나는 iOS든 AOS든 앱 자체를 만들고 싶다면, 두 가지 플랫폼을 모두 경험해볼 수 있고, 상대적으로 배우기 쉬운 하이브리드 앱 개발 즉, 플러터나 리액트 네이티브를 배워보세요!  
그러다가 만약 특정 플랫폼에 관심이 쏠린다면..? 그때는 본격적으로 하나의 네이티브에 집중해보는 것도 좋겠지요.  

</br>

.  
.  
.  

아시는 분 이아기를 들어보면.. (그 분의 주관적인 의견입니다만 경력이 꽤 있으신 분이어서 첨언합니다.)
요즘은 신입 플러터 개발자를 뽑을 때, 네이티브를 공부해본 적 있는 사람을 뽑으려고 한다고 합니다.
네이티브를 경험해보지 않은 사람을 뽑아서 일을 시켜보았는데, 새로운 피처를 개발은 잘 하는데, 각각의 플랫폼에 대한 이해도가 깊지는 않다보니 문제에 접근하는 방법과 헤결하는 능력이 부족하다고 느꼈다고 합니다.

</br>
</br>

하이브리드/크로스 플랫폼을 개발하는 분들 모두에 해당하는 말은 아닙니다.
저는 단편적인 예와 저의 생각을 전할 뿐이니 참고만 하시면 됩니다 ㅎㅎ





</br>

[⬆️ 목차로 이동](#목차)

------

</br>

##  UIKit은 뭐고 SwiftUI는 무엇인가요? 둘다 모른다면 무엇을 공부하는게 좋을까요?

(작성 예정)


</br>

[⬆️ 목차로 이동](#목차)

------

</br>
