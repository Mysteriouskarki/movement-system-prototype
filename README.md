# 2D Movement & Ability System Prototype

## Overview

This project is a small prototype focused on designing and implementing a responsive player movement system. The goal was to explore how movement mechanics like sprinting and dashing affect player control, pacing, and overall game feel.

---

## Core Mechanics

### 1. Movement

* 4-directional movement using keyboard input
* Supports smooth diagonal movement
* Designed for responsiveness and control

### 2. Sprint

* Increases player speed while held
* Allows faster traversal at the cost of precision
* Adds a layer of player choice (speed vs control)

### 3. Dash

* Short burst of high-speed movement
* Direction is locked at the moment of activation
* Includes a cooldown to prevent spamming

### 4. Cooldown System

* Dash ability is limited by a cooldown timer
* Visualized using a UI progress bar
* Encourages timing and decision-making

---

## Key Design Decisions

### Direction Locking (Dash)

Locking the dash direction ensures consistency and prevents erratic movement mid-dash. This improves player control and makes the mechanic feel more intentional.

### Cooldown Implementation

A cooldown was added to the dash to:

* Prevent overuse
* Encourage strategic timing
* Maintain game balance

### Sprint Integration

Sprint was included to:

* Provide contrast to dash (sustained vs burst movement)
* Improve pacing in larger environments

### Visual Feedback

Color changes during dash were implemented to:

* Clearly communicate state changes
* Improve player awareness
* Enhance game feel

---

## Challenges & Solutions

### Input Issues (Keyboard Ghosting)

* Issue: Certain key combinations (arrow keys + sprint) did not register
* Solution: Switched to WASD-based controls for reliable input handling

### State Management Bugs

* Issue: Player remained stuck in dash state due to incorrect initialization
* Solution: Properly reset state variables and implemented timer-based transitions

### Movement Inconsistencies

* Issue: Diagonal movement behaved incorrectly during sprint
* Solution: Normalized input vectors to ensure consistent speed and direction

---

## What I Learned

* Small mechanics (like dash) require careful balancing to feel good
* Player feedback (visual/UI) is just as important as core logic
* State management is critical in gameplay systems
* Not all bugs are code-related (hardware/input limitations matter)

---

## Conclusion

This prototype demonstrates my ability to design, implement, and refine a core gameplay system. The focus was not on visuals, but on creating mechanics that feel responsive, intuitive, and engaging for the player.

---

## Media

Game play video attatched
