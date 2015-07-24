/**
 * @file gui_demo_popup.c
 * @brief popup demo
 * @author Duboisset Philippe <duboisset.philippe@gmail.com>
 * @version 0.1b
 * @date (yyyy-mm-dd) 2013-11-01
 * Licence: MIT
 */

#include "gui_demo_popup.h"
#include "resources.h"

#ifdef INCLUDE_GUI_DEMO

#define SIG_QUESTION_2B 1
#define SIG_QUESTION_3B 2
#define SIG_ERROR_1B    3
#define SIG_INFO_1B     4


/**
 * local functions
 */
static void Gui_DemoPopupHandler(signal_t sig);


/**
 * @function Gui_DemoPopup
 * @brief popup demo
 * @param signal_t sig: unused
 * @return none
 */
void Gui_DemoPopup(signal_t sig) {

  rect_st rec;

  Gui_DemoNewPage("Popup");

  rec = GUI_Rect(15, 30, 141, 21);
  GUI_W_ButtonAdd(&rec, "Question  (2 btn)", G_IMG_OK);
  GUI_SetSignal(E_PUSHED_TO_RELEASED, SIG_QUESTION_2B);

  rec = GUI_Rect(165, 30, 141, 21);
  GUI_W_ButtonAdd(&rec, "Question (3 btn)", G_IMG_OK);
  GUI_SetSignal(E_PUSHED_TO_RELEASED, SIG_QUESTION_3B);

  rec = GUI_Rect(15, 55, 141, 21);
  GUI_W_ButtonAdd(&rec, "Error  (1 btn)", G_IMG_OK);
  GUI_SetSignal(E_PUSHED_TO_RELEASED, SIG_ERROR_1B);

  rec = GUI_Rect(165, 55, 141, 21);
  GUI_W_ButtonAdd(&rec, "Info (1 btn)", G_IMG_OK);
  GUI_SetSignal(E_PUSHED_TO_RELEASED, SIG_INFO_1B);


  GUI_SetUserTask(Gui_DemoPopupHandler);


}


/**
 * @function Gui_DemoPopupHandler
 * @brief popup demo handler
 * @param signal_t sig: signal coming from widgets
 * @return none
 */
static void Gui_DemoPopupHandler(signal_t sig) {

  switch(sig) {

    case SIG_QUESTION_2B:
      GUI_M_Popup(POPUP_BTN_NONE, POPUP_BTN_YES, POPUP_BTN_NO, G_IMG_BIG_ASK, "Popup question with 2 buttons");
      break;

    case SIG_QUESTION_3B:
      GUI_M_Popup(POPUP_BTN_YES, POPUP_BTN_NO, POPUP_BTN_CANCEL, G_IMG_BIG_ASK, "Popup question with 3 buttons");
      break;

    case SIG_ERROR_1B:
      GUI_M_Popup(POPUP_BTN_NONE, POPUP_BTN_NONE, POPUP_BTN_OK, G_IMG_BIG_ERROR, "Error with 1 button");
      break;

    case SIG_INFO_1B:
      GUI_M_Popup(POPUP_BTN_NONE, POPUP_BTN_NONE, POPUP_BTN_OK, G_IMG_BIG_INFO, "Info with 1 button");
      break;

    /*'menu' button*/
    case SIG_DEMO_MENU:
      GUI_SetUserTask(Gui_Demo);
      break;

      default:
      break;
  }
}

#endif
