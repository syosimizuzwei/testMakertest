//
//  TestViewController.h
//  TestMaker
//
//  Created by Syotaro Shimizu on 2015/06/03.
//  Copyright (c) 2015年 Syotaro Shimizu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TestViewController : UIViewController{NSMutableArray *quizListArray;
    //ボタン1の関連付け
    IBOutlet UIButton *choise1;
    //ボタン2の関連付け
    IBOutlet UIButton *choise2;
    //ボタン3の関連付け
    IBOutlet UIButton *choise3;
    //問題文のTextViewの関連付け
    IBOutlet UITextView *probelemText;
    //ImageViewなどを宣言する場合はこの下に
    
    //現在何問目か
    int sumCount;
    //何問正解してるか
    int answerCount;
    //正解番号一時保存
    int answerNumber;
}
//ボタン1の関連付け
-(IBAction)answerIsChoise1;
//ボタン2の関連付け
-(IBAction)answerIsChoise2;
//ボタン3の関連付け
-(IBAction)answerIsChoise3;



@end
