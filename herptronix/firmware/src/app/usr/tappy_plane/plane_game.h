/**
 * @file plane_game.h
 * @brief tappy plane, another quick & dirty game (flappy bird like)
 * @author Duboisset Philippe <duboisset.philippe@gmail.com>
 * @version N/A; draft / experimental
 * @date (yyyy-mm-dd) 2014-03-09
 * Licence: MIT
 */

#ifndef _plane_game_h
#define _plane_game_h

#include "p2d.h"
#include "gui.h"
#include "p2d_internal.h"
#include "p2d_sprite16.h"

#define PLANE_PX_PER_MS   0.09f /*object scrolling speed, in px per milliseconds*/
#define PLANE_MAX_OBJ       15  /*max number of simultaneous displayable object*/

/*functions prototypes*/
void PlaneGame(signal_t sig);
void PlaneBackground1Process(uint16_t ms);
void PlaneBackground2Process(uint16_t ms);
void PlaneGuiProcess(uint16_t ms);
void PlaneObjProcess(uint16_t ms);
void PlanePlayerProcess(uint16_t ms);
const rect_st *PlanePlayerGetRec(void);
uint16_t PlanePlayerGetStar(void);
void PlanePlayerAddStar(void);
bool PlanePlayerIsAlive(void);
void PlanePlayerKill(void);

/*sprites*/
extern const uint8_t __attribute__ ((aligned(4))) sp_plane_background1[];
extern const uint8_t __attribute__ ((aligned(4))) sp_plane_background2[];
extern const uint8_t __attribute__ ((aligned(4))) sp_plane_rock_rising[];
extern const uint8_t __attribute__ ((aligned(4))) sp_plane_rock_falling[];
extern const uint8_t __attribute__ ((aligned(4))) sp_plane_star[];
extern const uint8_t __attribute__ ((aligned(4))) sp_plane_player[];
extern const uint8_t __attribute__ ((aligned(4))) sp_plane_font[];
extern const uint8_t __attribute__ ((aligned(4))) sp_plane_ui_back[];
extern const uint8_t __attribute__ ((aligned(4))) sp_plane_ui_gameover[];

#endif
