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

@property (weak, nonatomic) IBOutlet UILabel *rightOrWrong;

@property (weak, nonatomic) IBOutlet UIButton *nextQuestion;

@property (nonatomic) GameLogic *game;

@property (nonatomic) int questionId;

@end

@implementation QuizViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _nextQuestion.hidden = YES;
    _game = [[GameLogic alloc]init];
    [_game createQuestions];
    [self showQuestion];
}

// Shows the question and the four answers to the user.
- (void)showQuestion {
    NSDictionary *question = [_game fetchQuestion];
    
    _questionId = [[question objectForKey:@"id"] intValue];
    
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

// The following four methods provide the "model"
// with the info necessary to determine if
// the user answered correctly or not.
- (IBAction)answerOne:(id)sender {
    if([_game checkAnswer:_questionId usersAnswer:@"1"]) {
        [self correctAnswer];
    } else {
        [self wrongAnswer];
    }
}

- (IBAction)answerTwo:(id)sender {
    if([_game checkAnswer:_questionId usersAnswer:@"2"]) {
        [self correctAnswer];
    } else {
        [self wrongAnswer];
    }
}

- (IBAction)answerThree:(id)sender {
    if([_game checkAnswer:_questionId usersAnswer:@"3"]) {
        [self correctAnswer];
    } else {
        [self wrongAnswer];
    }
}

- (IBAction)answerFour:(id)sender {
    if([_game checkAnswer:_questionId usersAnswer:@"4"]) {
        [self correctAnswer];
    } else {
        [self wrongAnswer];
    }
}

//
- (void)correctAnswer {
    _rightOrWrong.text = @"Correct!";
    _nextQuestion.hidden = NO;
}

//
- (void) wrongAnswer {
    _rightOrWrong.text = @"Wrong...";
    _nextQuestion.hidden = NO;
}

// A way to ensure that an answer
// button cannot be pressed again after
// providing an answer.
- (void) toggleButtons: (BOOL)on {
    if (on) {
        _answer1.enabled = YES;
        _answer2.enabled = YES;
        _answer3.enabled = YES;
        _answer4.enabled = YES;
    } else {
        _answer1.enabled = NO;
        _answer2.enabled = NO;
        _answer3.enabled = NO;
        _answer4.enabled = NO;
    }
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
