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

@property (weak, nonatomic) IBOutlet UILabel *summary;

@property (nonatomic) GameLogic *game;

@property (nonatomic) int questionId;

@end

@implementation QuizViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSUserDefaults *preferences = [NSUserDefaults standardUserDefaults];
    
    if (([preferences objectForKey:@"question1"] == nil) && ([preferences objectForKey:@"question2"] == nil) && ([preferences objectForKey:@"question3"] == nil) && ([preferences objectForKey:@"question4"] == nil) && ([preferences objectForKey:@"question5"] == nil) && ([preferences objectForKey:@"question6"] == nil) && ([preferences objectForKey:@"question7"] == nil) && ([preferences objectForKey:@"question8"] == nil) && ([preferences objectForKey:@"question9"] == nil) && ([preferences objectForKey:@"question10"] == nil)) {
        [_game questionTrackerReset];
        [_game resetCounter];
    }
    
    [self toggleButtons:YES];
    
    _game = [[GameLogic alloc]init];
    
    [_game createQuestions];
    
    [self showQuestion];
}

// Shows the question and the four answers to the user.
- (void)showQuestion {
    NSDictionary *question;
    do {
        question = [_game fetchQuestion];
        
        _questionId = [[question objectForKey:@"id"] intValue];
        
    } while([_game questionAnswered:_questionId]);
    
    _question.text = [question objectForKey:@"question"];
    
    [_answer1 setTitle:[question objectForKey:@"answer1"] forState:UIControlStateNormal];
    
    [_answer2 setTitle:[question objectForKey:@"answer2"]
        forState:UIControlStateNormal];
    
    [_answer3 setTitle: [question objectForKey:@"answer3"]
        forState:UIControlStateNormal];
    
    [_answer4 setTitle: [question objectForKey:@"answer4"]
        forState:UIControlStateNormal];
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

// Informs the user that he/she answered correctly.
- (void)correctAnswer {
    _rightOrWrong.text = @"Correct!";
    [self toggleButtons:NO];
    [_game setQuestionAsAnswered:_questionId];
    [_game increaseCounter];
    self.summary.text = [_game summary];
}

// Informs the user that he/she answered incorrectly.
- (void) wrongAnswer {
    _rightOrWrong.text = @"Wrong...";
    [self toggleButtons:NO];
    [_game setQuestionAsAnswered:_questionId];
    [_game increaseCounter];
    self.summary.text = [_game summary];
}

// A way to ensure that an answer
// button cannot be pressed again after
// providing an answer.
- (void) toggleButtons: (BOOL)isUnanswered {
    if (isUnanswered) {
        _answer1.enabled = YES;
        _answer2.enabled = YES;
        _answer3.enabled = YES;
        _answer4.enabled = YES;
        _nextQuestion.hidden = YES;
    } else {
        _answer1.enabled = NO;
        _answer2.enabled = NO;
        _answer3.enabled = NO;
        _answer4.enabled = NO;
        _nextQuestion.hidden = NO;
    }
}

// Resets the buttons and shows a new question.
- (IBAction)nextQuestion:(id)sender {
    _rightOrWrong.text = @"";
    [self toggleButtons:YES];
    [self showQuestion];
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
