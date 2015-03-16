//
//  BViewController.swift
//  SBQ
//
//  Created by GnuHua on 15/3/16.
//  Copyright (c) 2015年 jiaxianhua. All rights reserved.
//

import UIKit

class BViewController: TableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        context = [
            "赵钱孙李","周吴郑王","冯陈褚卫","蒋沈韩杨","朱秦尤许","何吕施张","孔曹严华","金魏陶姜",
            "戚谢邹喻","柏水窦章","云苏潘葛","奚范彭郎","鲁韦昌马","苗凤花方","俞任袁柳","酆鲍史唐",
            "费廉岑薛","雷贺倪汤","滕殷罗毕","郝邬安常","乐于时傅","皮卞齐康","伍余元卜","顾孟平黄",
            "和穆萧尹","姚邵堪汪","祁毛禹狄","米贝明臧","计伏成戴","谈宋茅庞","熊纪舒屈","项祝董粱",
            "杜阮蓝闵","席季麻强","贾路娄危","江童颜郭","梅盛林刁","钟徐邱骆","高夏蔡田","樊胡凌霍",
            "虞万支柯","咎管卢莫","经房裘缪","干解应宗","宣丁贲邓","郁单杭洪","包诸左石","崔吉钮龚",
            "程嵇邢滑","裴陆荣翁","荀羊於惠","甄魏加封","芮羿储靳","汲邴糜松","井段富巫","乌焦巴弓",
            "牧隗山谷","车侯宓蓬","全郗班仰","秋仲伊宫","宁仇栾暴","甘钭厉戎","祖武符刘","姜詹束龙",
            "叶幸司韶","郜黎蓟薄","印宿白怀","蒲台从鄂","索咸籍赖","卓蔺屠蒙","池乔阴郁","胥能苍双",
            "闻莘党翟","谭贡劳逄","姬申扶堵","冉宰郦雍","郤璩桑桂","濮牛寿通","边扈燕冀","郏浦尚农",
            "温别庄晏","柴瞿阎充","慕连茹习","宦艾鱼容","向古易慎","戈廖庚终","暨居衡步","都耿满弘",
            "匡国文寇","广禄阙东","殴殳沃利","蔚越夔隆","师巩厍聂","晁勾敖融","冷訾辛阚","那简饶空",
            "曾毋沙乜","养鞠须丰","巢关蒯相","查后江红","游竺权逯","盖益桓公","万俟司马","上官欧阳",
            "夏侯诸葛","闻人东方","赫连皇甫","尉迟公羊","澹台公冶","宗政濮阳","淳于仲孙","太叔申屠",
            "公孙乐正","轩辕令狐","钟离闾丘","长孙慕容","鲜于宇文","司徒司空","亓官司寇","仉督子车",
            "颛孙端木","巫马公西","漆雕乐正","壤驷公良","拓跋夹谷","宰父谷粱","晋楚阎法","汝鄢涂钦",
            "段干百里","东郭南门","呼延妫海","羊舌微生","岳帅缑亢","况後有琴","梁丘左丘","东门西门",
            "商牟佘佴","伯赏南宫","墨哈谯笪","年爱阳佟","第五言福","百家姓续",
        ]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
