/**
 * @file gui_demo_graph1.c
 * @brief single graph with multiple curves demo
 * @author Duboisset Philippe <duboisset.philippe@gmail.com>
 * @version N/A -- draft / experimental
 * @date (yyyy-mm-dd) 2014-03-08
 * Licence: MIT
 */

#include "gui_demo_graph1.h"
#include "resources.h"

#ifdef INCLUDE_GUI_DEMO

/*graph dimension*/
#define GRAPH_W               460
#define GRAPH_H               200

/*max number of curve*/
#define NB_MAX_CURVE          10

/*widges signal*/
#define SIG_ADD_CURVE         1
#define SIG_CHECKBOX_CIRCULAR 2
#define SIG_BTN_NEXT          3

/**
 * Local variable
 */
static uint16_t fps, frameCount, nbCurve;
static uint8_t wdtTrig, circularGraph, *data;
static g_obj_st *pGraph;
static int16_t oldSample[NB_MAX_CURVE];

/**
 * Local functions
 */
static void Gui_DemoGraph1Handler(signal_t sig);
static void WdtCallback(void);


/**
 * @function Gui_DemoGraph1
 * @brief single graph with multiple curves demo
 * @param signal_t sig: unused
 * @return none
 */
void Gui_DemoGraph1(signal_t sig) {

  rect_st rec;
  int8_t res = -1;

  /*init.*/
  frameCount = fps = nbCurve = 0;
  wdtTrig = circularGraph = 0;

  do {

    Gui_DemoNewPage("Graph (multiple curves)");

    /*allocate memory for curves*/
    data = salloc( (uint32_t) NB_MAX_CURVE * GRAPH_W);
    if(data == NULL) break;

    /*create the graph*/
    rec = GUI_Rect(10, 25, GRAPH_W, GRAPH_H);
    pGraph = GUI_W_GraphAdd(&rec, GRAPH_GRID_DISABLED, 0);
    if(pGraph == NULL) break;

    /*FPS box*/
    rec = GUI_Rect(10, 248, 55, 20);
    if(GUI_W_ValueBoxAdd(&rec, &fps, BOX_T_UINT16, "%d fps") == NULL) break;

    /*nb of curve box*/
    rec = GUI_Rect(70, 248, 105, 20);
    if(GUI_W_ValueBoxAdd(&rec, &nbCurve, BOX_T_UINT16, "Curve count: %d") == NULL) break;

    /*button 'add curve' */
    rec = GUI_Rect(180, 248, 50, 20);
    if(GUI_W_ButtonAdd(&rec, "Add", G_IMG_GRAPH_ADD) == NULL) break;
    GUI_SetSignal(E_PUSHED_TO_RELEASED, SIG_ADD_CURVE);

    /*checkbox 'scroll graph'*/
    rec = GUI_Rect(235, 248, 71, 20);
    if(GUI_W_CheckBoxAdd(&rec, "Circular", &circularGraph) == NULL) break;
    GUI_SetSignal(E_PUSHED_TO_RELEASED, SIG_CHECKBOX_CIRCULAR);

    res = 0;

  } while(0);


  if(res == 0) {
    /*done; go to handler*/
    GUI_SetUserTask(Gui_DemoGraph1Handler);
  }
  else {
    /*serious error, exit*/
    GUI_SetUserTask(Gui_Demo);
  }
}


/**
 * @function Gui_DemoGraph1Handler
 * @brief graph#1 demo handler
 * @param signal_t sig: signal coming from widgets
 * @return none
 */
static void Gui_DemoGraph1Handler(signal_t sig) {

  uint16_t ii, jj;

  for(ii = 0; ii < nbCurve; ii++) {

    /*normal graph: recompute all samples*/
    if(circularGraph == 0) {
      for(jj = 0; jj < GRAPH_W; jj++) {
        oldSample[ii] += P2D_Rand(10) - 5;
        if(oldSample[ii] < 0) oldSample[ii] = 0;
        else if(oldSample[ii] > 255) oldSample[ii] = 255;
        data[ii * GRAPH_W + jj] = oldSample[ii];
      }
    }
    /*circular (~~scrolled) graph: just add some samples*/
    else {
      for(jj = 0; jj < 1 /*number of samples to add*/; jj++) {
        oldSample[ii] += P2D_Rand(10) - 5;
        if(oldSample[ii] < 0) oldSample[ii] = 0;
        else if(oldSample[ii] > 255) oldSample[ii] = 255;
        GUI_W_GraphAddSampleToCurve(pGraph, ii, oldSample[ii]);
      }
    }
  }

  /*update fps count*/
  frameCount++;
  if(wdtTrig == 0) {
    wdtTrig = 1;
    TicksSetWatchdog(WdtCallback, 1000);
  }

  switch(sig) {

    case SIG_ADD_CURVE:
      if(nbCurve < NB_MAX_CURVE) {
        GUI_W_GraphAddCurveToGraph(pGraph, &data[nbCurve * GRAPH_W], P2D_Rand(0xFFFF));
        nbCurve++;
      }
      break;

    case SIG_CHECKBOX_CIRCULAR:
      circularGraph = !circularGraph;
      break;

    /*'menu' button*/
    case SIG_DEMO_MENU:
      GUI_SetUserTask(Gui_Demo);
      break;

    default:
      break;
  }
}


/**
 * @function WdtCallback
 * @brief small callback function for computing FPS
 * @param none
 * @return none
 */
static void WdtCallback(void) {
  if(frameCount > 0) {
    fps = frameCount;
    frameCount = 0;
    wdtTrig = 0;
  }
}

#endif
