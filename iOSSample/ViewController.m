//
//  ViewController.m
//  iOSSample
//
//  Created by mii on 2015/05/30.
//  Copyright (c) 2015年 name. All rights reserved.
//

#import "ViewController.h"

//遷移先クラスの読み込み
#import "TableViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //背景色の変更
    //方法１
    //self.view.backgroundColor = [UIColor blueColor];
    //方法2
    [self.view setBackgroundColor:[UIColor blueColor]];
    
    //Buttonの追加
    [self setButton];
}

//Button作成用メソッド
-(void)setButton{
    
    //Buttonの初期化
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    //タイトルの設定
    [button setTitle:@"Next view" forState:UIControlStateNormal];
    //タイトルにサイズを合わせる
    [button sizeToFit];
    //中央に設定
    button.center = CGPointMake(self.view.bounds.size.width/2, self.view.bounds.size.height/2);
    //タップされた時のメソッドを指定
    [button addTarget:self action:@selector(buttonTapped) forControlEvents:UIControlEventTouchDown];
    //背景とタイトルの色を設定
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button setBackgroundColor:[UIColor purpleColor]];
    //ボタンをビューに追加
    [self.view addSubview:button];
}

//タップされたときの処理
-(void)buttonTapped{
    TableViewController *tb = [[TableViewController alloc] init];
    //次の画面に移動
    [self.navigationController pushViewController:tb animated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
