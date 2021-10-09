//
//  SampleAPI.swift
//  SampleTableView
//
//  Created by 佐藤瑠偉史 on 2021/10/08.
//

import Foundation

final class SampleAPI {
    func getHome(completion: (([UserModel]?, Error?) -> Void)? = nil) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            let jsonData = self.sampleData()
            guard let users = try? JSONDecoder().decode([UserModel].self, from: jsonData) else {
                completion?(nil, NSError.init(domain: "json error", code: 99, userInfo: nil))
                return
            }
            completion?(users, nil)
        }
    }
}

private extension SampleAPI {
    func sampleData() -> Data {
        return """
[
    {
        "id":1,
        "icon":"https://3.bp.blogspot.com/-KgUzGDeV8r8/VaMOD3z_X-I/AAAAAAAAvh8/YK5LucKKUmo/s800/boy_01.png",
        "name":"テストユーザ1",
        "mainText": "コロナで学校がお休みだーーーーわーーい！！！",
        "image":"https://1.bp.blogspot.com/-q1xvZyIrHQw/XofC8OpT2yI/AAAAAAABYKw/YG0AQGMpILwlxgVPTJqZaVdGjxB8iaqtwCNcBGAsYHQ/s1600/virus_hanareru_figure_stand.png"
    },
    {
        "id":2,
        "icon":"https://3.bp.blogspot.com/-KgUzGDeV8r8/VaMOD3z_X-I/AAAAAAAAvh8/YK5LucKKUmo/s800/boy_01.png",
        "name":"あいうえお",
        "mainText": "iOSプログラムなんも分からんオワタwwwwwwwww",
        "image":"https://1.bp.blogspot.com/-iG3QVEWl4dE/Wn1Vwtu1PwI/AAAAAAABKE8/8KR9vfXirfU5yXepByewkYZcrWqT-2EtQCLcBGAs/s800/computer_man3_cry.png"
    },
    {
        "id":3,
        "icon":"https://3.bp.blogspot.com/-KgUzGDeV8r8/VaMOD3z_X-I/AAAAAAAAvh8/YK5LucKKUmo/s800/boy_01.png",
        "name":"かきくけこ",
        "mainText": "test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test",
        "image":""
    },
    {
        "id":4,
        "icon":"https://3.bp.blogspot.com/-KgUzGDeV8r8/VaMOD3z_X-I/AAAAAAAAvh8/YK5LucKKUmo/s800/boy_01.png",
        "name":"テストユーザ1",
        "mainText": "コロナで学校がお休みだーーーーわーーい！！！",
        "image":"https://1.bp.blogspot.com/-q1xvZyIrHQw/XofC8OpT2yI/AAAAAAABYKw/YG0AQGMpILwlxgVPTJqZaVdGjxB8iaqtwCNcBGAsYHQ/s1600/virus_hanareru_figure_stand.png"
    },
    {
        "id":5,
        "icon":"https://3.bp.blogspot.com/-KgUzGDeV8r8/VaMOD3z_X-I/AAAAAAAAvh8/YK5LucKKUmo/s800/boy_01.png",
        "name":"あいうえお",
        "mainText": "iOSプログラムなんも分からんオワタwwwwwwwww",
        "image":""
    },
    {
        "id":6,
        "icon":"https://3.bp.blogspot.com/-KgUzGDeV8r8/VaMOD3z_X-I/AAAAAAAAvh8/YK5LucKKUmo/s800/boy_01.png",
        "name":"かきくけこ",
        "mainText": "test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test",
        "image":""
    },
    {
        "id":7,
        "icon":"https://3.bp.blogspot.com/-KgUzGDeV8r8/VaMOD3z_X-I/AAAAAAAAvh8/YK5LucKKUmo/s800/boy_01.png",
        "name":"テストユーザ1",
        "mainText": "コロナで学校がお休みだーーーーわーーい！！！",
        "image":""
    },
    {
        "id":8,
        "icon":"https://3.bp.blogspot.com/-KgUzGDeV8r8/VaMOD3z_X-I/AAAAAAAAvh8/YK5LucKKUmo/s800/boy_01.png",
        "name":"あいうえお",
        "mainText": "iOSプログラムなんも分からんオワタwwwwwwwww",
        "image":""
    },
    {
        "id":9,
        "icon":"https://3.bp.blogspot.com/-KgUzGDeV8r8/VaMOD3z_X-I/AAAAAAAAvh8/YK5LucKKUmo/s800/boy_01.png",
        "name":"かきくけこ",
        "mainText": "test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test",
        "image":""
    },
    {
        "id":10,
        "icon":"https://3.bp.blogspot.com/-KgUzGDeV8r8/VaMOD3z_X-I/AAAAAAAAvh8/YK5LucKKUmo/s800/boy_01.png",
        "name":"テストユーザ1",
        "mainText": "コロナで学校がお休みだーーーーわーーい！！！",
        "image":""
    },
    {
        "id":11,
        "icon":"https://3.bp.blogspot.com/-KgUzGDeV8r8/VaMOD3z_X-I/AAAAAAAAvh8/YK5LucKKUmo/s800/boy_01.png",
        "name":"あいうえお",
        "mainText": "iOSプログラムなんも分からんオワタwwwwwwwww",
        "image":"https://1.bp.blogspot.com/-iG3QVEWl4dE/Wn1Vwtu1PwI/AAAAAAABKE8/8KR9vfXirfU5yXepByewkYZcrWqT-2EtQCLcBGAs/s800/computer_man3_cry.png"
    },
    {
        "id":12,
        "icon":"https://3.bp.blogspot.com/-KgUzGDeV8r8/VaMOD3z_X-I/AAAAAAAAvh8/YK5LucKKUmo/s800/boy_01.png",
        "name":"かきくけこ",
        "mainText": "test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test,test",
        "image":""
    }
]
""".data(using: .utf8)!
    }
}
