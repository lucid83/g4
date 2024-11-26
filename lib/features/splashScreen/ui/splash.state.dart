import 'package:flutter/widgets.dart';
import 'package:g4/constants.dart';
import 'package:g4/features/splashScreen/domain/attr.model.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

final List<List<AnimatedAttrs>> attr = [
  [
    AnimatedAttrs(
      color: const Color(0xFF581339),
      size: const Size(100, 100),
      text: "1. amount?",
      top: 180,
      left: 0,
      showText: true,
    ),
    AnimatedAttrs(
      color: const Color(0xFF82816D),
      size: const Size(100, 100),
      text: "2. where?",
      top: 0,
      left: 0,
      showText: true,
    ),
    AnimatedAttrs(
      color: const Color(0xFF1A3636),
      size: const Size(100, 100),
      text: "3. approve?",
      top: 90,
      left: 150,
      showText: true,
    ),
    AnimatedAttrs(
      size: const Size(240, 24),
      top: 0,
      left: 0,
    ),
  ],
  [
    AnimatedAttrs(
      color: AppColors.nature.withOpacity(0.2),
      size: const Size(180, 180),
      top: 160 - (180 / 2),
      left: 100 - (180 / 2),
    ),
    AnimatedAttrs(
      color: AppColors.dirty.withOpacity(0.6),
      size: const Size(130, 130),
      top: 160 - (130 / 2),
      left: 100 - (130 / 2),
    ),
    AnimatedAttrs(
      color: AppColors.nature,
      size: const Size(80, 80),
      top: 160 - (80 / 2),
      left: 100 - (80 / 2),
    ),
    AnimatedAttrs(
      size: const Size(50, 50),
      top: 00,
      left: (240 / 2) - (50 / 2),
    ),
  ],
  [
    AnimatedAttrs(
      color: AppColors.nature.withOpacity(0.2),
      size: const Size(100, 24),
      top: 100,
      left: (240 / 2) - (100 / 2),
    ),
    AnimatedAttrs(
      color: AppColors.dirty.withOpacity(0.6),
      size: const Size(170, 24),
      top: 150,
      left: (240 / 2) - (170 / 2),
    ),
    AnimatedAttrs(
      color: AppColors.nature,
      size: const Size(240, 24),
      top: 200,
      left: 0,
    ),
    AnimatedAttrs(
      child: const Icon(
        IconsaxPlusLinear.money_recive,
        size: 40,
        fill: 0.2,
      ),
      size: const Size(50, 50),
      top: 30,
      left: (240 / 2) - (50 / 2),
    ),
  ],
  [
    AnimatedAttrs(
      color: AppColors.nature,
      size: const Size(200, 200),
      top: 50,
      left: 00,
    ),
    AnimatedAttrs(
      color: AppColors.dirty.withOpacity(0.6),
      size: const Size(40, 74),
      top: 140,
      left: (200 / 2) - (40 / 2),
    ),
    AnimatedAttrs(
      color: AppColors.dirty,
      size: const Size(50, 50),
      top: 110,
      left: (200 / 2) - (50 / 2),
    ),
    AnimatedAttrs(
      size: const Size(50, 50),
      top: 130,
      left: (200 / 2) - (50 / 2),
    ),
  ]
];

final List<Map<String, String>> captions = [
  {
    "title": "3-step \ntransactions",
    "sub":
        "Perform everyday transactions with ease of 3 steps and at no cost to you when you do it from one keeper account to another."
  },
  {
    "title": "In-depth \nfinancial analytics ",
    "sub":
        "You can only improve what you measure; track all savings and spendings all in one place and have a better grip on your expenses."
  },
  {
    "title": "High-interest \nsavings account",
    "sub":
        "Save right in the application with access to a separate savings account that brings competitive returns on savings when kept for over 3 months."
  },
  {
    "title": "Secure service payments",
    "sub":
        "Payments can be made to escrow so that service workers recieve money only when services are completed.G"
  },
];
