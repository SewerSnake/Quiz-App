//
//  GameLogic.m
//  Quiz App
//
//  Created by Eric Groseclos on 2018-01-20.
//  Copyright © 2018 Eric Groseclos. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GameLogic.h"

@implementation GameLogic

// Sets the counter to zero. This
// counter keeps track of the number
// of answered questions.
-(void)resetCounter {
    self.questionCounter = 0;
    self.correctCounter = 0;
    self.incorrectCounter = 0;
}

// A getter method for the counter.
-(int)getCounterValue {
    return self.questionCounter;
}

// A getter method for the number of correctly
// answered questions.
-(int)getCorrect {
    return self.correctCounter;
}

// A getter method for the counter.
-(int)getIncorrect {
    return self.incorrectCounter;
}

// Increases the counter by one.
// If ten is reached, a new game is
// started by setting the counter to
// zero, as well as set all questions
// as unanswered.
-(void)increaseCounter {
    self.questionCounter++;
    if (self.questionCounter == 10) {
        [self questionTrackerReset];
        [self resetCounter];
    }
}

// The user has guessed correctly!
// Increase by one.
-(void)increaseCorrect {
    self.correctCounter++;
}

// The user has guessed incorrectly!
// Increase by one.
-(void)increaseIncorrect {
    self.incorrectCounter++;
}

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
// Each question has one correct answer.
-(void)createQuestions {
    _question1 = @{@"id":@"1",@"question":@"What is the value of pi?",@"answer1":@"3.1415",@"answer2":@"10.1765",@"answer3":@"1.9054",@"answer4":@"100.4537",@"correctAnswer":@"1"};
    
    _question2 = @{@"id":@"2",@"question":@"What is the largest land mammal?",@"answer1":@"Giraffe",@"answer2":@"Hippopotamus",@"answer3":@"Elephant",@"answer4":@"Rhinoceros",@"correctAnswer":@"3"};
    
    _question3 = @{@"id":@"3",@"question":@"How high is Mount Everest?",@"answer1":@"3 267 m",@"answer2":@"10 023 m",@"answer3":@"9 496 m",@"answer4":@" 8 848 m", @"correctAnswer":@"4"};
    
    _question4 = @{@"id":@"4",@"question":@"Who is the president of the US?",@"answer1":@"Hillary Clinton",@"answer2":@"Barack Obama",@"answer3":@"Donald Trump",@"answer4":@"George Bush",@"correctAnswer":@"3"};
    
    _question5 = @{@"id":@"5",@"question":@"What is the square root of 81?",@"answer1":@"8",@"answer2":@"9",@"answer3":@"7",@"answer4":@"10",@"correctAnswer":@"2"};
    
    _question6 = @{@"id":@"6",@"question":@"What animal lives the longest?",@"answer1":@"Greenland shark",@"answer2":@"Koi",@"answer3":@"Red sea urchin",@"answer4":@"Bowhead whale", @"correctAnswer":@"1"};
    
    _question7 = @{@"id":@"7",@"question":@"What is the Earth's circumference?",@"answer1":@"4550 miles",@"answer2":@"4201 miles",@"answer3":@"3500 miles",@"answer4":@"4008 miles",@"correctAnswer":@"4"};
    
    _question8 = @{@"id":@"8",@"question":@"Who was Albert Einstein?",@"answer1":@"An actor",@"answer2":@"A physicist",@"answer3":@"A politician",@"answer4":@"A painter",@"correctAnswer":@"2"};
    
    _question9 = @{@"id":@"9",@"question":@"How many sides does a die have?",@"answer1":@"Seven",@"answer2":@"Ten",@"answer3":@"Six",@"answer4":@"Three",@"correctAnswer":@"3"};
    
    _question10 = @{@"id":@"10",@"question":@"What is China's population?",@"answer1":@"1.4 billion",@"answer2":@"1 billion",@"answer3":@"700 million",@"answer4":@"Two billion",@"correctAnswer":@"1"};
}

