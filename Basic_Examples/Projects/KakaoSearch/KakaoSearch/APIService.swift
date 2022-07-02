//
//  APIService.swift
//  KakaoSearch
//
//  Created by KEEN on 2022/06/11.
//

import Foundation

struct APIService {
    let baseUrl: String = "https://dapi.kakao.com/v3/search/book?"
    
    func searchBook(query: String, completion: @escaping (Document?, Int) -> Void) {
        // 파라미터 처리
        var urlComponents = URLComponents(string: baseUrl)
        let queryItem = URLQueryItem(name: "query", value: query)
        urlComponents?.queryItems = [queryItem]
        
        // 헤더 처리
        guard let urlComponents = urlComponents, let url = urlComponents.url else { return }
        var requestUrl = URLRequest(url: url)
        requestUrl.addValue("KakaoAK ", forHTTPHeaderField: "Authorization") // TODO: 'KakaoAK ' 뒤에 자신의 API Key를 넣어서 실행해보세요! (공백을 지우시면 안됩니다.)
        
        // 완성된 url을 바탕으로 통신 처리
        let session = URLSession(configuration: .default)
        let dataTask = session.dataTask(with: requestUrl) { data, response, error in
            guard let data = data else { return }
            guard let response = response as? HTTPURLResponse else { return }
            guard error == nil else {
                completion(nil, response.statusCode)
                return
            }
            
            // 디코딩
            do {
                let decoder = JSONDecoder()
                let documentInfo = try decoder.decode(Document.self, from: data)
                
                completion(documentInfo, response.statusCode)
            } catch {
                completion(nil, response.statusCode)
            }
        }
        
        dataTask.resume()
    }
}
