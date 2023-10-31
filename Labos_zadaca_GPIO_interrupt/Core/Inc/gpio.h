/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file    gpio.h
  * @brief   This file contains all the function prototypes for
  *          the gpio.c file
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2023 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */
/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __GPIO_H__
#define __GPIO_H__

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "main.h"

/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* USER CODE BEGIN Private defines */
# define LED3_ORANGE_ID 1
# define LED4_GREEN_ID 2
# define LED5_RED_ID 3
# define LED6_BLUE_ID 4

# define LED_GPIOx GPIOD
# define LED4_GREEN_PinNumber GPIO_PIN_12
# define LED3_ORANGE_PinNumber GPIO_PIN_13
# define LED5_RED_PinNumber GPIO_PIN_14
# define LED6_BLUE_PinNumber GPIO_PIN_15
/* USER CODE END Private defines */

void MX_GPIO_Init(void);

/* USER CODE BEGIN Prototypes */
void gpio_led_state (uint8_t LED_ID , uint8_t state );
void MX_GPIO_Init (void);
/* USER CODE END Prototypes */

#ifdef __cplusplus
}
#endif
#endif /*__ GPIO_H__ */

