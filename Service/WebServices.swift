//
//  WebServices.swift
//  Haber
//
//  Created by Mehmet Arıkan on 22.06.2022.
//

import Foundation


class WebServices{
    
    func NewsGet(url: URL, completion: @escaping ([News]?) -> ()) {
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            } else if let data = data {
                
               let haberlerDizisi = try? JSONDecoder().decode([News].self, from: data)
                if let haberlerDizisi = haberlerDizisi {
                    completion(haberlerDizisi)
                }
            }
            
        }.resume()
    }
}
