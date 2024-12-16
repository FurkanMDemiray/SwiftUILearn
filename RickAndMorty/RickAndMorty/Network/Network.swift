//
//  Network.swift
//  RickAndMorty
//
//  Created by Melik Demiray on 14.12.2024.
//

import Alamofire
import Foundation

protocol NetworkServiceProtocol {
    func request<T: Decodable>(
        _ url: String,
        method: HTTPMethod,
        parameters: Parameters?,
        headers: HTTPHeaders?,
        completion: @escaping (Result<T, Error>) -> Void
    )
}

class Network: NetworkServiceProtocol {
    func request<T: Decodable>(
        _ url: String,
        method: HTTPMethod = .get,
        parameters: Parameters? = nil,
        headers: HTTPHeaders? = nil,
        completion: @escaping (Result<T, Error>) -> Void
    ) {

        AF.request(
            url,
            method: method,
            parameters: parameters,
            encoding: URLEncoding.default,
            headers: headers
        )
        .validate(statusCode: 200...299)
        .responseDecodable(of: T.self) { response in
            switch response.result {
            case .success(let data):
                completion(.success(data))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
}
