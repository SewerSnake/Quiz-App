//
//  GameLogic.m
//  Quiz App
//
//  Created by Eric Groseclos on 2018-01-20.
//  Copyright © 2018 Eric Groseclos. All rights reserved.
//

#import <Foundation/Foundation.h>

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

-(NSDictionary*)fetchQuestion;

-(void)createQuestions;

@end

@implementation GameLogic

// Fetches a random question among the ten questions.
-(NSDictionary*)fetchQuestion {
    int number = 1 + arc4random_uniform(10); 
    
    if (number == 1) {
        return _question1;
    } else if (number == 2) {
        return _question2;
    } else if (number == 3) {
        return _question3;
    } else if (number == 4) {
        return _question4;
    } else if (number == 5) {
        return _question5;
    } else if (number == 6) {
        return _question6;
    } else if (number == 7) {
        return _question7;
    } else if (number == 8) {
        return _question8;
    } else if (number == 9) {
        return _question9;
    } else if (number == 10) {
        return _question10;
    }
    return nil;
}

// Creates ten questions.
-(void)createQuestions {
    _question1 = @{@"id":@"1",@"question":@"What is the value of pi?",@"answer1":@"3.1415",@"answer2":@"10.1765",@"answer3":@"1.9054",@"answer4":@"100.4537"};
    
    _question2 = @{@"id":@"2",@"question":@"What is the largest land mammal?",@"answer1":@"Giraffe",@"answer2":@"Hippopotamus",@"answer3":@"Elephant",@"answer4":@"rhinoceros"};
    
    _question3 = @{@"id":@"3",@"question":@"What is the largest land mammal?",@"answer1":@"Giraffe",@"answer2":@"Hippopotamus",@"answer3":@"Elephant",@"answer4":@"rhinoceros"};
    
    _question4 = @{@"id":@"4",@"question":@"What is the largest land mammal?",@"answer1":@"Giraffe",@"answer2":@"Hippopotamus",@"answer3":@"Elephant",@"answer4":@"rhinoceros"};
    
    _question5 = @{@"id":@"5",@"question":@"What is the largest land mammal?",@"answer1":@"Giraffe",@"answer2":@"Hippopotamus",@"answer3":@"Elephant",@"answer4":@"rhinoceros"};
    
    _question6 = @{@"id":@"6",@"question":@"What is the largest land mammal?",@"answer1":@"Giraffe",@"answer2":@"Hippopotamus",@"answer3":@"Elephant",@"answer4":@"rhinoceros"};
    
    _question7 = @{@"id":@"7",@"question":@"What is the largest land mammal?",@"answer1":@"Giraffe",@"answer2":@"Hippopotamus",@"answer3":@"Elephant",@"answer4":@"rhinoceros"};
    
    _question8 = @{@"id":@"8",@"question":@"What is the largest land mammal?",@"answer1":@"Giraffe",@"answer2":@"Hippopotamus",@"answer3":@"Elephant",@"answer4":@"rhinoceros"};
    
    _question9 = @{@"id":@"9",@"question":@"What is the largest land mammal?",@"answer1":@"Giraffe",@"answer2":@"Hippopotamus",@"answer3":@"Elephant",@"answer4":@"rhinoceros"};
    
    _question10 = @{@"id":@"10",@"question":@"What is the largest land mammal?",@"answer1":@"Giraffe",@"answer2":@"Hippopotamus",@"answer3":@"Elephant",@"answer4":@"rhinoceros"};
}

@end
