//
//  TemplateMethod.m
//  template_method
//
//  Created by Dmitriy Arkhipov on 02.08.16.
//  Copyright © 2016 Dmitriy Arkhipov. All rights reserved.
//


#import "TemplateMethod.h"


@implementation MealBase


- (void) make {

    [self prapeare];
    [self cook];
    [self finalSteps];

}


- (void) prapeare { [self doesNotRecognizeSelector:_cmd]; }

- (void) cook { [self doesNotRecognizeSelector:_cmd]; }

- (void) finalSteps { [self doesNotRecognizeSelector:_cmd]; }


/*
 
 [self doesNotRecognizeSelector:_cmd];
 
 doesNotRecognizeSelector - Вызывается если приемник не может распознать сообщение.
 Этот метод, в свою очередь, возбуждает NSInvalidArgumentException и генерирует сообщение об ошибке. 
 Любое сообщение doesNotRecognizeSelector:, как правило, направлено только среде выполнения системы.
 Может быть использован в коде программы, чтобы отказаться от релизации наследуемого метода.
 
 _cmd - Переменная является скрытым аргументом, переданным каждому методу, который является текущим селектором;
 
 */

@end



@implementation PotatoMeal

- (void) prapeare {

    NSLog(@"Чистим и моем картошку");
}

- (void) cook {

    NSLog(@"Ставим почищенную картошку на огонь");
    NSLog(@"Варим около 30 минут");
    NSLog(@"Сливаем остатки воды, разминаем варенный картофель в пюре");

}

- (void) finalSteps {

    NSLog(@"Посыпаем пюре специями и зеленью");
    NSLog(@"Картофельное пюре готово");

}

@end




@implementation SaladMeal

- (void) prapeare {
    
    NSLog(@"Моем помидоры и огурцы");
}

- (void) cook {
    
    NSLog(@"Нарезаем помидоры и огурцы");
    NSLog(@"Посыпаем зеленью, солью и специями");

}

- (void) finalSteps {

    NSLog(@"Поливаем подсолнечным маслом");
    NSLog(@"Салат готов");

}

@end




