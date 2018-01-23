//
//  GameLogic.h
//  Quiz App
//
//  Created by Eric Groseclos on 2018-01-20.
//  Copyright © 2018 Eric Groseclos. All rights reserved.
//

@interface GameLogic : NSObject

@property (nonatomic) NSDictionary *question1;
@property (nonatomic) NSDictionary *question2;
@property (nonatomic) NSDictionary *question3;
@property (nonatomic) NSDictionary *question4;
@property (nonatomic) NSDictionary *question5;
@property (nonatomic) NSDictionary *question6;
@property (nonatomic) NSDictionary *question7;
@property (nonatomic) NSDictionary *question8;
@property (nonatomic) NSDictionary *question9;
@property (nonatomic) NSDictionary *question10;

@property (nonatomic) int questionCounter;

-(void)resetCounter;

-(int)getCounterValue;

-(void)increaseCounter;

-(NSDictionary*)fetchQuestion;

-(void)createQuestions;

-(BOOL)checkAnswer:(int)idOfQuestion usersAnswer: (NSString*)answer;

-(void)questionTrackerReset;

-(BOOL)questionAnswered:(int)idOfQuestion;

-(void)setQuestionAsAnswered:(int)idOfQuestion;

@end
