//
//  ViewController.m
//  正则表达式
//
//  Created by dc005 on 16/9/14.
//  Copyright © 2016年 dc005. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//正则表达式是对字符串的一种逻辑公式
//1.通过正则表达式可以检测给定的字符串是否符合我们定义的逻辑
//2.也可以从字符串中获取我们想要的特定部分

- (void)viewDidLoad {
    [super viewDidLoad];
//    要检测的字符串(手机号)
    NSString *phoneNumber = @"15345678901";
//   定义我们的规则（正则表达  ^开始  $结束）
    NSString *regex = @"^1[3|4|5|7|8|9][0-9]{9}$";
//    谓词
    NSPredicate *pre = [NSPredicate predicateWithFormat:@"SELF MATCHES%@",regex];
//    判断
    BOOL eval = [pre evaluateWithObject:phoneNumber];
    NSLog(@"%d",eval);
    
    
//    检测座机(\d代表0-9)
    NSString *tel = @"0573-12345678";
    NSString *reg = @"^0\\d{2,3}-\\d{7,8}$";
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES%@",reg];
    BOOL truefalse = [predicate evaluateWithObject:tel];
    NSLog(@"%d",truefalse);
    
    
//    检测身份证号（18位，最后一位xX）
    NSString *number = @"14243111111111303x";
    NSString *regnum = @"^\\d{17}[x|X|0-9]$";
    NSPredicate *prenum = [NSPredicate predicateWithFormat:@"SELF MATCHES%@",regnum];
    BOOL truefalsenum = [prenum evaluateWithObject:number];
    NSLog(@"%d",truefalsenum);
    
    
//    检测邮箱
    NSString *add = @"1239276980@qq.com";
    NSString *regadd = @"^[0-9|a-z|A-Z|.|_|%|+|-]{6,}@[a-z|0-9]{2,5}.com$";
    NSPredicate *preadd = [NSPredicate predicateWithFormat:@"SELF MATCHES%@",regadd];
    BOOL truefalseadd = [preadd evaluateWithObject:add];
    NSLog(@"%d",truefalseadd);
    
//    检测中文汉字
    NSString *str = @"基础上地阿哥以后我快递费哈顿好垃圾会变加工爱你后几百年饿哦举手表决是不是破刃";
    NSString *regstr = @"^[\u4e00-\u9fa5]{0,}$";
    NSPredicate *prestr = [NSPredicate predicateWithFormat:@"SELF MATCHES%@",regstr];
    BOOL truefalsestr = [prestr evaluateWithObject:str];
    NSLog(@"%d",truefalsestr);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