// Determines if the user answered correctly.
// Returns YES if correct.
// Returns NO if incorrect.
-(BOOL)checkAnswer:(int)idOfQuestion usersAnswer: (NSString*)answer {
    
    if (idOfQuestion == 1) {
        if ([answer isEqualToString:[_question1 objectForKey:@"correctAnswer"]]) {
            return YES;
        } else {
            return NO;
        }
    } else if (idOfQuestion == 2) {
        if ([answer isEqualToString:[_question2 objectForKey:@"correctAnswer"]]) {
            return YES;
        } else {
            return NO;
        }
    } else if (idOfQuestion == 3) {
        if ([answer isEqualToString:[_question3 objectForKey:@"correctAnswer"]]) {
            return YES;
        } else {
            return NO;
        }
    } else if (idOfQuestion == 4) {
        if ([answer isEqualToString:[_question4 objectForKey:@"correctAnswer"]]) {
            return YES;
        } else {
            return NO;
        }
    } else if (idOfQuestion == 5) {
        if ([answer isEqualToString:[_question5 objectForKey:@"correctAnswer"]]) {
            return YES;
        } else {
            return NO;
        }
    } else if (idOfQuestion == 6) {
        if ([answer isEqualToString:[_question6 objectForKey:@"correctAnswer"]]) {
            return YES;
        } else {
            return NO;
        }
    } else if (idOfQuestion == 7) {
        if ([answer isEqualToString:[_question7 objectForKey:@"correctAnswer"]]) {
            return YES;
        } else {
            return NO;
        }
    } else if (idOfQuestion == 8) {
        if ([answer isEqualToString:[_question8 objectForKey:@"correctAnswer"]]) {
            return YES;
        } else {
            return NO;
        }
    } else if (idOfQuestion == 9) {
        if ([answer isEqualToString:[_question9 objectForKey:@"correctAnswer"]]) {
            return YES;
        } else {
            return NO;
        }
    } else if (idOfQuestion == 10) {
        if ([answer isEqualToString:[_question10 objectForKey:@"correctAnswer"]]) {
            return YES;
        } else {
            return NO;
        }
    }
    return NO;
}

// Creates/sets all ten values in NSUserDefaults to NO.
// This is used the first time the app is installed,
// as well as when the user has guessed all questions
// correctly.
-(void)questionTrackerReset {
    NSUserDefaults *preferences = [NSUserDefaults standardUserDefaults];
    
    for (int i = 1; i <= 10; i++) {
        NSString *currentQuestionKey =
            [@"question" stringByAppendingString:@(i).stringValue];
        
        [preferences setBool:NO forKey:currentQuestionKey];
    }
    
    [preferences synchronize];
}

// Investigates if the question has been
// answered or not.
// Returns YES if it has
// Returns NO if it hasn't
-(BOOL)questionAnswered:(int)idOfQuestion {
    NSUserDefaults *preferences = [NSUserDefaults standardUserDefaults];
    
    NSString *currentQuestionKey =
        [@"question" stringByAppendingString:@(idOfQuestion).stringValue];
    
    if (!([preferences objectForKey:currentQuestionKey] == nil)) {
        BOOL answered = [preferences boolForKey:currentQuestionKey];
        if (answered) {
            return YES;
        } else {
            return NO;
        }
    } else {
        return NO;
    }
}

// Sets the question as answered, in
// other words to YES.
-(void)setQuestionAsAnswered:(int)idOfQuestion {
    NSUserDefaults *preferences = [NSUserDefaults standardUserDefaults];
    
    NSString *currentQuestionKey =
        [@"question" stringByAppendingString:@(idOfQuestion).stringValue];
    
    [preferences setBool:YES forKey:currentQuestionKey];
}

// Provides the user with a summary of correctly/incorrectly guessed questions after every fifth question.
-(NSString*)summary {
    NSString *numberString;
    if (_questionCounter == 5 || _questionCounter == 10) {
        numberString = [@([self getCorrect]) stringValue];
        
        NSString *correct = [@"Correct guesses: " stringByAppendingString:numberString];
        
        numberString = [@([self getIncorrect]) stringValue];
        
        NSString *incorrect = [@" Incorrect guesses: " stringByAppendingString:numberString];
        
        return [correct stringByAppendingString:incorrect];
    } else {
        return @"";
    }
}

@end
