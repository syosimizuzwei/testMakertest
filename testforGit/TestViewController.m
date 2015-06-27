//
//  TestViewController.m
//  TestMaker
//
//  Created by Syotaro Shimizu on 2015/06/03.
//  Copyright (c) 2015年 Syotaro Shimizu. All rights reserved.
//

#import "TestViewController.h"
#define COUNT 6
@interface TestViewController ()

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    quizListArray= [NSMutableArray array];
    //変数の初期化処理
    sumCount = 0;
    answerCount = 0;
    
    //↓で配列に問題を追加
    // TODO:ここに問題を追加
    //--------------ここから下にクイズの問題を書いてみよう！--------------//
    
    //[quizListArray addObject:[NSArray arrayWithObjects:@"2LifeisTech!は何をしている会社ですか？", @"まっすー帝国", @"みっちー帝国",@"IT教育",@"3",nil] ];の形で問題を書く
    //例↓
    
    //heeeeeeeeeeeeeeeee
    
    [quizListArray addObject:[NSArray arrayWithObjects:@"日本国憲法の前に日本にあった憲法派なんでしょう？", @"前日本国憲法", @"大帝国憲法",@"大日本帝国憲法",@"3",nil] ];
    [quizListArray addObject:[NSArray arrayWithObjects:@"日本憲法？", @"どちらでもない", @"はい",@"いいえ",@"3",nil] ];
    [quizListArray addObject:[NSArray arrayWithObjects:@"日本国憲法の施行日はいつ？", @"5月3日", @"4月10日",@"9月23日",@"1",nil] ];
    [quizListArray addObject:[NSArray arrayWithObjects:@"日本国憲法は全何条？", @"103条", @"85条",@"132条",@"1",nil] ];
    [quizListArray addObject:[NSArray arrayWithObjects:@"日本国憲法9条は何についてかかれている？", @"", @"85条",@"132条",@"1",nil] ];
    [quizListArray addObject:[NSArray arrayWithObjects:@"日本国憲法は全何条？", @"103条", @"85条",@"132条",@"1",nil] ];
    [quizListArray addObject:[NSArray arrayWithObjects:@"日本国憲法は全何条？", @"103条", @"85条",@"132条",@"1",nil] ];
    [quizListArray addObject:[NSArray arrayWithObjects:@"日本国憲法は全何条？", @"103条", @"85条",@"132条",@"1",nil] ];
    [quizListArray addObject:[NSArray arrayWithObjects:@"日本国憲法は全何条？", @"103条", @"85条",@"132条",@"1",nil] ];
    [quizListArray addObject:[NSArray arrayWithObjects:@"日本国憲法は全何条？", @"103条", @"85条",@"132条",@"1",nil] ];
    
    
    //--------------ここから上にクイズの問題を書いてみよう！--------------//
    //最初の問題を設定
    [self setQuestion];
}
//選択肢のボタンをおした時の処理
-(IBAction)answerIsChoise1{
    if (answerNumber == 1) {
        answerCount = answerCount +1;
    }
    [self setQuestion];
}
-(IBAction)answerIsChoise2{
    if (answerNumber == 2) {
        answerCount = answerCount +1;
    }
    [self setQuestion];
}
-(IBAction)answerIsChoise3{
    if (answerNumber == 3) {
        answerCount = answerCount +1;
    }
    [self setQuestion];
}
//配列から問題をセット&規定数出題した場合の画面推移
-(void)setQuestion{
    //define　COUNTした値だけ問題を出題したら結果画面に推移する
    if (sumCount == COUNT) {
        [self performSegueWithIdentifier:@"Result" sender:self];
        
    }else{
        //現在解いている問題の出題数を保存
        sumCount = sumCount +1;
        //クイズがRANDOMに出題されるように設定
        int section = arc4random() % [quizListArray count];
        //配列の中の問題を表示する
        probelemText.text=[[quizListArray objectAtIndex:section] objectAtIndex:0];
        [choise1 setTitle:[[quizListArray objectAtIndex:section] objectAtIndex:1] forState:UIControlStateNormal];
        [choise2 setTitle:[[quizListArray objectAtIndex:section] objectAtIndex:2] forState:UIControlStateNormal];
        [choise3 setTitle:[[quizListArray objectAtIndex:section] objectAtIndex:3] forState:UIControlStateNormal];
        answerNumber = [[[quizListArray objectAtIndex:section] objectAtIndex:4] intValue];
        //問題の重複表示を回避　↓コメントアウトで重複も可能
        [quizListArray removeObjectAtIndex:section];
    }
}
//画面推移時に値を渡す
//- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
//    if ([segue.identifier isEqualToString:@"Result"]) {
//        ResultViewController *viewCon = segue.destinationViewController;
//        viewCon.getAnswerCount = answerCount;
//        viewCon.getSumCount = sumCount;
//    }
//}
//


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
