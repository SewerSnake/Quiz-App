//
//  QuizViewController.m
//  Quiz App
//
//  Created by Eric Groseclos on 2018-01-20.
//  Copyright © 2018 Eric Groseclos. All rights reserved.
//

#import "QuizViewController.h"
#import "GameLogic.h"

@interface QuizViewController ()

@property (weak, nonatomic) IBOutlet UILabel *question;

@property (weak, nonatomic) IBOutlet UIButton *answer1;
@property (weak, nonatomic) IBOutlet UIButton *answer2;
@property (weak, nonatomic) IBOutlet UIButton *answer3;
@property (weak, nonatomic) IBOutlet UIButton *answer4;

@property (nonatomic) GameLogic *game;

@end

@implementation QuizViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _game = [[GameLogic alloc]init];
    [_game createQuestions];
    [self showQuestion];
}

// Shows the question and the four answers to the user.
- (void)showQuestion {
    NSDictionary *question = [_game fetchQuestion];
    
    _question.text = [question objectForKey:@"question"];
    
    [_answer1 setTitle:[question objectForKey:@"answer1"] forState:UIControlStateNormal];
    
    [_answer2 setTitle:[question objectForKey:@"answer2"]
        forState:UIControlStateNormal];
    
    [_answer3 setTitle: [question objectForKey:@"answer3"]
        forState:UIControlStateNormal];
    
    [_answer4 setTitle: [question objectForKey:@"answer4"]
        forState:UIControlStateNormal];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
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
