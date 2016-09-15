//
//  TemplateMethod.h
//  template_method
//
//  Created by Dmitriy Arkhipov on 02.08.16.
//  Copyright © 2016 Dmitriy Arkhipov. All rights reserved.
//

#import <Foundation/Foundation.h>



@protocol Cooking <NSObject>

- (void) make;

@end



@interface MealBase : NSObject <Cooking>

- (void) make;


//abstact methods

- (void) prapeare;

- (void) cook;

- (void) finalSteps;

@end



@interface PotatoMeal : MealBase

- (void) prapeare;

- (void) cook;

- (void) finalSteps;

@end


@interface SaladMeal : MealBase

- (void) prapeare;

- (void) cook;

- (void) finalSteps;

@end








