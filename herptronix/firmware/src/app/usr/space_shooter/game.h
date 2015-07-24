/**
 * @file game.h
 * @brief Q&D space shooter 2D game, entry point.
 * @author Duboisset Philippe <duboisset.philippe@gmail.com>
 * @version N/A; draft / experimental
 * @date (yyyy-mm-dd) 2014-03-08
 * Licence: MIT
 */

#ifndef _game_h
#define _game_h

#include "p2d.h"
#include "gui.h"
#include "p2d_internal.h"
#include "p2d_sprite16.h"

#define MAX_ENEMY           30                    /*nb of simultaneous enemies*/
#define MAX_PLAYER_MISSILES 15                    /*nb of simultaneous missiles from the player*/
#define MAX_ENEMY_MISSILES  60                    /*nb of simultaneous missiles from the enemies*/
#define MAX_EXPLOSION       (MAX_ENEMY_MISSILES)  /*nb of simultaneous explosions*/

/*enumeration: possible enemies*/
typedef enum {
  ENEMY_SHIP_1,
  ENEMY_SHIP_2,
  ENEMY_SHIP_3,
  ENEMY_BOSS,
  ENEMY_ASTEROID,
  _ENEMY_MAX
} enemy_e;

/*enumeration: possible missiles*/
typedef enum {
  MISSILE_FROM_PLAYER = 0,
  MISSILE_FROM_ENEMY_1,
  MISSILE_FROM_ENEMY_2,
  MISSILE_FROM_ENEMY_3,
  MISSILE_FROM_ASTEROID,
  _MISSILE_FROM_MAX
} missile_e;

/*enumeration: possible explosions*/
typedef enum {
  EXPLOSION_SMALL,
  EXPLOSION_MEDIUM,
  EXPLOSION_LARGE,
  EXPLOSION_SHIELD,
  _EXPLOSION_MAX
} explosion_e;

/*graphic_obj_st: generic animation object*/
typedef struct {
  const uint8_t *pSprite; /*pointer to the sprite file*/
  rect_st rdst, rsrc;     /*source & destination clips*/
  uint16_t tmFrame, tm;   /*time between 2 frames & internal time counter*/
  uint8_t step;           /*current displayed frame*/
} graphic_obj_st;

/*functions prototypes*/
void    Game(signal_t sig);
void    GraphicObjInit(graphic_obj_st *p, const uint8_t *pSprite);
int8_t  GraphicObjDraw(graphic_obj_st *obj, uint16_t ms);
void    BackgroundProcess(uint16_t ms);
void    GuiProcess(uint16_t ms);
int8_t  MissileLaunch(missile_e type, const rect_st *shipClip);
void    MissileProcess(uint16_t ms);
bool    EnemyHandleCollision(const rect_st *missileRec, uint8_t dmg);
void    EnemyProcess(uint16_t ms);
bool    PlayerHandleCollision(const rect_st *rec, uint8_t dmg);
void    PlayerGetCoords(coord_t *x, coord_t *y);
float   PlayerGetLife(void);
float   PlayerGetShield(void);
void    PlayerProcess(uint16_t ms);
void    ExplosionAdd(explosion_e type, const rect_st *rec);
void    ExplosionProcess(uint16_t ms);
float   fabs(float in);

/*ships*/
extern const uint8_t __attribute__ ((aligned(4))) sp_player_ship[];
extern const uint8_t __attribute__ ((aligned(4))) sp_enemy1_ship[];
extern const uint8_t __attribute__ ((aligned(4))) sp_enemy2_ship[];
extern const uint8_t __attribute__ ((aligned(4))) sp_enemy3_ship[];
extern const uint8_t __attribute__ ((aligned(4))) sp_enemy_boss_ship[];

/*misc*/
extern const uint8_t __attribute__ ((aligned(4))) sp_explosion_shield[];
extern const uint8_t __attribute__ ((aligned(4))) sp_explosion_small[];
extern const uint8_t __attribute__ ((aligned(4))) sp_explosion_medium[];

/*gui*/
extern const uint8_t __attribute__ ((aligned(4))) sp_gui_background[];
extern const uint8_t __attribute__ ((aligned(4))) sp_gui_bar[];
extern const uint8_t __attribute__ ((aligned(4))) sp_gui_gameover[];

/*missiles*/
extern const uint8_t __attribute__ ((aligned(4))) sp_player_missile[];
extern const uint8_t __attribute__ ((aligned(4))) sp_enemy1_missile[];
extern const uint8_t __attribute__ ((aligned(4))) sp_enemy2_missile[];
extern const uint8_t __attribute__ ((aligned(4))) sp_enemy3_missile[];
extern const uint8_t __attribute__ ((aligned(4))) sp_asteroid[];

/*background*/
extern const uint8_t __attribute__ ((aligned(4))) sp_background[];

#define SP_EXPLOSION_TFRAME 60

#endif
