/**
 * @file game_obj.c
 * @brief Q&D space shooter 2D game, player's ship management.
 * @author Duboisset Philippe <duboisset.philippe@gmail.com>
 * @version N/A; draft / experimental
 * @date (yyyy-mm-dd) 2014-03-08
 * Licence: MIT
 */

#include "game.h"

#define PV_MAX 150  /*life points*/
#define PS_MAX 80   /*shield points*/

/**
 * local variables
 */
static rect_st ldst;  /*ship clip (on screen)*/
static float pv;
static float ps;

/**
 * @function PlayerHandleCollision
 * @brief check if a given rect is in collision with the player's ship
 * @param const rect_st *rec: input rect
 * @param uint8_t dmg: missile damage
 * @return bool: true -> collsion, false otherwise
 */
bool PlayerHandleCollision(const rect_st *missileRec, uint8_t dmg) {

  bool bRes = false;
  rect_st lrect = ldst;
  
  /*collide?*/
  P2D_Clip(&lrect, missileRec);
  if(pv > 0 && lrect.w > 0 && lrect.h > 0) {
    bRes = true;

    /*apply damage on shield, if possible*/
    if(ps > dmg) {
      ps -= dmg;
      ExplosionAdd(EXPLOSION_SHIELD, missileRec);
    }
    /*otherwise apply damage on life*/
    else {
      ps = 0;
      /*not dead? small explosion on missile*/
      if(pv > dmg) {
        pv -= dmg;
        ExplosionAdd(EXPLOSION_SMALL, missileRec);
      }
      /*dead? medium explosion on ship*/
      else {
        pv = 0;
        ExplosionAdd(EXPLOSION_MEDIUM, &ldst);
      }
    }
  }

  return bRes;
}


/**
 * @function PlayerGetCoords
 * @brief return ship's coordinates (center of the ship)
 * @param coord_t *x, coord_t *y: output coords
 * @return none
 */
void PlayerGetCoords(coord_t *x, coord_t *y) {
  *x = ldst.x + ldst.w / 2;
  *y = ldst.y + ldst.h / 2;
}


/**
 * @function PlayerGetLife
 * @brief return the life ratio e[0-1]
 * @param none
 * @return life ratio e[0-1]
 */
float PlayerGetLife(void) {
  return pv / PV_MAX;
}


/**
 * @function PlayerGetShield
 * @brief return the shield ratio e[0-1]
 * @param none
 * @return shield ratio e[0-1]
 */
float PlayerGetShield(void) {
  return ps / PS_MAX;
}


/**
 * @function PlayerProcess
 * @brief draw & move the ship, randomly fires
 * @param uint16_t ms: milliseconds elapsed during the last frame; if == 0, initialize
 * @return none
 */
void PlayerProcess(uint16_t ms) {

  rect_st lsrc;
  static length_t wSprite, hSprite, hSurface;
  static float fOffsetY, pxPerMs, psPerMs;

  /*DISPLAY_TRANSPARENT: display pixels only if != black*/
  P2D_SetDisplayMode(DISPLAY_TRANSPARENT);
  P2D_SetAlpha(255);
  
  /*t == 0? initialization*/
  if(ms == 0) {
    wSprite = P2D_SpriteGetWidth(sp_player_ship);
    hSprite = P2D_SpriteGetHeight(sp_player_ship);
    hSurface = GetHeight();
    fOffsetY = hSurface / 2;
    pxPerMs = 0.080f;
    psPerMs = 0.005f;
    ldst.w = ldst.h = 0;
    pv = PV_MAX;
    ps = PS_MAX;
  }
  else if(pv > 0) {

    /**
     * dummy ship movment
     * implement human control here
     */
    /*actualise the ship position according to the elasped time since last execution*/
    fOffsetY += pxPerMs * ms;
    if(fOffsetY < 0.0f) {
      fOffsetY = 0.0f;
      pxPerMs = -pxPerMs;
    }
    else if(fOffsetY > hSurface - hSprite) {
      fOffsetY = hSurface - hSprite;
      pxPerMs = -pxPerMs;
    }

    ps += psPerMs * ms;
    if(ps > PS_MAX) ps = PS_MAX;

    /**
     * draw the ship
     */
    /*configure source clip (sprite clip)*/
    lsrc.x = 0;
    lsrc.y = 0;
    lsrc.w = wSprite;
    lsrc.h = hSprite;

    /*configure destination clip (surface clip)*/
    ldst.x = 0;
    ldst.y = (coord_t) fOffsetY;
    ldst.w = lsrc.w;
    ldst.h = lsrc.h;

    /*display the ship*/
    P2D_Sprite16(&lsrc, &ldst, sp_player_ship);

    /**
     * dummy ship missile
     * implement human control here
     */
    if(P2D_Rand(100) < 20) {
      MissileLaunch(MISSILE_FROM_PLAYER, &ldst);
    }
  }
}
