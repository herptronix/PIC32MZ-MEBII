/**
 * @file gui_demo.c
 * @brief demo menu
 * @author Duboisset Philippe <duboisset.philippe@gmail.com>
 * @version N/A -- draft / experimental
 * @date (yyyy-mm-dd) 2014-03-08
 * Licence: MIT
 */

#include "gui_demo.h"
#include "game.h"
#include "plane_game.h"
#include "resources.h"


#ifdef INCLUDE_GUI_DEMO

#define SIG_LIST      1     /*when the list is pressed*/
#define SIG_ESC       2     /*when the exit button is pressed*/


/**
 * Local variable
 */
typedef struct {
  char *title;
  char *description;
  void (*pFunction)(signal_t sig);
} demo_item_st;

#define DEMO_ITEM_CNT 10
const demo_item_st demoItems[DEMO_ITEM_CNT] = {
  //{"01-Common"        , "Common widgets (buttons, checkbox, radio)"     , &Gui_DemoButton},
  //{"02-Text"          , "Text area, with word wrap & alignment"         , &Gui_DemoText},
  {"03-ValueBox"      , "ValueBoxes & sliders exemples"                 , &Gui_DemoValueBox},
  //{"04-Dial"          , "Rotary encoder exemples"                       , &Gui_DemoRotaryButton},
  {"05-Graph #1"      , "Big graph, with several curves"                , &Gui_DemoGraph1},
  {"06-Graph #2"      , "Small graphs"                                  , &Gui_DemoGraph2},
  {"07-List"          , "Select a sprite with dynamic lists"            , &Gui_DemoList},
  {"08-Keyboard"      , "AZERTY / QWERTY / NUM keyboards"               , &Gui_DemoKeyboard},
  {"09-Popup"         , "Annoy users with popups !"                     , &Gui_DemoPopup},
  //{"10-SD card"       , "Read & Write operations on SD card"          , NULL},
  //{"11-File browser"  , "Yep, an embedded file browser"               , NULL},
  {"12-P2D demo"      , "2D primitives speed test"                      , &P2D_Demo},
  {"13-P2D alpha"     , "2D primitives speed test, with alpha blending" , &P2D_DemoAlpha},
  {"14-2D game #1"    , "Quick & dirty space shooter"                   , &Game},
  {"15-2D game #2"    , "Tappy plane, another quick & dirty game"       , &PlaneGame}
};
static uint16_t previousId;


/**
 * Local functions
 */
static void Gui_DemoHandler(signal_t sig);


/**
 * @function Gui_DemoLaunchTask
 * @brief Launch the GUI demo
 * @param none
 * @return none
 */
void Gui_DemoLaunchTask(void) {
  GUI_SetUserTask(Gui_Demo); //Gui_Demo
  //pCurrentTask = NULL;        /*the demo requires only GUI_SetUserTask(), no pCurrentTask*/
}


/**
 * @function Gui_DemoFrame
 * @brief clear the screen, delete obejcts & draw a frame
 * @param const void *str: frame title
 * @return none
 */
void Gui_DemoFrame(const void *str) {

  rect_st rec;

  /*clear all*/
  GUI_ClearAll();

  /*add frame*/
  rec = GUI_Rect(5, 0, 470, 245);
  SetFont(G_FONT_BOLD);
  GUI_W_FrameAdd(&rec, str);
  SetFont(G_FONT_DEFAULT);
}


/**
 * @function Gui_DemoNewPage
 * @brief erase all, add a frame & and 'menu' button; used by most demo pages
 * @param const void *str: frame title
 * @return none
 */
void Gui_DemoNewPage(const void *str) {

  rect_st rec;

  /*clear all & add frame*/
  Gui_DemoFrame(str);

  /*button 'Menu' */
  rec = GUI_Rect(415, 248, 60, 20);
  GUI_W_ButtonAdd(&rec, "Menu", G_IMG_HOME);
  GUI_SetSignal(E_PUSHED_TO_RELEASED, SIG_DEMO_MENU);
}

int16_t x, y, cnt = 0;

/**
 * @function Gui_Demo
 * @brief Main menu of the GUI demo
 * @param signal_t sig: unused
 * @return none
 */
void Gui_Demo(signal_t sig) {

  rect_st rec;
  uint16_t ii;

  /*local init.*/
  previousId = 0xFFFF;

  /*clear + frame*/
  Gui_DemoFrame("P2D/GUI demo");

  /*text area*/
  rec = GUI_Rect(10, 17, 300, 15);
  GUI_W_TextAdd(&rec, "Double-touch an item:");

  /*new list, with header, H & V scrollers*/
  rec = GUI_Rect(10, 37, 460, 200);
  GUI_M_ListAdd(&rec, true, true, false, E_PUSHED_TO_RELEASED, SIG_LIST);

  /*add categories*/
  GUI_M_ListAddCategoryToList(110, "Module");
  GUI_M_ListAddCategoryToList(300, "Description");

  /*add demo items*/
  for(ii = 0; ii < DEMO_ITEM_CNT; ii++) {
    GUI_M_ListAddItemToList(0 /*no sprite*/, NULL /*no UID readback*/);
    GUI_M_ListAddFieldToLastItem(demoItems[ii].title);
    GUI_M_ListAddFieldToLastItem(demoItems[ii].description);
  }

  /*done; go to handler*/
  GUI_SetUserTask(Gui_DemoHandler);
}


/**
 * @function Gui_DemoHandler
 * @brief handler of Gui_Demo
 * @param signal_t sig: signal coming from widgets
 * @return none
 */
static void Gui_DemoHandler(signal_t sig) {

  uint16_t id;

  TouchScreenRead(&x, &y);
  cnt++;

  /*list pressed?*/
  if(sig == SIG_LIST) {

    /*retrieve the selected item*/
    id = 0xFFFF;
    GUI_M_ListGetSelectedItemUid(&id);

    /*id != ? store it*/
    if(id != previousId) {
      previousId = id;
    }
    /*else, same item pressed 2 times -> launch the corresponding demo*/
    else {
      if(id < DEMO_ITEM_CNT) {
        if(demoItems[id].pFunction != NULL) {
          GUI_SetUserTask(demoItems[id].pFunction);
        }
      }
    }
  }

  /*button exit: kill the gui & return to setup*/
  else if(sig == SIG_DEMO_MENU) {
    //GUI_ClearAll();
    //GUI_SetUserTask(NULL);
    //pCurrentTask = &SetupMenuDisplayTask;
  }

  else {
    /*nothing*/
  }
}

#endif
