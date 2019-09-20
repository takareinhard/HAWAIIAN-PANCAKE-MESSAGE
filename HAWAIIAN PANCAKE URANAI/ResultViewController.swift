//
//  ResultViewController.swift
//  HAWAIIAN PANCAKE URANAI
//
//  Created by 弘田朗 on 2019/09/03.
//  Copyright © 2019 a. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ResultViewController: UIViewController, UITextFieldDelegate {
  
    
    @IBOutlet weak var touchEventThroughView: TouchEventThroughView!
    
    @IBOutlet weak var topButton: SimpleButton!

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var PancakePhoto: UIImageView!
    @IBOutlet weak var Shopname: UILabel!
    @IBOutlet weak var Pancakename: UILabel!
    @IBOutlet weak var TitleLabel: UILabel!
    @IBOutlet weak var message: UITextView!
    
    @IBOutlet weak var contentLabel: UILabel!
    @IBOutlet weak var colorLabel: UILabel!
    @IBOutlet weak var itemLabel: UILabel!

    let singleton :Singleton =  Singleton.sharedInstance
    
    override func viewDidLoad() {
        super.viewDidLoad()

    if let name = Singleton.sharedInstance.title {
    nameLabel.text = name
                + "さんのパンケーキは..."
    }
        
        self.getHoroscope()
    }
    
    func getHoroscope() {
        
        let now = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = DateFormatter.dateFormat(fromTemplate: "yyyy/MM/dd",
                                                            options: 0,
                                                            locale: Locale(identifier: "ja_JP"))
            let nowStr = dateFormatter.string(from: now)
            
            let requestString = "http://api.jugemkey.jp/api/horoscope/free/" + nowStr

        
    let random = arc4random_uniform(12)
        switch random {
        case 0:
        self.PancakePhoto.image = UIImage(named: "Cinamons")
        Shopname.text = "シナモンズ"
        Pancakename.text = "グアバ・シフォン・パンケーキ"
        TitleLabel.text = "ナンバーワンでもあり、オンリーワン！"
        message.text = "独特の魅了を持ち、その魅力を存分に発揮しているあなたは、この可愛いらしいグアバソースのようにみんなから人気があります。あなたが日頃放っているエネルギーはあなたが思っている以上に他人にも自分にも大きな影響を与えます。新しい状況がスタートしようとしてます。迷っても直感で行動の指針を決定していけば、最もあなたが望む通りに事を運ぶ事が出来ます。見た目は愛おしいけど、実はストレートに甘くて美味しいあなたはあまり迷う事もないと思いますが、進んでいけば最も予期のつかないところから答えがやってきて、より優れた魅力を放つ事になりそうです。さすればナンバーワンでもあり、オンリーワンなあなたにさらに磨きがかかり、今やっている事やこれからやろうとしている事で優れた結果を残すことが出来るでしょう！"
        Alamofire.request(requestString).responseJSON { response in
            if let jsonObject = response.result.value {
                let json = JSON(jsonObject)
                let result = json["horoscope"][nowStr][0]
                let color = result["color"].stringValue
                let item = result["item"].stringValue
                let content = result["content"].stringValue
                self.itemLabel.text = item
                self.colorLabel.text = color
                self.contentLabel.text = content
            }
        }
            
        
        case 1:
        self.PancakePhoto.image = UIImage(named: "Ihop")
        Shopname.text = "アイホップ"
        Pancakename.text = "ストロベリー・バナナ・パンケーキ"
        TitleLabel.text = "バラエティ溢れる豊かな人生がはじまる！"
        message.text = "豊かな種類の顔を持つあなたには、たくさんの援助が着ます。有り余るほど豊かで、有り余るほど愛に包まれたあなたは他人から見ると、ワクワクするような人生を生きているように見えていると思います。例え今はそうじゃなくても、そのような人に出会えるチャンスが巡ってきて、ワクワクする人生を送れそうです。今あなたの人生は新たな意味を帯びはじめています。今はその瀬戸際にいます。そんな人生の達成に向けてのチャンスは山ほどあります色んな経験をし、色んな知識があるあなたは今最高に良い方向に迎える時が着ており、これから大きな成功への扉が開くでしょう！そして喜びをもって、豊かさを享受できる素晴らしいスタートとなるでしょう！"
        Alamofire.request(requestString).responseJSON { response in
            if let jsonObject = response.result.value {
                let json = JSON(jsonObject)
                let result = json["horoscope"][nowStr][1]
                let color = result["color"].stringValue
                let item = result["item"].stringValue
                let content = result["content"].stringValue
                self.itemLabel.text = item
                self.colorLabel.text = color
                self.contentLabel.text = content
            }
        }
            
        
        case 2:
        self.PancakePhoto.image = UIImage(named: "Koapancakehouse")
        Shopname.text = "コアパンケーキハウス"
        Pancakename.text = "ストロベリー・ホイップ・クリーム"
        TitleLabel.text = "賢明で着実な進歩を遂げていくあなた！"
        message.text = "クリーミィーなクリームとともに長年の間周りの人たちにも新しく知り合った人にもずっと親しまれるあなたは、これからもみんなに親しまれます。あなたが愛される理由。それは何に対しても適切な判断をしてきたからです。安易な考えにはならず、ベストな道をずっと歩いてきました。何かに対してどうすればいいか分からなくなっても、賢いあなたにはいつも正しい解決策がどこかで浮かびます。そして行動に移す事が出来ます。それが結果として素晴らしい人生を送るきっかけとなっており、仮に今何か困難な事態になっていたとしても必ず解決します。変化したいと思えばすぐに変化出来ます。しかし、変化してもしなくてどちらにしろ楽しい人生を送る事が出来ます！なので安心して何に対しても明るく楽しく彩っていきましょう！あなたは人生が楽しくなるように出来ています！"
        Alamofire.request(requestString).responseJSON { response in
            if let jsonObject = response.result.value {
                let json = JSON(jsonObject)
                let result = json["horoscope"][nowStr][2]
                let color = result["color"].stringValue
                let item = result["item"].stringValue
                let content = result["content"].stringValue
                self.itemLabel.text = item
                self.colorLabel.text = color
                self.contentLabel.text = content
            }
        }
            
        case 3:
            self.PancakePhoto.image = UIImage(named: "mokez")
            Shopname.text = "モケズ・ブレッド＆ブレックファースト"
            Pancakename.text = "リリコイソースパンケーキ"
            TitleLabel.text = "あなたに与えられるべき祝福を受け取る時！"
            message.text = "口当たりが良く、愛想良く振る舞うあなたは何をやっても器用です。このさっぱりとしたリリコイパンケーキのように自由な人生を謳歌出来るでしょう！のびのびした豊かな感情のあなたには、良い知らせが入ってきます！その知らせを聞き逃さないようにしっかり受け止めましょう。このリリコイパンケーキのように、いつものあなたでいれば聞き逃す事もないでしょう。それは人間関係での良い知らせである可能性が高いみたいです。恋人がいる方はより仲良くなれ、シングルの方は良い出会いに恵まれるでしょう。あなたらしく楽観的でフレンドリーに居ればより良い祝福を受け取る事になります。お楽しみに！"
            Alamofire.request(requestString).responseJSON { response in
                if let jsonObject = response.result.value {
                    let json = JSON(jsonObject)
                    let result = json["horoscope"][nowStr][3]
                    let color = result["color"].stringValue
                    let item = result["item"].stringValue
                    let content = result["content"].stringValue
                    self.itemLabel.text = item
                    self.colorLabel.text = color
                    self.contentLabel.text = content
                }
            }
            
        case 4:
            self.PancakePhoto.image = UIImage(named: "bills")
            Shopname.text = "ビルズ ハワイ"
            Pancakename.text = "リコッタパンケーキ"
            TitleLabel.text = "選べるほど豊かな人生を送れる！"
            message.text = "「世界一の朝食」で選ばれ、世界一クオリティが高く、あなたにまさかの思いも知らないところからチャンスがやってきます。そのチャンスを掴み取り、達成していく事で、いかなるビジネスや恋愛など何やってもも確実に発展していく事間違えなしです。そして頼りになる人物となっていき、自分がどうしたいのか自由に選べるほど豊かな人生となっていきます。元々そんな自由な人生が送れる気質を持っているあなたですが、さもハニーコームバターでよりリコッタパンケーキが美味しくなるように、より豊かで楽しい人生となっていくでしょう！他人ではなく自分がどうしたいのかという軸を忘れないように！"
            Alamofire.request(requestString).responseJSON { response in
                if let jsonObject = response.result.value {
                    let json = JSON(jsonObject)
                    let result = json["horoscope"][nowStr][4]
                    let color = result["color"].stringValue
                    let item = result["item"].stringValue
                    let content = result["content"].stringValue
                    self.itemLabel.text = item
                    self.colorLabel.text = color
                    self.contentLabel.text = content
                }
            }
            
        case 5:
            self.PancakePhoto.image = UIImage(named: "boots")
            Shopname.text = "ブーツ＆キモズ"
            Pancakename.text = "特製マカダミアソースのパンケーキ"
            TitleLabel.text = "全ては上手く行っている！明るく楽しく！"
            message.text = "独特なセンスで、美味しいマカダミアナッツソースで魅了し続けてきたパンケーキ！同じような魅力あるあなたはずっと何かに一生懸命物事に取り組んできたと思います。それもそろそろ終わりのはじまりが近づいてきており、明るい兆しが入ってきます。幸せな解決策が近づいており、心を開いてポジティブでいれば全ては順調に進みます。闇の日々はほぼ終わっています！このミルキーなソースのように可愛いらしいあなたを権威のある誰かが助けてくれると思います。フワフワした食感のこのパンケーキと同じような気持ちでポジティブな視点を持てば全ての物事が上手く行きます！"
            Alamofire.request(requestString).responseJSON { response in
                if let jsonObject = response.result.value {
                    let json = JSON(jsonObject)
                    let result = json["horoscope"][nowStr][5]
                    let color = result["color"].stringValue
                    let item = result["item"].stringValue
                    let content = result["content"].stringValue
                    self.itemLabel.text = item
                    self.colorLabel.text = color
                    self.contentLabel.text = content
                }
            }
            
        case 6:
            self.PancakePhoto.image = UIImage(named: "eggs")
            Shopname.text = "エッグスンシングス"
            Pancakename.text = "ホイップクリーム パンケーキ・サンプラー"
            TitleLabel.text = "欲しいものを受け取る時！"
            message.text = "あなたは長い間自分の欲しいと思うものを願ってきました。その欲しいものを受け取る時です！どっしりとしたホイップクリームのような心を持ったあなたは心が広く、寛大で自分にとって良いものだけを取り入れていけるでしょう！そして、今は自分がどうして行きたいのかを考える時です。心の奥底に沈んでいた願望を今こそ発揮していく時です。本当にあなたは長い間自分の望むものを貯めてきました。ホイップクリームの心の中にある願望はどれも甘くて美味しい願望ばかりです。今こそ自分の好きなようにする時です！また異性の助けにより利得・進展が得られる可能性があります。"
            Alamofire.request(requestString).responseJSON { response in
                if let jsonObject = response.result.value {
                    let json = JSON(jsonObject)
                    let result = json["horoscope"][nowStr][6]
                    let color = result["color"].stringValue
                    let item = result["item"].stringValue
                    let content = result["content"].stringValue
                    self.itemLabel.text = item
                    self.colorLabel.text = color
                    self.contentLabel.text = content
                }
            }
            
        case 7:
            self.PancakePhoto.image = UIImage(named: "yoguru")
            Shopname.text = "ヨーグルストーリー"
            Pancakename.text = "ウベパンケーキ"
            TitleLabel.text = "成功・達成・勝利！全て上手くいく！"
            message.text = "自然な紫色のウベソースのような天然で純粋な心を持ったあなたは、そのあなたが持っている心のままにいれば全てが上手く行くようになってます。そして、人生をあるがままに見ることが出来るようになれば、今まで取り組んできた事も全て意味があったと受け取れるようになるでしょう。落ち着きのあるあなたはその人生の意味を証明する事が出来る準備が整っています。今こそ証明していく時です！共同で誰かと事業に取り組んでいくのも良いと思います。そんな感じで楽しい心で日々を過ごせば人生は新たな意味を帯びはじめていくでしょう！"
            Alamofire.request(requestString).responseJSON { response in
                if let jsonObject = response.result.value {
                    let json = JSON(jsonObject)
                    let result = json["horoscope"][nowStr][7]
                    let color = result["color"].stringValue
                    let item = result["item"].stringValue
                    let content = result["content"].stringValue
                    self.itemLabel.text = item
                    self.colorLabel.text = color
                    self.contentLabel.text = content
                }
            }
            
        case 8:
            self.PancakePhoto.image = UIImage(named: "moreys")
            Shopname.text = "カフェ・モーリーズ"
            Pancakename.text = "ホヌ（カメ）パンケーキ"
            TitleLabel.text = "自由な旅立ちの時！"
            message.text = "遊び心を持ちつつ、オシャレなあなたはこれから未知の世界に直感的に飛び込んで行くと思います。その判断は正解であり、とても創造的なスタートとなります。新しいビジネスや人間関係がスタートし、今持っている感情を形にしていける力をあなたは持っています。今ここでその未知の世界に飛び込んでいけば、大成功し、祝福に繋がる事は間違えないです！外の世界に飛び出すのは過去の思考に縛られず、自由な発想し、行動が出来るあなたには簡単な事でしょう。そして、新しい人生が現れ、より自由と成長と喜びを感じる事となるでしょう！"
            Alamofire.request(requestString).responseJSON { response in
                if let jsonObject = response.result.value {
                    let json = JSON(jsonObject)
                    let result = json["horoscope"][nowStr][8]
                    let color = result["color"].stringValue
                    let item = result["item"].stringValue
                    let content = result["content"].stringValue
                    self.itemLabel.text = item
                    self.colorLabel.text = color
                    self.contentLabel.text = content
                }
            }
            
        case 9:
            self.PancakePhoto.image = UIImage(named: "kaira")
            Shopname.text = "カフェ・カイラ"
            Pancakename.text = "バターミルク パンケーキ"
            TitleLabel.text = "良い知らせが来る！そして、幸福な方へ！"
            message.text = "あなたはどの部分を取っても美味しく、華やかに彩られた人生を歩んでいけます！その為の情報がやってきます。どの情報が高次から送られてきた幸せになる情報かは知性的なあなたにはすぐに分かる事でしょう！そして入念な計画が必要で、選択技を吟味することです。しかし、あまり長い間どっちつかずの立場のまま過ごさない事も重要です。生地もフルーツもクリームもバランスを取る事で美味しくなるように、あなたの人生もあらゆる要素でバランスを取る事です。そうすればより生地もフルーツもクリームも美味しくなり、綺麗に彩られ幸せで豊かな人生になっていきます！"
            Alamofire.request(requestString).responseJSON { response in
                if let jsonObject = response.result.value {
                    let json = JSON(jsonObject)
                    let result = json["horoscope"][nowStr][9]
                    let color = result["color"].stringValue
                    let item = result["item"].stringValue
                    let content = result["content"].stringValue
                    self.itemLabel.text = item
                    self.colorLabel.text = color
                    self.contentLabel.text = content
                }
            }
            
        case 10:
            self.PancakePhoto.image = UIImage(named: "original")
            Shopname.text = "オリジナルパンケーキハウス"
            Pancakename.text = "ダッチベイビー"
            TitleLabel.text = "これまでにない新たな発想への導き！"
            message.text = "レモンの風味で爽やかで人間らしいあなたは自分の為のオリジナルな日々がスタートします。他人にも大きな影響力を与えていく事が出来るでしょう。新たな歴史を切り拓いていくのはあなたです。今までの環境とはおさらばして、自分の為の日々がはじまります。誰も見た事がないようなことを創造していけます。今までの状況を1つ1つ丁寧に改善していくとターニングポイントが訪れるでしょう。そうやって何度も工夫して改善していく事は新たな発想に繋がります。そしてこれまでのあなたとは全然違うようになります。そのレモンの爽やか香りで気分が一新され、食べると美味しいモチモチな生地なように、これまで食べた事が無いような味になります。それが本来のあなたであり、その本来の自分に戻っていく事こそがあなたにとっては幸運を掴むヒントです！"
            Alamofire.request(requestString).responseJSON { response in
                if let jsonObject = response.result.value {
                    let json = JSON(jsonObject)
                    let result = json["horoscope"][nowStr][10]
                    let color = result["color"].stringValue
                    let item = result["item"].stringValue
                    let content = result["content"].stringValue
                    self.itemLabel.text = item
                    self.colorLabel.text = color
                    self.contentLabel.text = content
                }
            }
        
        case 11:
            self.PancakePhoto.image = UIImage(named: "sunnydays")
            Shopname.text = "サニーデイズ"
            Pancakename.text = "キャラメルバナナ・パンケーキ"
            TitleLabel.text = "急速に幸運がやってくる！"
            message.text = "あなたが今いかに落ち込んでいても、いかに楽しくてもどちらにしろ幸運がやってきます！可愛らしく愛嬌のあなたはみんなから可愛がられています。あなた自身も心が優しく、他人と上手にコミュニケーションをとっていけます。幸運とは具体的には共同で何かをやっていく事が決まり、それらを達成していく過程の楽しさに幸運であったり、今気づいていなかった目の前の豊かさに気づいたりと自分の気づきにより幸運を掴む感じっぽいです。それを聞いて「なんだあ」と思うかもしれませんが、あなたはゆっくりと問題を解決しようとしますが、思ったよりも急速に確かな力を得ていく事になります。何よりも自分を信じる事が大事です。あなたはみんなに大事にされます！そして、最終的にあなたの優しさが功を成し、何をやっても上手くいき、全てを克服していける事となります！"
            
            Alamofire.request(requestString).responseJSON { response in
                if let jsonObject = response.result.value {
                    let json = JSON(jsonObject)
                    let result = json["horoscope"][nowStr][11]
                    let color = result["color"].stringValue
                    let item = result["item"].stringValue
                    let content = result["content"].stringValue
                    self.itemLabel.text = item
                    self.colorLabel.text = color
                    self.contentLabel.text = content
                }
            }
            
        default:
        self.PancakePhoto.image = UIImage(named: "")
        Shopname.text = ""
        Pancakename.text = ""
        TitleLabel.text = ""
        message.text = ""
        }
        
        touchEventThroughView.rect_topButton = topButton.frame
}

    @IBAction func DidTapButton(_ sender: Any) {
        let ViewController = self.storyboard?.instantiateViewController(withIdentifier: "title") as! ViewController
        self.present(ViewController, animated: true, completion: nil)
    }
    

    
}
