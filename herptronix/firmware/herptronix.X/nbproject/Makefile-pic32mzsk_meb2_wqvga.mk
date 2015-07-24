#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-pic32mzsk_meb2_wqvga.mk)" "nbproject/Makefile-local-pic32mzsk_meb2_wqvga.mk"
include nbproject/Makefile-local-pic32mzsk_meb2_wqvga.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=pic32mzsk_meb2_wqvga
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/herptronix.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/herptronix.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/app/gui/macro/keyboard/gui_m_keyboard.c ../src/app/gui/macro/keyboard/gui_w_key.c ../src/app/gui/macro/keyboard/keymap.c ../src/app/gui/macro/list/gui_m_list.c ../src/app/gui/macro/popup/gui_m_popup.c ../src/app/gui/widgets/gui_w_button.c ../src/app/gui/widgets/gui_w_checkBox.c ../src/app/gui/widgets/gui_w_frame.c ../src/app/gui/widgets/gui_w_graph.c ../src/app/gui/widgets/gui_w_led.c ../src/app/gui/widgets/gui_w_list.c ../src/app/gui/widgets/gui_w_radio.c ../src/app/gui/widgets/gui_w_rot_button.c ../src/app/gui/widgets/gui_w_rot_value.c ../src/app/gui/widgets/gui_w_scroller.c ../src/app/gui/widgets/gui_w_slider.c ../src/app/gui/widgets/gui_w_tab.c ../src/app/gui/widgets/gui_w_text.c ../src/app/gui/widgets/gui_w_usr_entry.c ../src/app/gui/widgets/gui_w_valueBox.c ../src/app/gui/gui_debug.c ../src/app/gui/gui_graphics.c ../src/app/gui/gui_obj.c ../src/app/gui/gui_utils.c ../src/app/gui_demo/gui_demo.c ../src/app/gui_demo/gui_demo_button.c ../src/app/gui_demo/gui_demo_graph1.c ../src/app/gui_demo/gui_demo_graph2.c ../src/app/gui_demo/gui_demo_keyboard.c ../src/app/gui_demo/gui_demo_list.c ../src/app/gui_demo/gui_demo_popup.c ../src/app/gui_demo/gui_demo_rbutton.c ../src/app/gui_demo/gui_demo_text.c ../src/app/gui_demo/gui_demo_valuebox.c ../src/app/gui_demo/p2d_demo.c ../src/app/gui_demo/p2d_demo_alpha.c ../src/app/p2d/p2d_base.c ../src/app/p2d/p2d_buffer.c ../src/app/p2d/p2d_clip.c ../src/app/p2d/p2d_colors.c ../src/app/p2d/p2d_font.c ../src/app/p2d/p2d_geo_circle.c ../src/app/p2d/p2d_geo_line.c ../src/app/p2d/p2d_geo_poly.c ../src/app/p2d/p2d_internal.c ../src/app/p2d/p2d_lut.c ../src/app/p2d/p2d_math.c ../src/app/p2d/p2d_sprite.c ../src/app/p2d/p2d_utils.c ../src/app/resources/FontDigit_4bpp.c ../src/app/resources/FontSerif_4bpp_b.c ../src/app/resources/FontSerif_4bpp_i.c ../src/app/resources/FontSerif_4bpp_n.c ../src/app/resources/FontSymbol.c ../src/app/resources/sprite00.c ../src/app/resources/sprite01.c ../src/app/resources/sprite02.c ../src/app/resources/sprite03.c ../src/app/resources/sprite04.c ../src/app/usr/space_shooter/game.c ../src/app/usr/space_shooter/game_background.c ../src/app/usr/space_shooter/game_enemy.c ../src/app/usr/space_shooter/game_explosion.c ../src/app/usr/space_shooter/game_gui.c ../src/app/usr/space_shooter/game_missile.c ../src/app/usr/space_shooter/game_obj.c ../src/app/usr/space_shooter/game_player.c ../src/app/usr/space_shooter/p2d_sprite16.c ../src/app/usr/space_shooter/sp_background.c ../src/app/usr/space_shooter/sp_explosion.c ../src/app/usr/space_shooter/sp_gui.c ../src/app/usr/space_shooter/sp_missile.c ../src/app/usr/space_shooter/sp_ship.c ../src/app/usr/tappy_plane/plane_background.c ../src/app/usr/tappy_plane/plane_game.c ../src/app/usr/tappy_plane/sp_plane_background.c ../src/app/usr/tappy_plane/plane_game_gui.c ../src/app/usr/tappy_plane/plane_game_obj.c ../src/app/usr/tappy_plane/sp_plane_obj.c ../src/app/usr/tappy_plane/plane_game_player.c ../src/app/usr/tappy_plane/sp_plane_ui.c ../src/main.c ../src/drv/bsp/lcc_isr.c ../src/drv/bsp/touchscreen.c ../src/drv/bsp/lcc_io.c ../src/drv/uc/configuration_bits.c ../src/drv/uc/tmr.c ../src/drv/uc/uc.c ../src/drv/uc/i2c_sw.c ../src/sys/ticks.c ../src/sys/timer.c ../src/sys/delay.c ../src/sys/rtc.c ../src/sys/salloc.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1613756666/gui_m_keyboard.o ${OBJECTDIR}/_ext/1613756666/gui_w_key.o ${OBJECTDIR}/_ext/1613756666/keymap.o ${OBJECTDIR}/_ext/147368765/gui_m_list.o ${OBJECTDIR}/_ext/277334509/gui_m_popup.o ${OBJECTDIR}/_ext/567266829/gui_w_button.o ${OBJECTDIR}/_ext/567266829/gui_w_checkBox.o ${OBJECTDIR}/_ext/567266829/gui_w_frame.o ${OBJECTDIR}/_ext/567266829/gui_w_graph.o ${OBJECTDIR}/_ext/567266829/gui_w_led.o ${OBJECTDIR}/_ext/567266829/gui_w_list.o ${OBJECTDIR}/_ext/567266829/gui_w_radio.o ${OBJECTDIR}/_ext/567266829/gui_w_rot_button.o ${OBJECTDIR}/_ext/567266829/gui_w_rot_value.o ${OBJECTDIR}/_ext/567266829/gui_w_scroller.o ${OBJECTDIR}/_ext/567266829/gui_w_slider.o ${OBJECTDIR}/_ext/567266829/gui_w_tab.o ${OBJECTDIR}/_ext/567266829/gui_w_text.o ${OBJECTDIR}/_ext/567266829/gui_w_usr_entry.o ${OBJECTDIR}/_ext/567266829/gui_w_valueBox.o ${OBJECTDIR}/_ext/1075967661/gui_debug.o ${OBJECTDIR}/_ext/1075967661/gui_graphics.o ${OBJECTDIR}/_ext/1075967661/gui_obj.o ${OBJECTDIR}/_ext/1075967661/gui_utils.o ${OBJECTDIR}/_ext/1770752335/gui_demo.o ${OBJECTDIR}/_ext/1770752335/gui_demo_button.o ${OBJECTDIR}/_ext/1770752335/gui_demo_graph1.o ${OBJECTDIR}/_ext/1770752335/gui_demo_graph2.o ${OBJECTDIR}/_ext/1770752335/gui_demo_keyboard.o ${OBJECTDIR}/_ext/1770752335/gui_demo_list.o ${OBJECTDIR}/_ext/1770752335/gui_demo_popup.o ${OBJECTDIR}/_ext/1770752335/gui_demo_rbutton.o ${OBJECTDIR}/_ext/1770752335/gui_demo_text.o ${OBJECTDIR}/_ext/1770752335/gui_demo_valuebox.o ${OBJECTDIR}/_ext/1770752335/p2d_demo.o ${OBJECTDIR}/_ext/1770752335/p2d_demo_alpha.o ${OBJECTDIR}/_ext/1075961094/p2d_base.o ${OBJECTDIR}/_ext/1075961094/p2d_buffer.o ${OBJECTDIR}/_ext/1075961094/p2d_clip.o ${OBJECTDIR}/_ext/1075961094/p2d_colors.o ${OBJECTDIR}/_ext/1075961094/p2d_font.o ${OBJECTDIR}/_ext/1075961094/p2d_geo_circle.o ${OBJECTDIR}/_ext/1075961094/p2d_geo_line.o ${OBJECTDIR}/_ext/1075961094/p2d_geo_poly.o ${OBJECTDIR}/_ext/1075961094/p2d_internal.o ${OBJECTDIR}/_ext/1075961094/p2d_lut.o ${OBJECTDIR}/_ext/1075961094/p2d_math.o ${OBJECTDIR}/_ext/1075961094/p2d_sprite.o ${OBJECTDIR}/_ext/1075961094/p2d_utils.o ${OBJECTDIR}/_ext/704330691/FontDigit_4bpp.o ${OBJECTDIR}/_ext/704330691/FontSerif_4bpp_b.o ${OBJECTDIR}/_ext/704330691/FontSerif_4bpp_i.o ${OBJECTDIR}/_ext/704330691/FontSerif_4bpp_n.o ${OBJECTDIR}/_ext/704330691/FontSymbol.o ${OBJECTDIR}/_ext/704330691/sprite00.o ${OBJECTDIR}/_ext/704330691/sprite01.o ${OBJECTDIR}/_ext/704330691/sprite02.o ${OBJECTDIR}/_ext/704330691/sprite03.o ${OBJECTDIR}/_ext/704330691/sprite04.o ${OBJECTDIR}/_ext/1355146320/game.o ${OBJECTDIR}/_ext/1355146320/game_background.o ${OBJECTDIR}/_ext/1355146320/game_enemy.o ${OBJECTDIR}/_ext/1355146320/game_explosion.o ${OBJECTDIR}/_ext/1355146320/game_gui.o ${OBJECTDIR}/_ext/1355146320/game_missile.o ${OBJECTDIR}/_ext/1355146320/game_obj.o ${OBJECTDIR}/_ext/1355146320/game_player.o ${OBJECTDIR}/_ext/1355146320/p2d_sprite16.o ${OBJECTDIR}/_ext/1355146320/sp_background.o ${OBJECTDIR}/_ext/1355146320/sp_explosion.o ${OBJECTDIR}/_ext/1355146320/sp_gui.o ${OBJECTDIR}/_ext/1355146320/sp_missile.o ${OBJECTDIR}/_ext/1355146320/sp_ship.o ${OBJECTDIR}/_ext/968571546/plane_background.o ${OBJECTDIR}/_ext/968571546/plane_game.o ${OBJECTDIR}/_ext/968571546/sp_plane_background.o ${OBJECTDIR}/_ext/968571546/plane_game_gui.o ${OBJECTDIR}/_ext/968571546/plane_game_obj.o ${OBJECTDIR}/_ext/968571546/sp_plane_obj.o ${OBJECTDIR}/_ext/968571546/plane_game_player.o ${OBJECTDIR}/_ext/968571546/sp_plane_ui.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1649337950/lcc_isr.o ${OBJECTDIR}/_ext/1649337950/touchscreen.o ${OBJECTDIR}/_ext/1649337950/lcc_io.o ${OBJECTDIR}/_ext/362436977/configuration_bits.o ${OBJECTDIR}/_ext/362436977/tmr.o ${OBJECTDIR}/_ext/362436977/uc.o ${OBJECTDIR}/_ext/362436977/i2c_sw.o ${OBJECTDIR}/_ext/659868371/ticks.o ${OBJECTDIR}/_ext/659868371/timer.o ${OBJECTDIR}/_ext/659868371/delay.o ${OBJECTDIR}/_ext/659868371/rtc.o ${OBJECTDIR}/_ext/659868371/salloc.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1613756666/gui_m_keyboard.o.d ${OBJECTDIR}/_ext/1613756666/gui_w_key.o.d ${OBJECTDIR}/_ext/1613756666/keymap.o.d ${OBJECTDIR}/_ext/147368765/gui_m_list.o.d ${OBJECTDIR}/_ext/277334509/gui_m_popup.o.d ${OBJECTDIR}/_ext/567266829/gui_w_button.o.d ${OBJECTDIR}/_ext/567266829/gui_w_checkBox.o.d ${OBJECTDIR}/_ext/567266829/gui_w_frame.o.d ${OBJECTDIR}/_ext/567266829/gui_w_graph.o.d ${OBJECTDIR}/_ext/567266829/gui_w_led.o.d ${OBJECTDIR}/_ext/567266829/gui_w_list.o.d ${OBJECTDIR}/_ext/567266829/gui_w_radio.o.d ${OBJECTDIR}/_ext/567266829/gui_w_rot_button.o.d ${OBJECTDIR}/_ext/567266829/gui_w_rot_value.o.d ${OBJECTDIR}/_ext/567266829/gui_w_scroller.o.d ${OBJECTDIR}/_ext/567266829/gui_w_slider.o.d ${OBJECTDIR}/_ext/567266829/gui_w_tab.o.d ${OBJECTDIR}/_ext/567266829/gui_w_text.o.d ${OBJECTDIR}/_ext/567266829/gui_w_usr_entry.o.d ${OBJECTDIR}/_ext/567266829/gui_w_valueBox.o.d ${OBJECTDIR}/_ext/1075967661/gui_debug.o.d ${OBJECTDIR}/_ext/1075967661/gui_graphics.o.d ${OBJECTDIR}/_ext/1075967661/gui_obj.o.d ${OBJECTDIR}/_ext/1075967661/gui_utils.o.d ${OBJECTDIR}/_ext/1770752335/gui_demo.o.d ${OBJECTDIR}/_ext/1770752335/gui_demo_button.o.d ${OBJECTDIR}/_ext/1770752335/gui_demo_graph1.o.d ${OBJECTDIR}/_ext/1770752335/gui_demo_graph2.o.d ${OBJECTDIR}/_ext/1770752335/gui_demo_keyboard.o.d ${OBJECTDIR}/_ext/1770752335/gui_demo_list.o.d ${OBJECTDIR}/_ext/1770752335/gui_demo_popup.o.d ${OBJECTDIR}/_ext/1770752335/gui_demo_rbutton.o.d ${OBJECTDIR}/_ext/1770752335/gui_demo_text.o.d ${OBJECTDIR}/_ext/1770752335/gui_demo_valuebox.o.d ${OBJECTDIR}/_ext/1770752335/p2d_demo.o.d ${OBJECTDIR}/_ext/1770752335/p2d_demo_alpha.o.d ${OBJECTDIR}/_ext/1075961094/p2d_base.o.d ${OBJECTDIR}/_ext/1075961094/p2d_buffer.o.d ${OBJECTDIR}/_ext/1075961094/p2d_clip.o.d ${OBJECTDIR}/_ext/1075961094/p2d_colors.o.d ${OBJECTDIR}/_ext/1075961094/p2d_font.o.d ${OBJECTDIR}/_ext/1075961094/p2d_geo_circle.o.d ${OBJECTDIR}/_ext/1075961094/p2d_geo_line.o.d ${OBJECTDIR}/_ext/1075961094/p2d_geo_poly.o.d ${OBJECTDIR}/_ext/1075961094/p2d_internal.o.d ${OBJECTDIR}/_ext/1075961094/p2d_lut.o.d ${OBJECTDIR}/_ext/1075961094/p2d_math.o.d ${OBJECTDIR}/_ext/1075961094/p2d_sprite.o.d ${OBJECTDIR}/_ext/1075961094/p2d_utils.o.d ${OBJECTDIR}/_ext/704330691/FontDigit_4bpp.o.d ${OBJECTDIR}/_ext/704330691/FontSerif_4bpp_b.o.d ${OBJECTDIR}/_ext/704330691/FontSerif_4bpp_i.o.d ${OBJECTDIR}/_ext/704330691/FontSerif_4bpp_n.o.d ${OBJECTDIR}/_ext/704330691/FontSymbol.o.d ${OBJECTDIR}/_ext/704330691/sprite00.o.d ${OBJECTDIR}/_ext/704330691/sprite01.o.d ${OBJECTDIR}/_ext/704330691/sprite02.o.d ${OBJECTDIR}/_ext/704330691/sprite03.o.d ${OBJECTDIR}/_ext/704330691/sprite04.o.d ${OBJECTDIR}/_ext/1355146320/game.o.d ${OBJECTDIR}/_ext/1355146320/game_background.o.d ${OBJECTDIR}/_ext/1355146320/game_enemy.o.d ${OBJECTDIR}/_ext/1355146320/game_explosion.o.d ${OBJECTDIR}/_ext/1355146320/game_gui.o.d ${OBJECTDIR}/_ext/1355146320/game_missile.o.d ${OBJECTDIR}/_ext/1355146320/game_obj.o.d ${OBJECTDIR}/_ext/1355146320/game_player.o.d ${OBJECTDIR}/_ext/1355146320/p2d_sprite16.o.d ${OBJECTDIR}/_ext/1355146320/sp_background.o.d ${OBJECTDIR}/_ext/1355146320/sp_explosion.o.d ${OBJECTDIR}/_ext/1355146320/sp_gui.o.d ${OBJECTDIR}/_ext/1355146320/sp_missile.o.d ${OBJECTDIR}/_ext/1355146320/sp_ship.o.d ${OBJECTDIR}/_ext/968571546/plane_background.o.d ${OBJECTDIR}/_ext/968571546/plane_game.o.d ${OBJECTDIR}/_ext/968571546/sp_plane_background.o.d ${OBJECTDIR}/_ext/968571546/plane_game_gui.o.d ${OBJECTDIR}/_ext/968571546/plane_game_obj.o.d ${OBJECTDIR}/_ext/968571546/sp_plane_obj.o.d ${OBJECTDIR}/_ext/968571546/plane_game_player.o.d ${OBJECTDIR}/_ext/968571546/sp_plane_ui.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1649337950/lcc_isr.o.d ${OBJECTDIR}/_ext/1649337950/touchscreen.o.d ${OBJECTDIR}/_ext/1649337950/lcc_io.o.d ${OBJECTDIR}/_ext/362436977/configuration_bits.o.d ${OBJECTDIR}/_ext/362436977/tmr.o.d ${OBJECTDIR}/_ext/362436977/uc.o.d ${OBJECTDIR}/_ext/362436977/i2c_sw.o.d ${OBJECTDIR}/_ext/659868371/ticks.o.d ${OBJECTDIR}/_ext/659868371/timer.o.d ${OBJECTDIR}/_ext/659868371/delay.o.d ${OBJECTDIR}/_ext/659868371/rtc.o.d ${OBJECTDIR}/_ext/659868371/salloc.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1613756666/gui_m_keyboard.o ${OBJECTDIR}/_ext/1613756666/gui_w_key.o ${OBJECTDIR}/_ext/1613756666/keymap.o ${OBJECTDIR}/_ext/147368765/gui_m_list.o ${OBJECTDIR}/_ext/277334509/gui_m_popup.o ${OBJECTDIR}/_ext/567266829/gui_w_button.o ${OBJECTDIR}/_ext/567266829/gui_w_checkBox.o ${OBJECTDIR}/_ext/567266829/gui_w_frame.o ${OBJECTDIR}/_ext/567266829/gui_w_graph.o ${OBJECTDIR}/_ext/567266829/gui_w_led.o ${OBJECTDIR}/_ext/567266829/gui_w_list.o ${OBJECTDIR}/_ext/567266829/gui_w_radio.o ${OBJECTDIR}/_ext/567266829/gui_w_rot_button.o ${OBJECTDIR}/_ext/567266829/gui_w_rot_value.o ${OBJECTDIR}/_ext/567266829/gui_w_scroller.o ${OBJECTDIR}/_ext/567266829/gui_w_slider.o ${OBJECTDIR}/_ext/567266829/gui_w_tab.o ${OBJECTDIR}/_ext/567266829/gui_w_text.o ${OBJECTDIR}/_ext/567266829/gui_w_usr_entry.o ${OBJECTDIR}/_ext/567266829/gui_w_valueBox.o ${OBJECTDIR}/_ext/1075967661/gui_debug.o ${OBJECTDIR}/_ext/1075967661/gui_graphics.o ${OBJECTDIR}/_ext/1075967661/gui_obj.o ${OBJECTDIR}/_ext/1075967661/gui_utils.o ${OBJECTDIR}/_ext/1770752335/gui_demo.o ${OBJECTDIR}/_ext/1770752335/gui_demo_button.o ${OBJECTDIR}/_ext/1770752335/gui_demo_graph1.o ${OBJECTDIR}/_ext/1770752335/gui_demo_graph2.o ${OBJECTDIR}/_ext/1770752335/gui_demo_keyboard.o ${OBJECTDIR}/_ext/1770752335/gui_demo_list.o ${OBJECTDIR}/_ext/1770752335/gui_demo_popup.o ${OBJECTDIR}/_ext/1770752335/gui_demo_rbutton.o ${OBJECTDIR}/_ext/1770752335/gui_demo_text.o ${OBJECTDIR}/_ext/1770752335/gui_demo_valuebox.o ${OBJECTDIR}/_ext/1770752335/p2d_demo.o ${OBJECTDIR}/_ext/1770752335/p2d_demo_alpha.o ${OBJECTDIR}/_ext/1075961094/p2d_base.o ${OBJECTDIR}/_ext/1075961094/p2d_buffer.o ${OBJECTDIR}/_ext/1075961094/p2d_clip.o ${OBJECTDIR}/_ext/1075961094/p2d_colors.o ${OBJECTDIR}/_ext/1075961094/p2d_font.o ${OBJECTDIR}/_ext/1075961094/p2d_geo_circle.o ${OBJECTDIR}/_ext/1075961094/p2d_geo_line.o ${OBJECTDIR}/_ext/1075961094/p2d_geo_poly.o ${OBJECTDIR}/_ext/1075961094/p2d_internal.o ${OBJECTDIR}/_ext/1075961094/p2d_lut.o ${OBJECTDIR}/_ext/1075961094/p2d_math.o ${OBJECTDIR}/_ext/1075961094/p2d_sprite.o ${OBJECTDIR}/_ext/1075961094/p2d_utils.o ${OBJECTDIR}/_ext/704330691/FontDigit_4bpp.o ${OBJECTDIR}/_ext/704330691/FontSerif_4bpp_b.o ${OBJECTDIR}/_ext/704330691/FontSerif_4bpp_i.o ${OBJECTDIR}/_ext/704330691/FontSerif_4bpp_n.o ${OBJECTDIR}/_ext/704330691/FontSymbol.o ${OBJECTDIR}/_ext/704330691/sprite00.o ${OBJECTDIR}/_ext/704330691/sprite01.o ${OBJECTDIR}/_ext/704330691/sprite02.o ${OBJECTDIR}/_ext/704330691/sprite03.o ${OBJECTDIR}/_ext/704330691/sprite04.o ${OBJECTDIR}/_ext/1355146320/game.o ${OBJECTDIR}/_ext/1355146320/game_background.o ${OBJECTDIR}/_ext/1355146320/game_enemy.o ${OBJECTDIR}/_ext/1355146320/game_explosion.o ${OBJECTDIR}/_ext/1355146320/game_gui.o ${OBJECTDIR}/_ext/1355146320/game_missile.o ${OBJECTDIR}/_ext/1355146320/game_obj.o ${OBJECTDIR}/_ext/1355146320/game_player.o ${OBJECTDIR}/_ext/1355146320/p2d_sprite16.o ${OBJECTDIR}/_ext/1355146320/sp_background.o ${OBJECTDIR}/_ext/1355146320/sp_explosion.o ${OBJECTDIR}/_ext/1355146320/sp_gui.o ${OBJECTDIR}/_ext/1355146320/sp_missile.o ${OBJECTDIR}/_ext/1355146320/sp_ship.o ${OBJECTDIR}/_ext/968571546/plane_background.o ${OBJECTDIR}/_ext/968571546/plane_game.o ${OBJECTDIR}/_ext/968571546/sp_plane_background.o ${OBJECTDIR}/_ext/968571546/plane_game_gui.o ${OBJECTDIR}/_ext/968571546/plane_game_obj.o ${OBJECTDIR}/_ext/968571546/sp_plane_obj.o ${OBJECTDIR}/_ext/968571546/plane_game_player.o ${OBJECTDIR}/_ext/968571546/sp_plane_ui.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1649337950/lcc_isr.o ${OBJECTDIR}/_ext/1649337950/touchscreen.o ${OBJECTDIR}/_ext/1649337950/lcc_io.o ${OBJECTDIR}/_ext/362436977/configuration_bits.o ${OBJECTDIR}/_ext/362436977/tmr.o ${OBJECTDIR}/_ext/362436977/uc.o ${OBJECTDIR}/_ext/362436977/i2c_sw.o ${OBJECTDIR}/_ext/659868371/ticks.o ${OBJECTDIR}/_ext/659868371/timer.o ${OBJECTDIR}/_ext/659868371/delay.o ${OBJECTDIR}/_ext/659868371/rtc.o ${OBJECTDIR}/_ext/659868371/salloc.o

# Source Files
SOURCEFILES=../src/app/gui/macro/keyboard/gui_m_keyboard.c ../src/app/gui/macro/keyboard/gui_w_key.c ../src/app/gui/macro/keyboard/keymap.c ../src/app/gui/macro/list/gui_m_list.c ../src/app/gui/macro/popup/gui_m_popup.c ../src/app/gui/widgets/gui_w_button.c ../src/app/gui/widgets/gui_w_checkBox.c ../src/app/gui/widgets/gui_w_frame.c ../src/app/gui/widgets/gui_w_graph.c ../src/app/gui/widgets/gui_w_led.c ../src/app/gui/widgets/gui_w_list.c ../src/app/gui/widgets/gui_w_radio.c ../src/app/gui/widgets/gui_w_rot_button.c ../src/app/gui/widgets/gui_w_rot_value.c ../src/app/gui/widgets/gui_w_scroller.c ../src/app/gui/widgets/gui_w_slider.c ../src/app/gui/widgets/gui_w_tab.c ../src/app/gui/widgets/gui_w_text.c ../src/app/gui/widgets/gui_w_usr_entry.c ../src/app/gui/widgets/gui_w_valueBox.c ../src/app/gui/gui_debug.c ../src/app/gui/gui_graphics.c ../src/app/gui/gui_obj.c ../src/app/gui/gui_utils.c ../src/app/gui_demo/gui_demo.c ../src/app/gui_demo/gui_demo_button.c ../src/app/gui_demo/gui_demo_graph1.c ../src/app/gui_demo/gui_demo_graph2.c ../src/app/gui_demo/gui_demo_keyboard.c ../src/app/gui_demo/gui_demo_list.c ../src/app/gui_demo/gui_demo_popup.c ../src/app/gui_demo/gui_demo_rbutton.c ../src/app/gui_demo/gui_demo_text.c ../src/app/gui_demo/gui_demo_valuebox.c ../src/app/gui_demo/p2d_demo.c ../src/app/gui_demo/p2d_demo_alpha.c ../src/app/p2d/p2d_base.c ../src/app/p2d/p2d_buffer.c ../src/app/p2d/p2d_clip.c ../src/app/p2d/p2d_colors.c ../src/app/p2d/p2d_font.c ../src/app/p2d/p2d_geo_circle.c ../src/app/p2d/p2d_geo_line.c ../src/app/p2d/p2d_geo_poly.c ../src/app/p2d/p2d_internal.c ../src/app/p2d/p2d_lut.c ../src/app/p2d/p2d_math.c ../src/app/p2d/p2d_sprite.c ../src/app/p2d/p2d_utils.c ../src/app/resources/FontDigit_4bpp.c ../src/app/resources/FontSerif_4bpp_b.c ../src/app/resources/FontSerif_4bpp_i.c ../src/app/resources/FontSerif_4bpp_n.c ../src/app/resources/FontSymbol.c ../src/app/resources/sprite00.c ../src/app/resources/sprite01.c ../src/app/resources/sprite02.c ../src/app/resources/sprite03.c ../src/app/resources/sprite04.c ../src/app/usr/space_shooter/game.c ../src/app/usr/space_shooter/game_background.c ../src/app/usr/space_shooter/game_enemy.c ../src/app/usr/space_shooter/game_explosion.c ../src/app/usr/space_shooter/game_gui.c ../src/app/usr/space_shooter/game_missile.c ../src/app/usr/space_shooter/game_obj.c ../src/app/usr/space_shooter/game_player.c ../src/app/usr/space_shooter/p2d_sprite16.c ../src/app/usr/space_shooter/sp_background.c ../src/app/usr/space_shooter/sp_explosion.c ../src/app/usr/space_shooter/sp_gui.c ../src/app/usr/space_shooter/sp_missile.c ../src/app/usr/space_shooter/sp_ship.c ../src/app/usr/tappy_plane/plane_background.c ../src/app/usr/tappy_plane/plane_game.c ../src/app/usr/tappy_plane/sp_plane_background.c ../src/app/usr/tappy_plane/plane_game_gui.c ../src/app/usr/tappy_plane/plane_game_obj.c ../src/app/usr/tappy_plane/sp_plane_obj.c ../src/app/usr/tappy_plane/plane_game_player.c ../src/app/usr/tappy_plane/sp_plane_ui.c ../src/main.c ../src/drv/bsp/lcc_isr.c ../src/drv/bsp/touchscreen.c ../src/drv/bsp/lcc_io.c ../src/drv/uc/configuration_bits.c ../src/drv/uc/tmr.c ../src/drv/uc/uc.c ../src/drv/uc/i2c_sw.c ../src/sys/ticks.c ../src/sys/timer.c ../src/sys/delay.c ../src/sys/rtc.c ../src/sys/salloc.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-pic32mzsk_meb2_wqvga.mk dist/${CND_CONF}/${IMAGE_TYPE}/herptronix.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MZ2048ECH144
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1613756666/gui_m_keyboard.o: ../src/app/gui/macro/keyboard/gui_m_keyboard.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1613756666" 
	@${RM} ${OBJECTDIR}/_ext/1613756666/gui_m_keyboard.o.d 
	@${RM} ${OBJECTDIR}/_ext/1613756666/gui_m_keyboard.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1613756666/gui_m_keyboard.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1613756666/gui_m_keyboard.o.d" -o ${OBJECTDIR}/_ext/1613756666/gui_m_keyboard.o ../src/app/gui/macro/keyboard/gui_m_keyboard.c   
	
${OBJECTDIR}/_ext/1613756666/gui_w_key.o: ../src/app/gui/macro/keyboard/gui_w_key.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1613756666" 
	@${RM} ${OBJECTDIR}/_ext/1613756666/gui_w_key.o.d 
	@${RM} ${OBJECTDIR}/_ext/1613756666/gui_w_key.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1613756666/gui_w_key.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1613756666/gui_w_key.o.d" -o ${OBJECTDIR}/_ext/1613756666/gui_w_key.o ../src/app/gui/macro/keyboard/gui_w_key.c   
	
${OBJECTDIR}/_ext/1613756666/keymap.o: ../src/app/gui/macro/keyboard/keymap.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1613756666" 
	@${RM} ${OBJECTDIR}/_ext/1613756666/keymap.o.d 
	@${RM} ${OBJECTDIR}/_ext/1613756666/keymap.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1613756666/keymap.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1613756666/keymap.o.d" -o ${OBJECTDIR}/_ext/1613756666/keymap.o ../src/app/gui/macro/keyboard/keymap.c   
	
${OBJECTDIR}/_ext/147368765/gui_m_list.o: ../src/app/gui/macro/list/gui_m_list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/147368765" 
	@${RM} ${OBJECTDIR}/_ext/147368765/gui_m_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/147368765/gui_m_list.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/147368765/gui_m_list.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/147368765/gui_m_list.o.d" -o ${OBJECTDIR}/_ext/147368765/gui_m_list.o ../src/app/gui/macro/list/gui_m_list.c   
	
${OBJECTDIR}/_ext/277334509/gui_m_popup.o: ../src/app/gui/macro/popup/gui_m_popup.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/277334509" 
	@${RM} ${OBJECTDIR}/_ext/277334509/gui_m_popup.o.d 
	@${RM} ${OBJECTDIR}/_ext/277334509/gui_m_popup.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/277334509/gui_m_popup.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/277334509/gui_m_popup.o.d" -o ${OBJECTDIR}/_ext/277334509/gui_m_popup.o ../src/app/gui/macro/popup/gui_m_popup.c   
	
${OBJECTDIR}/_ext/567266829/gui_w_button.o: ../src/app/gui/widgets/gui_w_button.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/567266829" 
	@${RM} ${OBJECTDIR}/_ext/567266829/gui_w_button.o.d 
	@${RM} ${OBJECTDIR}/_ext/567266829/gui_w_button.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/567266829/gui_w_button.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/567266829/gui_w_button.o.d" -o ${OBJECTDIR}/_ext/567266829/gui_w_button.o ../src/app/gui/widgets/gui_w_button.c   
	
${OBJECTDIR}/_ext/567266829/gui_w_checkBox.o: ../src/app/gui/widgets/gui_w_checkBox.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/567266829" 
	@${RM} ${OBJECTDIR}/_ext/567266829/gui_w_checkBox.o.d 
	@${RM} ${OBJECTDIR}/_ext/567266829/gui_w_checkBox.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/567266829/gui_w_checkBox.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/567266829/gui_w_checkBox.o.d" -o ${OBJECTDIR}/_ext/567266829/gui_w_checkBox.o ../src/app/gui/widgets/gui_w_checkBox.c   
	
${OBJECTDIR}/_ext/567266829/gui_w_frame.o: ../src/app/gui/widgets/gui_w_frame.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/567266829" 
	@${RM} ${OBJECTDIR}/_ext/567266829/gui_w_frame.o.d 
	@${RM} ${OBJECTDIR}/_ext/567266829/gui_w_frame.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/567266829/gui_w_frame.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/567266829/gui_w_frame.o.d" -o ${OBJECTDIR}/_ext/567266829/gui_w_frame.o ../src/app/gui/widgets/gui_w_frame.c   
	
${OBJECTDIR}/_ext/567266829/gui_w_graph.o: ../src/app/gui/widgets/gui_w_graph.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/567266829" 
	@${RM} ${OBJECTDIR}/_ext/567266829/gui_w_graph.o.d 
	@${RM} ${OBJECTDIR}/_ext/567266829/gui_w_graph.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/567266829/gui_w_graph.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/567266829/gui_w_graph.o.d" -o ${OBJECTDIR}/_ext/567266829/gui_w_graph.o ../src/app/gui/widgets/gui_w_graph.c   
	
${OBJECTDIR}/_ext/567266829/gui_w_led.o: ../src/app/gui/widgets/gui_w_led.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/567266829" 
	@${RM} ${OBJECTDIR}/_ext/567266829/gui_w_led.o.d 
	@${RM} ${OBJECTDIR}/_ext/567266829/gui_w_led.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/567266829/gui_w_led.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/567266829/gui_w_led.o.d" -o ${OBJECTDIR}/_ext/567266829/gui_w_led.o ../src/app/gui/widgets/gui_w_led.c   
	
${OBJECTDIR}/_ext/567266829/gui_w_list.o: ../src/app/gui/widgets/gui_w_list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/567266829" 
	@${RM} ${OBJECTDIR}/_ext/567266829/gui_w_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/567266829/gui_w_list.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/567266829/gui_w_list.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/567266829/gui_w_list.o.d" -o ${OBJECTDIR}/_ext/567266829/gui_w_list.o ../src/app/gui/widgets/gui_w_list.c   
	
${OBJECTDIR}/_ext/567266829/gui_w_radio.o: ../src/app/gui/widgets/gui_w_radio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/567266829" 
	@${RM} ${OBJECTDIR}/_ext/567266829/gui_w_radio.o.d 
	@${RM} ${OBJECTDIR}/_ext/567266829/gui_w_radio.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/567266829/gui_w_radio.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/567266829/gui_w_radio.o.d" -o ${OBJECTDIR}/_ext/567266829/gui_w_radio.o ../src/app/gui/widgets/gui_w_radio.c   
	
${OBJECTDIR}/_ext/567266829/gui_w_rot_button.o: ../src/app/gui/widgets/gui_w_rot_button.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/567266829" 
	@${RM} ${OBJECTDIR}/_ext/567266829/gui_w_rot_button.o.d 
	@${RM} ${OBJECTDIR}/_ext/567266829/gui_w_rot_button.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/567266829/gui_w_rot_button.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/567266829/gui_w_rot_button.o.d" -o ${OBJECTDIR}/_ext/567266829/gui_w_rot_button.o ../src/app/gui/widgets/gui_w_rot_button.c   
	
${OBJECTDIR}/_ext/567266829/gui_w_rot_value.o: ../src/app/gui/widgets/gui_w_rot_value.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/567266829" 
	@${RM} ${OBJECTDIR}/_ext/567266829/gui_w_rot_value.o.d 
	@${RM} ${OBJECTDIR}/_ext/567266829/gui_w_rot_value.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/567266829/gui_w_rot_value.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/567266829/gui_w_rot_value.o.d" -o ${OBJECTDIR}/_ext/567266829/gui_w_rot_value.o ../src/app/gui/widgets/gui_w_rot_value.c   
	
${OBJECTDIR}/_ext/567266829/gui_w_scroller.o: ../src/app/gui/widgets/gui_w_scroller.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/567266829" 
	@${RM} ${OBJECTDIR}/_ext/567266829/gui_w_scroller.o.d 
	@${RM} ${OBJECTDIR}/_ext/567266829/gui_w_scroller.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/567266829/gui_w_scroller.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/567266829/gui_w_scroller.o.d" -o ${OBJECTDIR}/_ext/567266829/gui_w_scroller.o ../src/app/gui/widgets/gui_w_scroller.c   
	
${OBJECTDIR}/_ext/567266829/gui_w_slider.o: ../src/app/gui/widgets/gui_w_slider.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/567266829" 
	@${RM} ${OBJECTDIR}/_ext/567266829/gui_w_slider.o.d 
	@${RM} ${OBJECTDIR}/_ext/567266829/gui_w_slider.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/567266829/gui_w_slider.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/567266829/gui_w_slider.o.d" -o ${OBJECTDIR}/_ext/567266829/gui_w_slider.o ../src/app/gui/widgets/gui_w_slider.c   
	
${OBJECTDIR}/_ext/567266829/gui_w_tab.o: ../src/app/gui/widgets/gui_w_tab.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/567266829" 
	@${RM} ${OBJECTDIR}/_ext/567266829/gui_w_tab.o.d 
	@${RM} ${OBJECTDIR}/_ext/567266829/gui_w_tab.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/567266829/gui_w_tab.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/567266829/gui_w_tab.o.d" -o ${OBJECTDIR}/_ext/567266829/gui_w_tab.o ../src/app/gui/widgets/gui_w_tab.c   
	
${OBJECTDIR}/_ext/567266829/gui_w_text.o: ../src/app/gui/widgets/gui_w_text.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/567266829" 
	@${RM} ${OBJECTDIR}/_ext/567266829/gui_w_text.o.d 
	@${RM} ${OBJECTDIR}/_ext/567266829/gui_w_text.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/567266829/gui_w_text.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/567266829/gui_w_text.o.d" -o ${OBJECTDIR}/_ext/567266829/gui_w_text.o ../src/app/gui/widgets/gui_w_text.c   
	
${OBJECTDIR}/_ext/567266829/gui_w_usr_entry.o: ../src/app/gui/widgets/gui_w_usr_entry.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/567266829" 
	@${RM} ${OBJECTDIR}/_ext/567266829/gui_w_usr_entry.o.d 
	@${RM} ${OBJECTDIR}/_ext/567266829/gui_w_usr_entry.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/567266829/gui_w_usr_entry.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/567266829/gui_w_usr_entry.o.d" -o ${OBJECTDIR}/_ext/567266829/gui_w_usr_entry.o ../src/app/gui/widgets/gui_w_usr_entry.c   
	
${OBJECTDIR}/_ext/567266829/gui_w_valueBox.o: ../src/app/gui/widgets/gui_w_valueBox.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/567266829" 
	@${RM} ${OBJECTDIR}/_ext/567266829/gui_w_valueBox.o.d 
	@${RM} ${OBJECTDIR}/_ext/567266829/gui_w_valueBox.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/567266829/gui_w_valueBox.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/567266829/gui_w_valueBox.o.d" -o ${OBJECTDIR}/_ext/567266829/gui_w_valueBox.o ../src/app/gui/widgets/gui_w_valueBox.c   
	
${OBJECTDIR}/_ext/1075967661/gui_debug.o: ../src/app/gui/gui_debug.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1075967661" 
	@${RM} ${OBJECTDIR}/_ext/1075967661/gui_debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/1075967661/gui_debug.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1075967661/gui_debug.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1075967661/gui_debug.o.d" -o ${OBJECTDIR}/_ext/1075967661/gui_debug.o ../src/app/gui/gui_debug.c   
	
${OBJECTDIR}/_ext/1075967661/gui_graphics.o: ../src/app/gui/gui_graphics.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1075967661" 
	@${RM} ${OBJECTDIR}/_ext/1075967661/gui_graphics.o.d 
	@${RM} ${OBJECTDIR}/_ext/1075967661/gui_graphics.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1075967661/gui_graphics.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1075967661/gui_graphics.o.d" -o ${OBJECTDIR}/_ext/1075967661/gui_graphics.o ../src/app/gui/gui_graphics.c   
	
${OBJECTDIR}/_ext/1075967661/gui_obj.o: ../src/app/gui/gui_obj.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1075967661" 
	@${RM} ${OBJECTDIR}/_ext/1075967661/gui_obj.o.d 
	@${RM} ${OBJECTDIR}/_ext/1075967661/gui_obj.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1075967661/gui_obj.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1075967661/gui_obj.o.d" -o ${OBJECTDIR}/_ext/1075967661/gui_obj.o ../src/app/gui/gui_obj.c   
	
${OBJECTDIR}/_ext/1075967661/gui_utils.o: ../src/app/gui/gui_utils.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1075967661" 
	@${RM} ${OBJECTDIR}/_ext/1075967661/gui_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1075967661/gui_utils.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1075967661/gui_utils.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1075967661/gui_utils.o.d" -o ${OBJECTDIR}/_ext/1075967661/gui_utils.o ../src/app/gui/gui_utils.c   
	
${OBJECTDIR}/_ext/1770752335/gui_demo.o: ../src/app/gui_demo/gui_demo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1770752335" 
	@${RM} ${OBJECTDIR}/_ext/1770752335/gui_demo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1770752335/gui_demo.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1770752335/gui_demo.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1770752335/gui_demo.o.d" -o ${OBJECTDIR}/_ext/1770752335/gui_demo.o ../src/app/gui_demo/gui_demo.c   
	
${OBJECTDIR}/_ext/1770752335/gui_demo_button.o: ../src/app/gui_demo/gui_demo_button.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1770752335" 
	@${RM} ${OBJECTDIR}/_ext/1770752335/gui_demo_button.o.d 
	@${RM} ${OBJECTDIR}/_ext/1770752335/gui_demo_button.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1770752335/gui_demo_button.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1770752335/gui_demo_button.o.d" -o ${OBJECTDIR}/_ext/1770752335/gui_demo_button.o ../src/app/gui_demo/gui_demo_button.c   
	
${OBJECTDIR}/_ext/1770752335/gui_demo_graph1.o: ../src/app/gui_demo/gui_demo_graph1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1770752335" 
	@${RM} ${OBJECTDIR}/_ext/1770752335/gui_demo_graph1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1770752335/gui_demo_graph1.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1770752335/gui_demo_graph1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1770752335/gui_demo_graph1.o.d" -o ${OBJECTDIR}/_ext/1770752335/gui_demo_graph1.o ../src/app/gui_demo/gui_demo_graph1.c   
	
${OBJECTDIR}/_ext/1770752335/gui_demo_graph2.o: ../src/app/gui_demo/gui_demo_graph2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1770752335" 
	@${RM} ${OBJECTDIR}/_ext/1770752335/gui_demo_graph2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1770752335/gui_demo_graph2.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1770752335/gui_demo_graph2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1770752335/gui_demo_graph2.o.d" -o ${OBJECTDIR}/_ext/1770752335/gui_demo_graph2.o ../src/app/gui_demo/gui_demo_graph2.c   
	
${OBJECTDIR}/_ext/1770752335/gui_demo_keyboard.o: ../src/app/gui_demo/gui_demo_keyboard.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1770752335" 
	@${RM} ${OBJECTDIR}/_ext/1770752335/gui_demo_keyboard.o.d 
	@${RM} ${OBJECTDIR}/_ext/1770752335/gui_demo_keyboard.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1770752335/gui_demo_keyboard.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1770752335/gui_demo_keyboard.o.d" -o ${OBJECTDIR}/_ext/1770752335/gui_demo_keyboard.o ../src/app/gui_demo/gui_demo_keyboard.c   
	
${OBJECTDIR}/_ext/1770752335/gui_demo_list.o: ../src/app/gui_demo/gui_demo_list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1770752335" 
	@${RM} ${OBJECTDIR}/_ext/1770752335/gui_demo_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1770752335/gui_demo_list.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1770752335/gui_demo_list.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1770752335/gui_demo_list.o.d" -o ${OBJECTDIR}/_ext/1770752335/gui_demo_list.o ../src/app/gui_demo/gui_demo_list.c   
	
${OBJECTDIR}/_ext/1770752335/gui_demo_popup.o: ../src/app/gui_demo/gui_demo_popup.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1770752335" 
	@${RM} ${OBJECTDIR}/_ext/1770752335/gui_demo_popup.o.d 
	@${RM} ${OBJECTDIR}/_ext/1770752335/gui_demo_popup.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1770752335/gui_demo_popup.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1770752335/gui_demo_popup.o.d" -o ${OBJECTDIR}/_ext/1770752335/gui_demo_popup.o ../src/app/gui_demo/gui_demo_popup.c   
	
${OBJECTDIR}/_ext/1770752335/gui_demo_rbutton.o: ../src/app/gui_demo/gui_demo_rbutton.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1770752335" 
	@${RM} ${OBJECTDIR}/_ext/1770752335/gui_demo_rbutton.o.d 
	@${RM} ${OBJECTDIR}/_ext/1770752335/gui_demo_rbutton.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1770752335/gui_demo_rbutton.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1770752335/gui_demo_rbutton.o.d" -o ${OBJECTDIR}/_ext/1770752335/gui_demo_rbutton.o ../src/app/gui_demo/gui_demo_rbutton.c   
	
${OBJECTDIR}/_ext/1770752335/gui_demo_text.o: ../src/app/gui_demo/gui_demo_text.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1770752335" 
	@${RM} ${OBJECTDIR}/_ext/1770752335/gui_demo_text.o.d 
	@${RM} ${OBJECTDIR}/_ext/1770752335/gui_demo_text.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1770752335/gui_demo_text.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1770752335/gui_demo_text.o.d" -o ${OBJECTDIR}/_ext/1770752335/gui_demo_text.o ../src/app/gui_demo/gui_demo_text.c   
	
${OBJECTDIR}/_ext/1770752335/gui_demo_valuebox.o: ../src/app/gui_demo/gui_demo_valuebox.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1770752335" 
	@${RM} ${OBJECTDIR}/_ext/1770752335/gui_demo_valuebox.o.d 
	@${RM} ${OBJECTDIR}/_ext/1770752335/gui_demo_valuebox.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1770752335/gui_demo_valuebox.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1770752335/gui_demo_valuebox.o.d" -o ${OBJECTDIR}/_ext/1770752335/gui_demo_valuebox.o ../src/app/gui_demo/gui_demo_valuebox.c   
	
${OBJECTDIR}/_ext/1770752335/p2d_demo.o: ../src/app/gui_demo/p2d_demo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1770752335" 
	@${RM} ${OBJECTDIR}/_ext/1770752335/p2d_demo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1770752335/p2d_demo.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1770752335/p2d_demo.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1770752335/p2d_demo.o.d" -o ${OBJECTDIR}/_ext/1770752335/p2d_demo.o ../src/app/gui_demo/p2d_demo.c   
	
${OBJECTDIR}/_ext/1770752335/p2d_demo_alpha.o: ../src/app/gui_demo/p2d_demo_alpha.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1770752335" 
	@${RM} ${OBJECTDIR}/_ext/1770752335/p2d_demo_alpha.o.d 
	@${RM} ${OBJECTDIR}/_ext/1770752335/p2d_demo_alpha.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1770752335/p2d_demo_alpha.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1770752335/p2d_demo_alpha.o.d" -o ${OBJECTDIR}/_ext/1770752335/p2d_demo_alpha.o ../src/app/gui_demo/p2d_demo_alpha.c   
	
${OBJECTDIR}/_ext/1075961094/p2d_base.o: ../src/app/p2d/p2d_base.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1075961094" 
	@${RM} ${OBJECTDIR}/_ext/1075961094/p2d_base.o.d 
	@${RM} ${OBJECTDIR}/_ext/1075961094/p2d_base.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1075961094/p2d_base.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1075961094/p2d_base.o.d" -o ${OBJECTDIR}/_ext/1075961094/p2d_base.o ../src/app/p2d/p2d_base.c   
	
${OBJECTDIR}/_ext/1075961094/p2d_buffer.o: ../src/app/p2d/p2d_buffer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1075961094" 
	@${RM} ${OBJECTDIR}/_ext/1075961094/p2d_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1075961094/p2d_buffer.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1075961094/p2d_buffer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1075961094/p2d_buffer.o.d" -o ${OBJECTDIR}/_ext/1075961094/p2d_buffer.o ../src/app/p2d/p2d_buffer.c   
	
${OBJECTDIR}/_ext/1075961094/p2d_clip.o: ../src/app/p2d/p2d_clip.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1075961094" 
	@${RM} ${OBJECTDIR}/_ext/1075961094/p2d_clip.o.d 
	@${RM} ${OBJECTDIR}/_ext/1075961094/p2d_clip.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1075961094/p2d_clip.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1075961094/p2d_clip.o.d" -o ${OBJECTDIR}/_ext/1075961094/p2d_clip.o ../src/app/p2d/p2d_clip.c   
	
${OBJECTDIR}/_ext/1075961094/p2d_colors.o: ../src/app/p2d/p2d_colors.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1075961094" 
	@${RM} ${OBJECTDIR}/_ext/1075961094/p2d_colors.o.d 
	@${RM} ${OBJECTDIR}/_ext/1075961094/p2d_colors.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1075961094/p2d_colors.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1075961094/p2d_colors.o.d" -o ${OBJECTDIR}/_ext/1075961094/p2d_colors.o ../src/app/p2d/p2d_colors.c   
	
${OBJECTDIR}/_ext/1075961094/p2d_font.o: ../src/app/p2d/p2d_font.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1075961094" 
	@${RM} ${OBJECTDIR}/_ext/1075961094/p2d_font.o.d 
	@${RM} ${OBJECTDIR}/_ext/1075961094/p2d_font.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1075961094/p2d_font.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1075961094/p2d_font.o.d" -o ${OBJECTDIR}/_ext/1075961094/p2d_font.o ../src/app/p2d/p2d_font.c   
	
${OBJECTDIR}/_ext/1075961094/p2d_geo_circle.o: ../src/app/p2d/p2d_geo_circle.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1075961094" 
	@${RM} ${OBJECTDIR}/_ext/1075961094/p2d_geo_circle.o.d 
	@${RM} ${OBJECTDIR}/_ext/1075961094/p2d_geo_circle.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1075961094/p2d_geo_circle.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1075961094/p2d_geo_circle.o.d" -o ${OBJECTDIR}/_ext/1075961094/p2d_geo_circle.o ../src/app/p2d/p2d_geo_circle.c   
	
${OBJECTDIR}/_ext/1075961094/p2d_geo_line.o: ../src/app/p2d/p2d_geo_line.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1075961094" 
	@${RM} ${OBJECTDIR}/_ext/1075961094/p2d_geo_line.o.d 
	@${RM} ${OBJECTDIR}/_ext/1075961094/p2d_geo_line.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1075961094/p2d_geo_line.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1075961094/p2d_geo_line.o.d" -o ${OBJECTDIR}/_ext/1075961094/p2d_geo_line.o ../src/app/p2d/p2d_geo_line.c   
	
${OBJECTDIR}/_ext/1075961094/p2d_geo_poly.o: ../src/app/p2d/p2d_geo_poly.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1075961094" 
	@${RM} ${OBJECTDIR}/_ext/1075961094/p2d_geo_poly.o.d 
	@${RM} ${OBJECTDIR}/_ext/1075961094/p2d_geo_poly.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1075961094/p2d_geo_poly.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1075961094/p2d_geo_poly.o.d" -o ${OBJECTDIR}/_ext/1075961094/p2d_geo_poly.o ../src/app/p2d/p2d_geo_poly.c   
	
${OBJECTDIR}/_ext/1075961094/p2d_internal.o: ../src/app/p2d/p2d_internal.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1075961094" 
	@${RM} ${OBJECTDIR}/_ext/1075961094/p2d_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1075961094/p2d_internal.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1075961094/p2d_internal.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1075961094/p2d_internal.o.d" -o ${OBJECTDIR}/_ext/1075961094/p2d_internal.o ../src/app/p2d/p2d_internal.c   
	
${OBJECTDIR}/_ext/1075961094/p2d_lut.o: ../src/app/p2d/p2d_lut.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1075961094" 
	@${RM} ${OBJECTDIR}/_ext/1075961094/p2d_lut.o.d 
	@${RM} ${OBJECTDIR}/_ext/1075961094/p2d_lut.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1075961094/p2d_lut.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1075961094/p2d_lut.o.d" -o ${OBJECTDIR}/_ext/1075961094/p2d_lut.o ../src/app/p2d/p2d_lut.c   
	
${OBJECTDIR}/_ext/1075961094/p2d_math.o: ../src/app/p2d/p2d_math.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1075961094" 
	@${RM} ${OBJECTDIR}/_ext/1075961094/p2d_math.o.d 
	@${RM} ${OBJECTDIR}/_ext/1075961094/p2d_math.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1075961094/p2d_math.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1075961094/p2d_math.o.d" -o ${OBJECTDIR}/_ext/1075961094/p2d_math.o ../src/app/p2d/p2d_math.c   
	
${OBJECTDIR}/_ext/1075961094/p2d_sprite.o: ../src/app/p2d/p2d_sprite.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1075961094" 
	@${RM} ${OBJECTDIR}/_ext/1075961094/p2d_sprite.o.d 
	@${RM} ${OBJECTDIR}/_ext/1075961094/p2d_sprite.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1075961094/p2d_sprite.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1075961094/p2d_sprite.o.d" -o ${OBJECTDIR}/_ext/1075961094/p2d_sprite.o ../src/app/p2d/p2d_sprite.c   
	
${OBJECTDIR}/_ext/1075961094/p2d_utils.o: ../src/app/p2d/p2d_utils.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1075961094" 
	@${RM} ${OBJECTDIR}/_ext/1075961094/p2d_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1075961094/p2d_utils.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1075961094/p2d_utils.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1075961094/p2d_utils.o.d" -o ${OBJECTDIR}/_ext/1075961094/p2d_utils.o ../src/app/p2d/p2d_utils.c   
	
${OBJECTDIR}/_ext/704330691/FontDigit_4bpp.o: ../src/app/resources/FontDigit_4bpp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/704330691" 
	@${RM} ${OBJECTDIR}/_ext/704330691/FontDigit_4bpp.o.d 
	@${RM} ${OBJECTDIR}/_ext/704330691/FontDigit_4bpp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/704330691/FontDigit_4bpp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/704330691/FontDigit_4bpp.o.d" -o ${OBJECTDIR}/_ext/704330691/FontDigit_4bpp.o ../src/app/resources/FontDigit_4bpp.c   
	
${OBJECTDIR}/_ext/704330691/FontSerif_4bpp_b.o: ../src/app/resources/FontSerif_4bpp_b.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/704330691" 
	@${RM} ${OBJECTDIR}/_ext/704330691/FontSerif_4bpp_b.o.d 
	@${RM} ${OBJECTDIR}/_ext/704330691/FontSerif_4bpp_b.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/704330691/FontSerif_4bpp_b.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/704330691/FontSerif_4bpp_b.o.d" -o ${OBJECTDIR}/_ext/704330691/FontSerif_4bpp_b.o ../src/app/resources/FontSerif_4bpp_b.c   
	
${OBJECTDIR}/_ext/704330691/FontSerif_4bpp_i.o: ../src/app/resources/FontSerif_4bpp_i.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/704330691" 
	@${RM} ${OBJECTDIR}/_ext/704330691/FontSerif_4bpp_i.o.d 
	@${RM} ${OBJECTDIR}/_ext/704330691/FontSerif_4bpp_i.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/704330691/FontSerif_4bpp_i.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/704330691/FontSerif_4bpp_i.o.d" -o ${OBJECTDIR}/_ext/704330691/FontSerif_4bpp_i.o ../src/app/resources/FontSerif_4bpp_i.c   
	
${OBJECTDIR}/_ext/704330691/FontSerif_4bpp_n.o: ../src/app/resources/FontSerif_4bpp_n.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/704330691" 
	@${RM} ${OBJECTDIR}/_ext/704330691/FontSerif_4bpp_n.o.d 
	@${RM} ${OBJECTDIR}/_ext/704330691/FontSerif_4bpp_n.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/704330691/FontSerif_4bpp_n.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/704330691/FontSerif_4bpp_n.o.d" -o ${OBJECTDIR}/_ext/704330691/FontSerif_4bpp_n.o ../src/app/resources/FontSerif_4bpp_n.c   
	
${OBJECTDIR}/_ext/704330691/FontSymbol.o: ../src/app/resources/FontSymbol.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/704330691" 
	@${RM} ${OBJECTDIR}/_ext/704330691/FontSymbol.o.d 
	@${RM} ${OBJECTDIR}/_ext/704330691/FontSymbol.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/704330691/FontSymbol.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/704330691/FontSymbol.o.d" -o ${OBJECTDIR}/_ext/704330691/FontSymbol.o ../src/app/resources/FontSymbol.c   
	
${OBJECTDIR}/_ext/704330691/sprite00.o: ../src/app/resources/sprite00.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/704330691" 
	@${RM} ${OBJECTDIR}/_ext/704330691/sprite00.o.d 
	@${RM} ${OBJECTDIR}/_ext/704330691/sprite00.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/704330691/sprite00.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/704330691/sprite00.o.d" -o ${OBJECTDIR}/_ext/704330691/sprite00.o ../src/app/resources/sprite00.c   
	
${OBJECTDIR}/_ext/704330691/sprite01.o: ../src/app/resources/sprite01.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/704330691" 
	@${RM} ${OBJECTDIR}/_ext/704330691/sprite01.o.d 
	@${RM} ${OBJECTDIR}/_ext/704330691/sprite01.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/704330691/sprite01.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/704330691/sprite01.o.d" -o ${OBJECTDIR}/_ext/704330691/sprite01.o ../src/app/resources/sprite01.c   
	
${OBJECTDIR}/_ext/704330691/sprite02.o: ../src/app/resources/sprite02.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/704330691" 
	@${RM} ${OBJECTDIR}/_ext/704330691/sprite02.o.d 
	@${RM} ${OBJECTDIR}/_ext/704330691/sprite02.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/704330691/sprite02.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/704330691/sprite02.o.d" -o ${OBJECTDIR}/_ext/704330691/sprite02.o ../src/app/resources/sprite02.c   
	
${OBJECTDIR}/_ext/704330691/sprite03.o: ../src/app/resources/sprite03.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/704330691" 
	@${RM} ${OBJECTDIR}/_ext/704330691/sprite03.o.d 
	@${RM} ${OBJECTDIR}/_ext/704330691/sprite03.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/704330691/sprite03.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/704330691/sprite03.o.d" -o ${OBJECTDIR}/_ext/704330691/sprite03.o ../src/app/resources/sprite03.c   
	
${OBJECTDIR}/_ext/704330691/sprite04.o: ../src/app/resources/sprite04.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/704330691" 
	@${RM} ${OBJECTDIR}/_ext/704330691/sprite04.o.d 
	@${RM} ${OBJECTDIR}/_ext/704330691/sprite04.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/704330691/sprite04.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/704330691/sprite04.o.d" -o ${OBJECTDIR}/_ext/704330691/sprite04.o ../src/app/resources/sprite04.c   
	
${OBJECTDIR}/_ext/1355146320/game.o: ../src/app/usr/space_shooter/game.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1355146320" 
	@${RM} ${OBJECTDIR}/_ext/1355146320/game.o.d 
	@${RM} ${OBJECTDIR}/_ext/1355146320/game.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1355146320/game.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1355146320/game.o.d" -o ${OBJECTDIR}/_ext/1355146320/game.o ../src/app/usr/space_shooter/game.c   
	
${OBJECTDIR}/_ext/1355146320/game_background.o: ../src/app/usr/space_shooter/game_background.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1355146320" 
	@${RM} ${OBJECTDIR}/_ext/1355146320/game_background.o.d 
	@${RM} ${OBJECTDIR}/_ext/1355146320/game_background.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1355146320/game_background.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1355146320/game_background.o.d" -o ${OBJECTDIR}/_ext/1355146320/game_background.o ../src/app/usr/space_shooter/game_background.c   
	
${OBJECTDIR}/_ext/1355146320/game_enemy.o: ../src/app/usr/space_shooter/game_enemy.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1355146320" 
	@${RM} ${OBJECTDIR}/_ext/1355146320/game_enemy.o.d 
	@${RM} ${OBJECTDIR}/_ext/1355146320/game_enemy.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1355146320/game_enemy.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1355146320/game_enemy.o.d" -o ${OBJECTDIR}/_ext/1355146320/game_enemy.o ../src/app/usr/space_shooter/game_enemy.c   
	
${OBJECTDIR}/_ext/1355146320/game_explosion.o: ../src/app/usr/space_shooter/game_explosion.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1355146320" 
	@${RM} ${OBJECTDIR}/_ext/1355146320/game_explosion.o.d 
	@${RM} ${OBJECTDIR}/_ext/1355146320/game_explosion.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1355146320/game_explosion.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1355146320/game_explosion.o.d" -o ${OBJECTDIR}/_ext/1355146320/game_explosion.o ../src/app/usr/space_shooter/game_explosion.c   
	
${OBJECTDIR}/_ext/1355146320/game_gui.o: ../src/app/usr/space_shooter/game_gui.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1355146320" 
	@${RM} ${OBJECTDIR}/_ext/1355146320/game_gui.o.d 
	@${RM} ${OBJECTDIR}/_ext/1355146320/game_gui.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1355146320/game_gui.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1355146320/game_gui.o.d" -o ${OBJECTDIR}/_ext/1355146320/game_gui.o ../src/app/usr/space_shooter/game_gui.c   
	
${OBJECTDIR}/_ext/1355146320/game_missile.o: ../src/app/usr/space_shooter/game_missile.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1355146320" 
	@${RM} ${OBJECTDIR}/_ext/1355146320/game_missile.o.d 
	@${RM} ${OBJECTDIR}/_ext/1355146320/game_missile.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1355146320/game_missile.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1355146320/game_missile.o.d" -o ${OBJECTDIR}/_ext/1355146320/game_missile.o ../src/app/usr/space_shooter/game_missile.c   
	
${OBJECTDIR}/_ext/1355146320/game_obj.o: ../src/app/usr/space_shooter/game_obj.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1355146320" 
	@${RM} ${OBJECTDIR}/_ext/1355146320/game_obj.o.d 
	@${RM} ${OBJECTDIR}/_ext/1355146320/game_obj.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1355146320/game_obj.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1355146320/game_obj.o.d" -o ${OBJECTDIR}/_ext/1355146320/game_obj.o ../src/app/usr/space_shooter/game_obj.c   
	
${OBJECTDIR}/_ext/1355146320/game_player.o: ../src/app/usr/space_shooter/game_player.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1355146320" 
	@${RM} ${OBJECTDIR}/_ext/1355146320/game_player.o.d 
	@${RM} ${OBJECTDIR}/_ext/1355146320/game_player.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1355146320/game_player.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1355146320/game_player.o.d" -o ${OBJECTDIR}/_ext/1355146320/game_player.o ../src/app/usr/space_shooter/game_player.c   
	
${OBJECTDIR}/_ext/1355146320/p2d_sprite16.o: ../src/app/usr/space_shooter/p2d_sprite16.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1355146320" 
	@${RM} ${OBJECTDIR}/_ext/1355146320/p2d_sprite16.o.d 
	@${RM} ${OBJECTDIR}/_ext/1355146320/p2d_sprite16.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1355146320/p2d_sprite16.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1355146320/p2d_sprite16.o.d" -o ${OBJECTDIR}/_ext/1355146320/p2d_sprite16.o ../src/app/usr/space_shooter/p2d_sprite16.c   
	
${OBJECTDIR}/_ext/1355146320/sp_background.o: ../src/app/usr/space_shooter/sp_background.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1355146320" 
	@${RM} ${OBJECTDIR}/_ext/1355146320/sp_background.o.d 
	@${RM} ${OBJECTDIR}/_ext/1355146320/sp_background.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1355146320/sp_background.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1355146320/sp_background.o.d" -o ${OBJECTDIR}/_ext/1355146320/sp_background.o ../src/app/usr/space_shooter/sp_background.c   
	
${OBJECTDIR}/_ext/1355146320/sp_explosion.o: ../src/app/usr/space_shooter/sp_explosion.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1355146320" 
	@${RM} ${OBJECTDIR}/_ext/1355146320/sp_explosion.o.d 
	@${RM} ${OBJECTDIR}/_ext/1355146320/sp_explosion.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1355146320/sp_explosion.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1355146320/sp_explosion.o.d" -o ${OBJECTDIR}/_ext/1355146320/sp_explosion.o ../src/app/usr/space_shooter/sp_explosion.c   
	
${OBJECTDIR}/_ext/1355146320/sp_gui.o: ../src/app/usr/space_shooter/sp_gui.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1355146320" 
	@${RM} ${OBJECTDIR}/_ext/1355146320/sp_gui.o.d 
	@${RM} ${OBJECTDIR}/_ext/1355146320/sp_gui.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1355146320/sp_gui.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1355146320/sp_gui.o.d" -o ${OBJECTDIR}/_ext/1355146320/sp_gui.o ../src/app/usr/space_shooter/sp_gui.c   
	
${OBJECTDIR}/_ext/1355146320/sp_missile.o: ../src/app/usr/space_shooter/sp_missile.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1355146320" 
	@${RM} ${OBJECTDIR}/_ext/1355146320/sp_missile.o.d 
	@${RM} ${OBJECTDIR}/_ext/1355146320/sp_missile.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1355146320/sp_missile.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1355146320/sp_missile.o.d" -o ${OBJECTDIR}/_ext/1355146320/sp_missile.o ../src/app/usr/space_shooter/sp_missile.c   
	
${OBJECTDIR}/_ext/1355146320/sp_ship.o: ../src/app/usr/space_shooter/sp_ship.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1355146320" 
	@${RM} ${OBJECTDIR}/_ext/1355146320/sp_ship.o.d 
	@${RM} ${OBJECTDIR}/_ext/1355146320/sp_ship.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1355146320/sp_ship.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1355146320/sp_ship.o.d" -o ${OBJECTDIR}/_ext/1355146320/sp_ship.o ../src/app/usr/space_shooter/sp_ship.c   
	
${OBJECTDIR}/_ext/968571546/plane_background.o: ../src/app/usr/tappy_plane/plane_background.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/968571546" 
	@${RM} ${OBJECTDIR}/_ext/968571546/plane_background.o.d 
	@${RM} ${OBJECTDIR}/_ext/968571546/plane_background.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/968571546/plane_background.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/968571546/plane_background.o.d" -o ${OBJECTDIR}/_ext/968571546/plane_background.o ../src/app/usr/tappy_plane/plane_background.c   
	
${OBJECTDIR}/_ext/968571546/plane_game.o: ../src/app/usr/tappy_plane/plane_game.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/968571546" 
	@${RM} ${OBJECTDIR}/_ext/968571546/plane_game.o.d 
	@${RM} ${OBJECTDIR}/_ext/968571546/plane_game.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/968571546/plane_game.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/968571546/plane_game.o.d" -o ${OBJECTDIR}/_ext/968571546/plane_game.o ../src/app/usr/tappy_plane/plane_game.c   
	
${OBJECTDIR}/_ext/968571546/sp_plane_background.o: ../src/app/usr/tappy_plane/sp_plane_background.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/968571546" 
	@${RM} ${OBJECTDIR}/_ext/968571546/sp_plane_background.o.d 
	@${RM} ${OBJECTDIR}/_ext/968571546/sp_plane_background.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/968571546/sp_plane_background.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/968571546/sp_plane_background.o.d" -o ${OBJECTDIR}/_ext/968571546/sp_plane_background.o ../src/app/usr/tappy_plane/sp_plane_background.c   
	
${OBJECTDIR}/_ext/968571546/plane_game_gui.o: ../src/app/usr/tappy_plane/plane_game_gui.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/968571546" 
	@${RM} ${OBJECTDIR}/_ext/968571546/plane_game_gui.o.d 
	@${RM} ${OBJECTDIR}/_ext/968571546/plane_game_gui.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/968571546/plane_game_gui.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/968571546/plane_game_gui.o.d" -o ${OBJECTDIR}/_ext/968571546/plane_game_gui.o ../src/app/usr/tappy_plane/plane_game_gui.c   
	
${OBJECTDIR}/_ext/968571546/plane_game_obj.o: ../src/app/usr/tappy_plane/plane_game_obj.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/968571546" 
	@${RM} ${OBJECTDIR}/_ext/968571546/plane_game_obj.o.d 
	@${RM} ${OBJECTDIR}/_ext/968571546/plane_game_obj.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/968571546/plane_game_obj.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/968571546/plane_game_obj.o.d" -o ${OBJECTDIR}/_ext/968571546/plane_game_obj.o ../src/app/usr/tappy_plane/plane_game_obj.c   
	
${OBJECTDIR}/_ext/968571546/sp_plane_obj.o: ../src/app/usr/tappy_plane/sp_plane_obj.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/968571546" 
	@${RM} ${OBJECTDIR}/_ext/968571546/sp_plane_obj.o.d 
	@${RM} ${OBJECTDIR}/_ext/968571546/sp_plane_obj.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/968571546/sp_plane_obj.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/968571546/sp_plane_obj.o.d" -o ${OBJECTDIR}/_ext/968571546/sp_plane_obj.o ../src/app/usr/tappy_plane/sp_plane_obj.c   
	
${OBJECTDIR}/_ext/968571546/plane_game_player.o: ../src/app/usr/tappy_plane/plane_game_player.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/968571546" 
	@${RM} ${OBJECTDIR}/_ext/968571546/plane_game_player.o.d 
	@${RM} ${OBJECTDIR}/_ext/968571546/plane_game_player.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/968571546/plane_game_player.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/968571546/plane_game_player.o.d" -o ${OBJECTDIR}/_ext/968571546/plane_game_player.o ../src/app/usr/tappy_plane/plane_game_player.c   
	
${OBJECTDIR}/_ext/968571546/sp_plane_ui.o: ../src/app/usr/tappy_plane/sp_plane_ui.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/968571546" 
	@${RM} ${OBJECTDIR}/_ext/968571546/sp_plane_ui.o.d 
	@${RM} ${OBJECTDIR}/_ext/968571546/sp_plane_ui.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/968571546/sp_plane_ui.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/968571546/sp_plane_ui.o.d" -o ${OBJECTDIR}/_ext/968571546/sp_plane_ui.o ../src/app/usr/tappy_plane/sp_plane_ui.c   
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c   
	
${OBJECTDIR}/_ext/1649337950/lcc_isr.o: ../src/drv/bsp/lcc_isr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1649337950" 
	@${RM} ${OBJECTDIR}/_ext/1649337950/lcc_isr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1649337950/lcc_isr.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1649337950/lcc_isr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -MMD -MF "${OBJECTDIR}/_ext/1649337950/lcc_isr.o.d" -o ${OBJECTDIR}/_ext/1649337950/lcc_isr.o ../src/drv/bsp/lcc_isr.c   
	
${OBJECTDIR}/_ext/1649337950/touchscreen.o: ../src/drv/bsp/touchscreen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1649337950" 
	@${RM} ${OBJECTDIR}/_ext/1649337950/touchscreen.o.d 
	@${RM} ${OBJECTDIR}/_ext/1649337950/touchscreen.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1649337950/touchscreen.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -MMD -MF "${OBJECTDIR}/_ext/1649337950/touchscreen.o.d" -o ${OBJECTDIR}/_ext/1649337950/touchscreen.o ../src/drv/bsp/touchscreen.c   
	
${OBJECTDIR}/_ext/1649337950/lcc_io.o: ../src/drv/bsp/lcc_io.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1649337950" 
	@${RM} ${OBJECTDIR}/_ext/1649337950/lcc_io.o.d 
	@${RM} ${OBJECTDIR}/_ext/1649337950/lcc_io.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1649337950/lcc_io.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1649337950/lcc_io.o.d" -o ${OBJECTDIR}/_ext/1649337950/lcc_io.o ../src/drv/bsp/lcc_io.c   
	
${OBJECTDIR}/_ext/362436977/configuration_bits.o: ../src/drv/uc/configuration_bits.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/362436977" 
	@${RM} ${OBJECTDIR}/_ext/362436977/configuration_bits.o.d 
	@${RM} ${OBJECTDIR}/_ext/362436977/configuration_bits.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/362436977/configuration_bits.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/362436977/configuration_bits.o.d" -o ${OBJECTDIR}/_ext/362436977/configuration_bits.o ../src/drv/uc/configuration_bits.c   
	
${OBJECTDIR}/_ext/362436977/tmr.o: ../src/drv/uc/tmr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/362436977" 
	@${RM} ${OBJECTDIR}/_ext/362436977/tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/362436977/tmr.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/362436977/tmr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/362436977/tmr.o.d" -o ${OBJECTDIR}/_ext/362436977/tmr.o ../src/drv/uc/tmr.c   
	
${OBJECTDIR}/_ext/362436977/uc.o: ../src/drv/uc/uc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/362436977" 
	@${RM} ${OBJECTDIR}/_ext/362436977/uc.o.d 
	@${RM} ${OBJECTDIR}/_ext/362436977/uc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/362436977/uc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/362436977/uc.o.d" -o ${OBJECTDIR}/_ext/362436977/uc.o ../src/drv/uc/uc.c   
	
${OBJECTDIR}/_ext/362436977/i2c_sw.o: ../src/drv/uc/i2c_sw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/362436977" 
	@${RM} ${OBJECTDIR}/_ext/362436977/i2c_sw.o.d 
	@${RM} ${OBJECTDIR}/_ext/362436977/i2c_sw.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/362436977/i2c_sw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -funroll-loops -DINLINE_API="static inline" -DINLINE="static inline" -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -MMD -MF "${OBJECTDIR}/_ext/362436977/i2c_sw.o.d" -o ${OBJECTDIR}/_ext/362436977/i2c_sw.o ../src/drv/uc/i2c_sw.c   
	
${OBJECTDIR}/_ext/659868371/ticks.o: ../src/sys/ticks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/659868371" 
	@${RM} ${OBJECTDIR}/_ext/659868371/ticks.o.d 
	@${RM} ${OBJECTDIR}/_ext/659868371/ticks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/659868371/ticks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/659868371/ticks.o.d" -o ${OBJECTDIR}/_ext/659868371/ticks.o ../src/sys/ticks.c   
	
${OBJECTDIR}/_ext/659868371/timer.o: ../src/sys/timer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/659868371" 
	@${RM} ${OBJECTDIR}/_ext/659868371/timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/659868371/timer.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/659868371/timer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/659868371/timer.o.d" -o ${OBJECTDIR}/_ext/659868371/timer.o ../src/sys/timer.c   
	
${OBJECTDIR}/_ext/659868371/delay.o: ../src/sys/delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/659868371" 
	@${RM} ${OBJECTDIR}/_ext/659868371/delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/659868371/delay.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/659868371/delay.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/659868371/delay.o.d" -o ${OBJECTDIR}/_ext/659868371/delay.o ../src/sys/delay.c   
	
${OBJECTDIR}/_ext/659868371/rtc.o: ../src/sys/rtc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/659868371" 
	@${RM} ${OBJECTDIR}/_ext/659868371/rtc.o.d 
	@${RM} ${OBJECTDIR}/_ext/659868371/rtc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/659868371/rtc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/659868371/rtc.o.d" -o ${OBJECTDIR}/_ext/659868371/rtc.o ../src/sys/rtc.c   
	
${OBJECTDIR}/_ext/659868371/salloc.o: ../src/sys/salloc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/659868371" 
	@${RM} ${OBJECTDIR}/_ext/659868371/salloc.o.d 
	@${RM} ${OBJECTDIR}/_ext/659868371/salloc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/659868371/salloc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/659868371/salloc.o.d" -o ${OBJECTDIR}/_ext/659868371/salloc.o ../src/sys/salloc.c   
	
else
${OBJECTDIR}/_ext/1613756666/gui_m_keyboard.o: ../src/app/gui/macro/keyboard/gui_m_keyboard.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1613756666" 
	@${RM} ${OBJECTDIR}/_ext/1613756666/gui_m_keyboard.o.d 
	@${RM} ${OBJECTDIR}/_ext/1613756666/gui_m_keyboard.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1613756666/gui_m_keyboard.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1613756666/gui_m_keyboard.o.d" -o ${OBJECTDIR}/_ext/1613756666/gui_m_keyboard.o ../src/app/gui/macro/keyboard/gui_m_keyboard.c   
	
${OBJECTDIR}/_ext/1613756666/gui_w_key.o: ../src/app/gui/macro/keyboard/gui_w_key.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1613756666" 
	@${RM} ${OBJECTDIR}/_ext/1613756666/gui_w_key.o.d 
	@${RM} ${OBJECTDIR}/_ext/1613756666/gui_w_key.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1613756666/gui_w_key.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1613756666/gui_w_key.o.d" -o ${OBJECTDIR}/_ext/1613756666/gui_w_key.o ../src/app/gui/macro/keyboard/gui_w_key.c   
	
${OBJECTDIR}/_ext/1613756666/keymap.o: ../src/app/gui/macro/keyboard/keymap.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1613756666" 
	@${RM} ${OBJECTDIR}/_ext/1613756666/keymap.o.d 
	@${RM} ${OBJECTDIR}/_ext/1613756666/keymap.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1613756666/keymap.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1613756666/keymap.o.d" -o ${OBJECTDIR}/_ext/1613756666/keymap.o ../src/app/gui/macro/keyboard/keymap.c   
	
${OBJECTDIR}/_ext/147368765/gui_m_list.o: ../src/app/gui/macro/list/gui_m_list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/147368765" 
	@${RM} ${OBJECTDIR}/_ext/147368765/gui_m_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/147368765/gui_m_list.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/147368765/gui_m_list.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/147368765/gui_m_list.o.d" -o ${OBJECTDIR}/_ext/147368765/gui_m_list.o ../src/app/gui/macro/list/gui_m_list.c   
	
${OBJECTDIR}/_ext/277334509/gui_m_popup.o: ../src/app/gui/macro/popup/gui_m_popup.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/277334509" 
	@${RM} ${OBJECTDIR}/_ext/277334509/gui_m_popup.o.d 
	@${RM} ${OBJECTDIR}/_ext/277334509/gui_m_popup.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/277334509/gui_m_popup.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/277334509/gui_m_popup.o.d" -o ${OBJECTDIR}/_ext/277334509/gui_m_popup.o ../src/app/gui/macro/popup/gui_m_popup.c   
	
${OBJECTDIR}/_ext/567266829/gui_w_button.o: ../src/app/gui/widgets/gui_w_button.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/567266829" 
	@${RM} ${OBJECTDIR}/_ext/567266829/gui_w_button.o.d 
	@${RM} ${OBJECTDIR}/_ext/567266829/gui_w_button.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/567266829/gui_w_button.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/567266829/gui_w_button.o.d" -o ${OBJECTDIR}/_ext/567266829/gui_w_button.o ../src/app/gui/widgets/gui_w_button.c   
	
${OBJECTDIR}/_ext/567266829/gui_w_checkBox.o: ../src/app/gui/widgets/gui_w_checkBox.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/567266829" 
	@${RM} ${OBJECTDIR}/_ext/567266829/gui_w_checkBox.o.d 
	@${RM} ${OBJECTDIR}/_ext/567266829/gui_w_checkBox.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/567266829/gui_w_checkBox.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/567266829/gui_w_checkBox.o.d" -o ${OBJECTDIR}/_ext/567266829/gui_w_checkBox.o ../src/app/gui/widgets/gui_w_checkBox.c   
	
${OBJECTDIR}/_ext/567266829/gui_w_frame.o: ../src/app/gui/widgets/gui_w_frame.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/567266829" 
	@${RM} ${OBJECTDIR}/_ext/567266829/gui_w_frame.o.d 
	@${RM} ${OBJECTDIR}/_ext/567266829/gui_w_frame.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/567266829/gui_w_frame.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/567266829/gui_w_frame.o.d" -o ${OBJECTDIR}/_ext/567266829/gui_w_frame.o ../src/app/gui/widgets/gui_w_frame.c   
	
${OBJECTDIR}/_ext/567266829/gui_w_graph.o: ../src/app/gui/widgets/gui_w_graph.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/567266829" 
	@${RM} ${OBJECTDIR}/_ext/567266829/gui_w_graph.o.d 
	@${RM} ${OBJECTDIR}/_ext/567266829/gui_w_graph.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/567266829/gui_w_graph.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/567266829/gui_w_graph.o.d" -o ${OBJECTDIR}/_ext/567266829/gui_w_graph.o ../src/app/gui/widgets/gui_w_graph.c   
	
${OBJECTDIR}/_ext/567266829/gui_w_led.o: ../src/app/gui/widgets/gui_w_led.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/567266829" 
	@${RM} ${OBJECTDIR}/_ext/567266829/gui_w_led.o.d 
	@${RM} ${OBJECTDIR}/_ext/567266829/gui_w_led.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/567266829/gui_w_led.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/567266829/gui_w_led.o.d" -o ${OBJECTDIR}/_ext/567266829/gui_w_led.o ../src/app/gui/widgets/gui_w_led.c   
	
${OBJECTDIR}/_ext/567266829/gui_w_list.o: ../src/app/gui/widgets/gui_w_list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/567266829" 
	@${RM} ${OBJECTDIR}/_ext/567266829/gui_w_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/567266829/gui_w_list.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/567266829/gui_w_list.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/567266829/gui_w_list.o.d" -o ${OBJECTDIR}/_ext/567266829/gui_w_list.o ../src/app/gui/widgets/gui_w_list.c   
	
${OBJECTDIR}/_ext/567266829/gui_w_radio.o: ../src/app/gui/widgets/gui_w_radio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/567266829" 
	@${RM} ${OBJECTDIR}/_ext/567266829/gui_w_radio.o.d 
	@${RM} ${OBJECTDIR}/_ext/567266829/gui_w_radio.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/567266829/gui_w_radio.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/567266829/gui_w_radio.o.d" -o ${OBJECTDIR}/_ext/567266829/gui_w_radio.o ../src/app/gui/widgets/gui_w_radio.c   
	
${OBJECTDIR}/_ext/567266829/gui_w_rot_button.o: ../src/app/gui/widgets/gui_w_rot_button.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/567266829" 
	@${RM} ${OBJECTDIR}/_ext/567266829/gui_w_rot_button.o.d 
	@${RM} ${OBJECTDIR}/_ext/567266829/gui_w_rot_button.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/567266829/gui_w_rot_button.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/567266829/gui_w_rot_button.o.d" -o ${OBJECTDIR}/_ext/567266829/gui_w_rot_button.o ../src/app/gui/widgets/gui_w_rot_button.c   
	
${OBJECTDIR}/_ext/567266829/gui_w_rot_value.o: ../src/app/gui/widgets/gui_w_rot_value.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/567266829" 
	@${RM} ${OBJECTDIR}/_ext/567266829/gui_w_rot_value.o.d 
	@${RM} ${OBJECTDIR}/_ext/567266829/gui_w_rot_value.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/567266829/gui_w_rot_value.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/567266829/gui_w_rot_value.o.d" -o ${OBJECTDIR}/_ext/567266829/gui_w_rot_value.o ../src/app/gui/widgets/gui_w_rot_value.c   
	
${OBJECTDIR}/_ext/567266829/gui_w_scroller.o: ../src/app/gui/widgets/gui_w_scroller.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/567266829" 
	@${RM} ${OBJECTDIR}/_ext/567266829/gui_w_scroller.o.d 
	@${RM} ${OBJECTDIR}/_ext/567266829/gui_w_scroller.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/567266829/gui_w_scroller.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/567266829/gui_w_scroller.o.d" -o ${OBJECTDIR}/_ext/567266829/gui_w_scroller.o ../src/app/gui/widgets/gui_w_scroller.c   
	
${OBJECTDIR}/_ext/567266829/gui_w_slider.o: ../src/app/gui/widgets/gui_w_slider.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/567266829" 
	@${RM} ${OBJECTDIR}/_ext/567266829/gui_w_slider.o.d 
	@${RM} ${OBJECTDIR}/_ext/567266829/gui_w_slider.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/567266829/gui_w_slider.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/567266829/gui_w_slider.o.d" -o ${OBJECTDIR}/_ext/567266829/gui_w_slider.o ../src/app/gui/widgets/gui_w_slider.c   
	
${OBJECTDIR}/_ext/567266829/gui_w_tab.o: ../src/app/gui/widgets/gui_w_tab.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/567266829" 
	@${RM} ${OBJECTDIR}/_ext/567266829/gui_w_tab.o.d 
	@${RM} ${OBJECTDIR}/_ext/567266829/gui_w_tab.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/567266829/gui_w_tab.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/567266829/gui_w_tab.o.d" -o ${OBJECTDIR}/_ext/567266829/gui_w_tab.o ../src/app/gui/widgets/gui_w_tab.c   
	
${OBJECTDIR}/_ext/567266829/gui_w_text.o: ../src/app/gui/widgets/gui_w_text.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/567266829" 
	@${RM} ${OBJECTDIR}/_ext/567266829/gui_w_text.o.d 
	@${RM} ${OBJECTDIR}/_ext/567266829/gui_w_text.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/567266829/gui_w_text.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/567266829/gui_w_text.o.d" -o ${OBJECTDIR}/_ext/567266829/gui_w_text.o ../src/app/gui/widgets/gui_w_text.c   
	
${OBJECTDIR}/_ext/567266829/gui_w_usr_entry.o: ../src/app/gui/widgets/gui_w_usr_entry.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/567266829" 
	@${RM} ${OBJECTDIR}/_ext/567266829/gui_w_usr_entry.o.d 
	@${RM} ${OBJECTDIR}/_ext/567266829/gui_w_usr_entry.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/567266829/gui_w_usr_entry.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/567266829/gui_w_usr_entry.o.d" -o ${OBJECTDIR}/_ext/567266829/gui_w_usr_entry.o ../src/app/gui/widgets/gui_w_usr_entry.c   
	
${OBJECTDIR}/_ext/567266829/gui_w_valueBox.o: ../src/app/gui/widgets/gui_w_valueBox.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/567266829" 
	@${RM} ${OBJECTDIR}/_ext/567266829/gui_w_valueBox.o.d 
	@${RM} ${OBJECTDIR}/_ext/567266829/gui_w_valueBox.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/567266829/gui_w_valueBox.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/567266829/gui_w_valueBox.o.d" -o ${OBJECTDIR}/_ext/567266829/gui_w_valueBox.o ../src/app/gui/widgets/gui_w_valueBox.c   
	
${OBJECTDIR}/_ext/1075967661/gui_debug.o: ../src/app/gui/gui_debug.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1075967661" 
	@${RM} ${OBJECTDIR}/_ext/1075967661/gui_debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/1075967661/gui_debug.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1075967661/gui_debug.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1075967661/gui_debug.o.d" -o ${OBJECTDIR}/_ext/1075967661/gui_debug.o ../src/app/gui/gui_debug.c   
	
${OBJECTDIR}/_ext/1075967661/gui_graphics.o: ../src/app/gui/gui_graphics.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1075967661" 
	@${RM} ${OBJECTDIR}/_ext/1075967661/gui_graphics.o.d 
	@${RM} ${OBJECTDIR}/_ext/1075967661/gui_graphics.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1075967661/gui_graphics.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1075967661/gui_graphics.o.d" -o ${OBJECTDIR}/_ext/1075967661/gui_graphics.o ../src/app/gui/gui_graphics.c   
	
${OBJECTDIR}/_ext/1075967661/gui_obj.o: ../src/app/gui/gui_obj.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1075967661" 
	@${RM} ${OBJECTDIR}/_ext/1075967661/gui_obj.o.d 
	@${RM} ${OBJECTDIR}/_ext/1075967661/gui_obj.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1075967661/gui_obj.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1075967661/gui_obj.o.d" -o ${OBJECTDIR}/_ext/1075967661/gui_obj.o ../src/app/gui/gui_obj.c   
	
${OBJECTDIR}/_ext/1075967661/gui_utils.o: ../src/app/gui/gui_utils.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1075967661" 
	@${RM} ${OBJECTDIR}/_ext/1075967661/gui_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1075967661/gui_utils.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1075967661/gui_utils.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1075967661/gui_utils.o.d" -o ${OBJECTDIR}/_ext/1075967661/gui_utils.o ../src/app/gui/gui_utils.c   
	
${OBJECTDIR}/_ext/1770752335/gui_demo.o: ../src/app/gui_demo/gui_demo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1770752335" 
	@${RM} ${OBJECTDIR}/_ext/1770752335/gui_demo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1770752335/gui_demo.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1770752335/gui_demo.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1770752335/gui_demo.o.d" -o ${OBJECTDIR}/_ext/1770752335/gui_demo.o ../src/app/gui_demo/gui_demo.c   
	
${OBJECTDIR}/_ext/1770752335/gui_demo_button.o: ../src/app/gui_demo/gui_demo_button.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1770752335" 
	@${RM} ${OBJECTDIR}/_ext/1770752335/gui_demo_button.o.d 
	@${RM} ${OBJECTDIR}/_ext/1770752335/gui_demo_button.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1770752335/gui_demo_button.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1770752335/gui_demo_button.o.d" -o ${OBJECTDIR}/_ext/1770752335/gui_demo_button.o ../src/app/gui_demo/gui_demo_button.c   
	
${OBJECTDIR}/_ext/1770752335/gui_demo_graph1.o: ../src/app/gui_demo/gui_demo_graph1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1770752335" 
	@${RM} ${OBJECTDIR}/_ext/1770752335/gui_demo_graph1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1770752335/gui_demo_graph1.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1770752335/gui_demo_graph1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1770752335/gui_demo_graph1.o.d" -o ${OBJECTDIR}/_ext/1770752335/gui_demo_graph1.o ../src/app/gui_demo/gui_demo_graph1.c   
	
${OBJECTDIR}/_ext/1770752335/gui_demo_graph2.o: ../src/app/gui_demo/gui_demo_graph2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1770752335" 
	@${RM} ${OBJECTDIR}/_ext/1770752335/gui_demo_graph2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1770752335/gui_demo_graph2.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1770752335/gui_demo_graph2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1770752335/gui_demo_graph2.o.d" -o ${OBJECTDIR}/_ext/1770752335/gui_demo_graph2.o ../src/app/gui_demo/gui_demo_graph2.c   
	
${OBJECTDIR}/_ext/1770752335/gui_demo_keyboard.o: ../src/app/gui_demo/gui_demo_keyboard.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1770752335" 
	@${RM} ${OBJECTDIR}/_ext/1770752335/gui_demo_keyboard.o.d 
	@${RM} ${OBJECTDIR}/_ext/1770752335/gui_demo_keyboard.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1770752335/gui_demo_keyboard.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1770752335/gui_demo_keyboard.o.d" -o ${OBJECTDIR}/_ext/1770752335/gui_demo_keyboard.o ../src/app/gui_demo/gui_demo_keyboard.c   
	
${OBJECTDIR}/_ext/1770752335/gui_demo_list.o: ../src/app/gui_demo/gui_demo_list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1770752335" 
	@${RM} ${OBJECTDIR}/_ext/1770752335/gui_demo_list.o.d 
	@${RM} ${OBJECTDIR}/_ext/1770752335/gui_demo_list.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1770752335/gui_demo_list.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1770752335/gui_demo_list.o.d" -o ${OBJECTDIR}/_ext/1770752335/gui_demo_list.o ../src/app/gui_demo/gui_demo_list.c   
	
${OBJECTDIR}/_ext/1770752335/gui_demo_popup.o: ../src/app/gui_demo/gui_demo_popup.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1770752335" 
	@${RM} ${OBJECTDIR}/_ext/1770752335/gui_demo_popup.o.d 
	@${RM} ${OBJECTDIR}/_ext/1770752335/gui_demo_popup.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1770752335/gui_demo_popup.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1770752335/gui_demo_popup.o.d" -o ${OBJECTDIR}/_ext/1770752335/gui_demo_popup.o ../src/app/gui_demo/gui_demo_popup.c   
	
${OBJECTDIR}/_ext/1770752335/gui_demo_rbutton.o: ../src/app/gui_demo/gui_demo_rbutton.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1770752335" 
	@${RM} ${OBJECTDIR}/_ext/1770752335/gui_demo_rbutton.o.d 
	@${RM} ${OBJECTDIR}/_ext/1770752335/gui_demo_rbutton.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1770752335/gui_demo_rbutton.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1770752335/gui_demo_rbutton.o.d" -o ${OBJECTDIR}/_ext/1770752335/gui_demo_rbutton.o ../src/app/gui_demo/gui_demo_rbutton.c   
	
${OBJECTDIR}/_ext/1770752335/gui_demo_text.o: ../src/app/gui_demo/gui_demo_text.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1770752335" 
	@${RM} ${OBJECTDIR}/_ext/1770752335/gui_demo_text.o.d 
	@${RM} ${OBJECTDIR}/_ext/1770752335/gui_demo_text.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1770752335/gui_demo_text.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1770752335/gui_demo_text.o.d" -o ${OBJECTDIR}/_ext/1770752335/gui_demo_text.o ../src/app/gui_demo/gui_demo_text.c   
	
${OBJECTDIR}/_ext/1770752335/gui_demo_valuebox.o: ../src/app/gui_demo/gui_demo_valuebox.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1770752335" 
	@${RM} ${OBJECTDIR}/_ext/1770752335/gui_demo_valuebox.o.d 
	@${RM} ${OBJECTDIR}/_ext/1770752335/gui_demo_valuebox.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1770752335/gui_demo_valuebox.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1770752335/gui_demo_valuebox.o.d" -o ${OBJECTDIR}/_ext/1770752335/gui_demo_valuebox.o ../src/app/gui_demo/gui_demo_valuebox.c   
	
${OBJECTDIR}/_ext/1770752335/p2d_demo.o: ../src/app/gui_demo/p2d_demo.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1770752335" 
	@${RM} ${OBJECTDIR}/_ext/1770752335/p2d_demo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1770752335/p2d_demo.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1770752335/p2d_demo.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1770752335/p2d_demo.o.d" -o ${OBJECTDIR}/_ext/1770752335/p2d_demo.o ../src/app/gui_demo/p2d_demo.c   
	
${OBJECTDIR}/_ext/1770752335/p2d_demo_alpha.o: ../src/app/gui_demo/p2d_demo_alpha.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1770752335" 
	@${RM} ${OBJECTDIR}/_ext/1770752335/p2d_demo_alpha.o.d 
	@${RM} ${OBJECTDIR}/_ext/1770752335/p2d_demo_alpha.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1770752335/p2d_demo_alpha.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1770752335/p2d_demo_alpha.o.d" -o ${OBJECTDIR}/_ext/1770752335/p2d_demo_alpha.o ../src/app/gui_demo/p2d_demo_alpha.c   
	
${OBJECTDIR}/_ext/1075961094/p2d_base.o: ../src/app/p2d/p2d_base.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1075961094" 
	@${RM} ${OBJECTDIR}/_ext/1075961094/p2d_base.o.d 
	@${RM} ${OBJECTDIR}/_ext/1075961094/p2d_base.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1075961094/p2d_base.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1075961094/p2d_base.o.d" -o ${OBJECTDIR}/_ext/1075961094/p2d_base.o ../src/app/p2d/p2d_base.c   
	
${OBJECTDIR}/_ext/1075961094/p2d_buffer.o: ../src/app/p2d/p2d_buffer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1075961094" 
	@${RM} ${OBJECTDIR}/_ext/1075961094/p2d_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1075961094/p2d_buffer.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1075961094/p2d_buffer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1075961094/p2d_buffer.o.d" -o ${OBJECTDIR}/_ext/1075961094/p2d_buffer.o ../src/app/p2d/p2d_buffer.c   
	
${OBJECTDIR}/_ext/1075961094/p2d_clip.o: ../src/app/p2d/p2d_clip.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1075961094" 
	@${RM} ${OBJECTDIR}/_ext/1075961094/p2d_clip.o.d 
	@${RM} ${OBJECTDIR}/_ext/1075961094/p2d_clip.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1075961094/p2d_clip.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1075961094/p2d_clip.o.d" -o ${OBJECTDIR}/_ext/1075961094/p2d_clip.o ../src/app/p2d/p2d_clip.c   
	
${OBJECTDIR}/_ext/1075961094/p2d_colors.o: ../src/app/p2d/p2d_colors.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1075961094" 
	@${RM} ${OBJECTDIR}/_ext/1075961094/p2d_colors.o.d 
	@${RM} ${OBJECTDIR}/_ext/1075961094/p2d_colors.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1075961094/p2d_colors.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1075961094/p2d_colors.o.d" -o ${OBJECTDIR}/_ext/1075961094/p2d_colors.o ../src/app/p2d/p2d_colors.c   
	
${OBJECTDIR}/_ext/1075961094/p2d_font.o: ../src/app/p2d/p2d_font.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1075961094" 
	@${RM} ${OBJECTDIR}/_ext/1075961094/p2d_font.o.d 
	@${RM} ${OBJECTDIR}/_ext/1075961094/p2d_font.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1075961094/p2d_font.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1075961094/p2d_font.o.d" -o ${OBJECTDIR}/_ext/1075961094/p2d_font.o ../src/app/p2d/p2d_font.c   
	
${OBJECTDIR}/_ext/1075961094/p2d_geo_circle.o: ../src/app/p2d/p2d_geo_circle.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1075961094" 
	@${RM} ${OBJECTDIR}/_ext/1075961094/p2d_geo_circle.o.d 
	@${RM} ${OBJECTDIR}/_ext/1075961094/p2d_geo_circle.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1075961094/p2d_geo_circle.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1075961094/p2d_geo_circle.o.d" -o ${OBJECTDIR}/_ext/1075961094/p2d_geo_circle.o ../src/app/p2d/p2d_geo_circle.c   
	
${OBJECTDIR}/_ext/1075961094/p2d_geo_line.o: ../src/app/p2d/p2d_geo_line.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1075961094" 
	@${RM} ${OBJECTDIR}/_ext/1075961094/p2d_geo_line.o.d 
	@${RM} ${OBJECTDIR}/_ext/1075961094/p2d_geo_line.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1075961094/p2d_geo_line.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1075961094/p2d_geo_line.o.d" -o ${OBJECTDIR}/_ext/1075961094/p2d_geo_line.o ../src/app/p2d/p2d_geo_line.c   
	
${OBJECTDIR}/_ext/1075961094/p2d_geo_poly.o: ../src/app/p2d/p2d_geo_poly.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1075961094" 
	@${RM} ${OBJECTDIR}/_ext/1075961094/p2d_geo_poly.o.d 
	@${RM} ${OBJECTDIR}/_ext/1075961094/p2d_geo_poly.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1075961094/p2d_geo_poly.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1075961094/p2d_geo_poly.o.d" -o ${OBJECTDIR}/_ext/1075961094/p2d_geo_poly.o ../src/app/p2d/p2d_geo_poly.c   
	
${OBJECTDIR}/_ext/1075961094/p2d_internal.o: ../src/app/p2d/p2d_internal.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1075961094" 
	@${RM} ${OBJECTDIR}/_ext/1075961094/p2d_internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/1075961094/p2d_internal.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1075961094/p2d_internal.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1075961094/p2d_internal.o.d" -o ${OBJECTDIR}/_ext/1075961094/p2d_internal.o ../src/app/p2d/p2d_internal.c   
	
${OBJECTDIR}/_ext/1075961094/p2d_lut.o: ../src/app/p2d/p2d_lut.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1075961094" 
	@${RM} ${OBJECTDIR}/_ext/1075961094/p2d_lut.o.d 
	@${RM} ${OBJECTDIR}/_ext/1075961094/p2d_lut.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1075961094/p2d_lut.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1075961094/p2d_lut.o.d" -o ${OBJECTDIR}/_ext/1075961094/p2d_lut.o ../src/app/p2d/p2d_lut.c   
	
${OBJECTDIR}/_ext/1075961094/p2d_math.o: ../src/app/p2d/p2d_math.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1075961094" 
	@${RM} ${OBJECTDIR}/_ext/1075961094/p2d_math.o.d 
	@${RM} ${OBJECTDIR}/_ext/1075961094/p2d_math.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1075961094/p2d_math.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1075961094/p2d_math.o.d" -o ${OBJECTDIR}/_ext/1075961094/p2d_math.o ../src/app/p2d/p2d_math.c   
	
${OBJECTDIR}/_ext/1075961094/p2d_sprite.o: ../src/app/p2d/p2d_sprite.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1075961094" 
	@${RM} ${OBJECTDIR}/_ext/1075961094/p2d_sprite.o.d 
	@${RM} ${OBJECTDIR}/_ext/1075961094/p2d_sprite.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1075961094/p2d_sprite.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1075961094/p2d_sprite.o.d" -o ${OBJECTDIR}/_ext/1075961094/p2d_sprite.o ../src/app/p2d/p2d_sprite.c   
	
${OBJECTDIR}/_ext/1075961094/p2d_utils.o: ../src/app/p2d/p2d_utils.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1075961094" 
	@${RM} ${OBJECTDIR}/_ext/1075961094/p2d_utils.o.d 
	@${RM} ${OBJECTDIR}/_ext/1075961094/p2d_utils.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1075961094/p2d_utils.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1075961094/p2d_utils.o.d" -o ${OBJECTDIR}/_ext/1075961094/p2d_utils.o ../src/app/p2d/p2d_utils.c   
	
${OBJECTDIR}/_ext/704330691/FontDigit_4bpp.o: ../src/app/resources/FontDigit_4bpp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/704330691" 
	@${RM} ${OBJECTDIR}/_ext/704330691/FontDigit_4bpp.o.d 
	@${RM} ${OBJECTDIR}/_ext/704330691/FontDigit_4bpp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/704330691/FontDigit_4bpp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/704330691/FontDigit_4bpp.o.d" -o ${OBJECTDIR}/_ext/704330691/FontDigit_4bpp.o ../src/app/resources/FontDigit_4bpp.c   
	
${OBJECTDIR}/_ext/704330691/FontSerif_4bpp_b.o: ../src/app/resources/FontSerif_4bpp_b.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/704330691" 
	@${RM} ${OBJECTDIR}/_ext/704330691/FontSerif_4bpp_b.o.d 
	@${RM} ${OBJECTDIR}/_ext/704330691/FontSerif_4bpp_b.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/704330691/FontSerif_4bpp_b.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/704330691/FontSerif_4bpp_b.o.d" -o ${OBJECTDIR}/_ext/704330691/FontSerif_4bpp_b.o ../src/app/resources/FontSerif_4bpp_b.c   
	
${OBJECTDIR}/_ext/704330691/FontSerif_4bpp_i.o: ../src/app/resources/FontSerif_4bpp_i.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/704330691" 
	@${RM} ${OBJECTDIR}/_ext/704330691/FontSerif_4bpp_i.o.d 
	@${RM} ${OBJECTDIR}/_ext/704330691/FontSerif_4bpp_i.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/704330691/FontSerif_4bpp_i.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/704330691/FontSerif_4bpp_i.o.d" -o ${OBJECTDIR}/_ext/704330691/FontSerif_4bpp_i.o ../src/app/resources/FontSerif_4bpp_i.c   
	
${OBJECTDIR}/_ext/704330691/FontSerif_4bpp_n.o: ../src/app/resources/FontSerif_4bpp_n.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/704330691" 
	@${RM} ${OBJECTDIR}/_ext/704330691/FontSerif_4bpp_n.o.d 
	@${RM} ${OBJECTDIR}/_ext/704330691/FontSerif_4bpp_n.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/704330691/FontSerif_4bpp_n.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/704330691/FontSerif_4bpp_n.o.d" -o ${OBJECTDIR}/_ext/704330691/FontSerif_4bpp_n.o ../src/app/resources/FontSerif_4bpp_n.c   
	
${OBJECTDIR}/_ext/704330691/FontSymbol.o: ../src/app/resources/FontSymbol.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/704330691" 
	@${RM} ${OBJECTDIR}/_ext/704330691/FontSymbol.o.d 
	@${RM} ${OBJECTDIR}/_ext/704330691/FontSymbol.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/704330691/FontSymbol.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/704330691/FontSymbol.o.d" -o ${OBJECTDIR}/_ext/704330691/FontSymbol.o ../src/app/resources/FontSymbol.c   
	
${OBJECTDIR}/_ext/704330691/sprite00.o: ../src/app/resources/sprite00.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/704330691" 
	@${RM} ${OBJECTDIR}/_ext/704330691/sprite00.o.d 
	@${RM} ${OBJECTDIR}/_ext/704330691/sprite00.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/704330691/sprite00.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/704330691/sprite00.o.d" -o ${OBJECTDIR}/_ext/704330691/sprite00.o ../src/app/resources/sprite00.c   
	
${OBJECTDIR}/_ext/704330691/sprite01.o: ../src/app/resources/sprite01.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/704330691" 
	@${RM} ${OBJECTDIR}/_ext/704330691/sprite01.o.d 
	@${RM} ${OBJECTDIR}/_ext/704330691/sprite01.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/704330691/sprite01.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/704330691/sprite01.o.d" -o ${OBJECTDIR}/_ext/704330691/sprite01.o ../src/app/resources/sprite01.c   
	
${OBJECTDIR}/_ext/704330691/sprite02.o: ../src/app/resources/sprite02.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/704330691" 
	@${RM} ${OBJECTDIR}/_ext/704330691/sprite02.o.d 
	@${RM} ${OBJECTDIR}/_ext/704330691/sprite02.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/704330691/sprite02.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/704330691/sprite02.o.d" -o ${OBJECTDIR}/_ext/704330691/sprite02.o ../src/app/resources/sprite02.c   
	
${OBJECTDIR}/_ext/704330691/sprite03.o: ../src/app/resources/sprite03.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/704330691" 
	@${RM} ${OBJECTDIR}/_ext/704330691/sprite03.o.d 
	@${RM} ${OBJECTDIR}/_ext/704330691/sprite03.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/704330691/sprite03.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/704330691/sprite03.o.d" -o ${OBJECTDIR}/_ext/704330691/sprite03.o ../src/app/resources/sprite03.c   
	
${OBJECTDIR}/_ext/704330691/sprite04.o: ../src/app/resources/sprite04.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/704330691" 
	@${RM} ${OBJECTDIR}/_ext/704330691/sprite04.o.d 
	@${RM} ${OBJECTDIR}/_ext/704330691/sprite04.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/704330691/sprite04.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/704330691/sprite04.o.d" -o ${OBJECTDIR}/_ext/704330691/sprite04.o ../src/app/resources/sprite04.c   
	
${OBJECTDIR}/_ext/1355146320/game.o: ../src/app/usr/space_shooter/game.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1355146320" 
	@${RM} ${OBJECTDIR}/_ext/1355146320/game.o.d 
	@${RM} ${OBJECTDIR}/_ext/1355146320/game.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1355146320/game.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1355146320/game.o.d" -o ${OBJECTDIR}/_ext/1355146320/game.o ../src/app/usr/space_shooter/game.c   
	
${OBJECTDIR}/_ext/1355146320/game_background.o: ../src/app/usr/space_shooter/game_background.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1355146320" 
	@${RM} ${OBJECTDIR}/_ext/1355146320/game_background.o.d 
	@${RM} ${OBJECTDIR}/_ext/1355146320/game_background.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1355146320/game_background.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1355146320/game_background.o.d" -o ${OBJECTDIR}/_ext/1355146320/game_background.o ../src/app/usr/space_shooter/game_background.c   
	
${OBJECTDIR}/_ext/1355146320/game_enemy.o: ../src/app/usr/space_shooter/game_enemy.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1355146320" 
	@${RM} ${OBJECTDIR}/_ext/1355146320/game_enemy.o.d 
	@${RM} ${OBJECTDIR}/_ext/1355146320/game_enemy.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1355146320/game_enemy.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1355146320/game_enemy.o.d" -o ${OBJECTDIR}/_ext/1355146320/game_enemy.o ../src/app/usr/space_shooter/game_enemy.c   
	
${OBJECTDIR}/_ext/1355146320/game_explosion.o: ../src/app/usr/space_shooter/game_explosion.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1355146320" 
	@${RM} ${OBJECTDIR}/_ext/1355146320/game_explosion.o.d 
	@${RM} ${OBJECTDIR}/_ext/1355146320/game_explosion.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1355146320/game_explosion.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1355146320/game_explosion.o.d" -o ${OBJECTDIR}/_ext/1355146320/game_explosion.o ../src/app/usr/space_shooter/game_explosion.c   
	
${OBJECTDIR}/_ext/1355146320/game_gui.o: ../src/app/usr/space_shooter/game_gui.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1355146320" 
	@${RM} ${OBJECTDIR}/_ext/1355146320/game_gui.o.d 
	@${RM} ${OBJECTDIR}/_ext/1355146320/game_gui.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1355146320/game_gui.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1355146320/game_gui.o.d" -o ${OBJECTDIR}/_ext/1355146320/game_gui.o ../src/app/usr/space_shooter/game_gui.c   
	
${OBJECTDIR}/_ext/1355146320/game_missile.o: ../src/app/usr/space_shooter/game_missile.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1355146320" 
	@${RM} ${OBJECTDIR}/_ext/1355146320/game_missile.o.d 
	@${RM} ${OBJECTDIR}/_ext/1355146320/game_missile.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1355146320/game_missile.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1355146320/game_missile.o.d" -o ${OBJECTDIR}/_ext/1355146320/game_missile.o ../src/app/usr/space_shooter/game_missile.c   
	
${OBJECTDIR}/_ext/1355146320/game_obj.o: ../src/app/usr/space_shooter/game_obj.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1355146320" 
	@${RM} ${OBJECTDIR}/_ext/1355146320/game_obj.o.d 
	@${RM} ${OBJECTDIR}/_ext/1355146320/game_obj.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1355146320/game_obj.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1355146320/game_obj.o.d" -o ${OBJECTDIR}/_ext/1355146320/game_obj.o ../src/app/usr/space_shooter/game_obj.c   
	
${OBJECTDIR}/_ext/1355146320/game_player.o: ../src/app/usr/space_shooter/game_player.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1355146320" 
	@${RM} ${OBJECTDIR}/_ext/1355146320/game_player.o.d 
	@${RM} ${OBJECTDIR}/_ext/1355146320/game_player.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1355146320/game_player.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1355146320/game_player.o.d" -o ${OBJECTDIR}/_ext/1355146320/game_player.o ../src/app/usr/space_shooter/game_player.c   
	
${OBJECTDIR}/_ext/1355146320/p2d_sprite16.o: ../src/app/usr/space_shooter/p2d_sprite16.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1355146320" 
	@${RM} ${OBJECTDIR}/_ext/1355146320/p2d_sprite16.o.d 
	@${RM} ${OBJECTDIR}/_ext/1355146320/p2d_sprite16.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1355146320/p2d_sprite16.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1355146320/p2d_sprite16.o.d" -o ${OBJECTDIR}/_ext/1355146320/p2d_sprite16.o ../src/app/usr/space_shooter/p2d_sprite16.c   
	
${OBJECTDIR}/_ext/1355146320/sp_background.o: ../src/app/usr/space_shooter/sp_background.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1355146320" 
	@${RM} ${OBJECTDIR}/_ext/1355146320/sp_background.o.d 
	@${RM} ${OBJECTDIR}/_ext/1355146320/sp_background.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1355146320/sp_background.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1355146320/sp_background.o.d" -o ${OBJECTDIR}/_ext/1355146320/sp_background.o ../src/app/usr/space_shooter/sp_background.c   
	
${OBJECTDIR}/_ext/1355146320/sp_explosion.o: ../src/app/usr/space_shooter/sp_explosion.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1355146320" 
	@${RM} ${OBJECTDIR}/_ext/1355146320/sp_explosion.o.d 
	@${RM} ${OBJECTDIR}/_ext/1355146320/sp_explosion.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1355146320/sp_explosion.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1355146320/sp_explosion.o.d" -o ${OBJECTDIR}/_ext/1355146320/sp_explosion.o ../src/app/usr/space_shooter/sp_explosion.c   
	
${OBJECTDIR}/_ext/1355146320/sp_gui.o: ../src/app/usr/space_shooter/sp_gui.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1355146320" 
	@${RM} ${OBJECTDIR}/_ext/1355146320/sp_gui.o.d 
	@${RM} ${OBJECTDIR}/_ext/1355146320/sp_gui.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1355146320/sp_gui.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1355146320/sp_gui.o.d" -o ${OBJECTDIR}/_ext/1355146320/sp_gui.o ../src/app/usr/space_shooter/sp_gui.c   
	
${OBJECTDIR}/_ext/1355146320/sp_missile.o: ../src/app/usr/space_shooter/sp_missile.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1355146320" 
	@${RM} ${OBJECTDIR}/_ext/1355146320/sp_missile.o.d 
	@${RM} ${OBJECTDIR}/_ext/1355146320/sp_missile.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1355146320/sp_missile.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1355146320/sp_missile.o.d" -o ${OBJECTDIR}/_ext/1355146320/sp_missile.o ../src/app/usr/space_shooter/sp_missile.c   
	
${OBJECTDIR}/_ext/1355146320/sp_ship.o: ../src/app/usr/space_shooter/sp_ship.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1355146320" 
	@${RM} ${OBJECTDIR}/_ext/1355146320/sp_ship.o.d 
	@${RM} ${OBJECTDIR}/_ext/1355146320/sp_ship.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1355146320/sp_ship.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1355146320/sp_ship.o.d" -o ${OBJECTDIR}/_ext/1355146320/sp_ship.o ../src/app/usr/space_shooter/sp_ship.c   
	
${OBJECTDIR}/_ext/968571546/plane_background.o: ../src/app/usr/tappy_plane/plane_background.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/968571546" 
	@${RM} ${OBJECTDIR}/_ext/968571546/plane_background.o.d 
	@${RM} ${OBJECTDIR}/_ext/968571546/plane_background.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/968571546/plane_background.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/968571546/plane_background.o.d" -o ${OBJECTDIR}/_ext/968571546/plane_background.o ../src/app/usr/tappy_plane/plane_background.c   
	
${OBJECTDIR}/_ext/968571546/plane_game.o: ../src/app/usr/tappy_plane/plane_game.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/968571546" 
	@${RM} ${OBJECTDIR}/_ext/968571546/plane_game.o.d 
	@${RM} ${OBJECTDIR}/_ext/968571546/plane_game.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/968571546/plane_game.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/968571546/plane_game.o.d" -o ${OBJECTDIR}/_ext/968571546/plane_game.o ../src/app/usr/tappy_plane/plane_game.c   
	
${OBJECTDIR}/_ext/968571546/sp_plane_background.o: ../src/app/usr/tappy_plane/sp_plane_background.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/968571546" 
	@${RM} ${OBJECTDIR}/_ext/968571546/sp_plane_background.o.d 
	@${RM} ${OBJECTDIR}/_ext/968571546/sp_plane_background.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/968571546/sp_plane_background.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/968571546/sp_plane_background.o.d" -o ${OBJECTDIR}/_ext/968571546/sp_plane_background.o ../src/app/usr/tappy_plane/sp_plane_background.c   
	
${OBJECTDIR}/_ext/968571546/plane_game_gui.o: ../src/app/usr/tappy_plane/plane_game_gui.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/968571546" 
	@${RM} ${OBJECTDIR}/_ext/968571546/plane_game_gui.o.d 
	@${RM} ${OBJECTDIR}/_ext/968571546/plane_game_gui.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/968571546/plane_game_gui.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/968571546/plane_game_gui.o.d" -o ${OBJECTDIR}/_ext/968571546/plane_game_gui.o ../src/app/usr/tappy_plane/plane_game_gui.c   
	
${OBJECTDIR}/_ext/968571546/plane_game_obj.o: ../src/app/usr/tappy_plane/plane_game_obj.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/968571546" 
	@${RM} ${OBJECTDIR}/_ext/968571546/plane_game_obj.o.d 
	@${RM} ${OBJECTDIR}/_ext/968571546/plane_game_obj.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/968571546/plane_game_obj.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/968571546/plane_game_obj.o.d" -o ${OBJECTDIR}/_ext/968571546/plane_game_obj.o ../src/app/usr/tappy_plane/plane_game_obj.c   
	
${OBJECTDIR}/_ext/968571546/sp_plane_obj.o: ../src/app/usr/tappy_plane/sp_plane_obj.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/968571546" 
	@${RM} ${OBJECTDIR}/_ext/968571546/sp_plane_obj.o.d 
	@${RM} ${OBJECTDIR}/_ext/968571546/sp_plane_obj.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/968571546/sp_plane_obj.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/968571546/sp_plane_obj.o.d" -o ${OBJECTDIR}/_ext/968571546/sp_plane_obj.o ../src/app/usr/tappy_plane/sp_plane_obj.c   
	
${OBJECTDIR}/_ext/968571546/plane_game_player.o: ../src/app/usr/tappy_plane/plane_game_player.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/968571546" 
	@${RM} ${OBJECTDIR}/_ext/968571546/plane_game_player.o.d 
	@${RM} ${OBJECTDIR}/_ext/968571546/plane_game_player.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/968571546/plane_game_player.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/968571546/plane_game_player.o.d" -o ${OBJECTDIR}/_ext/968571546/plane_game_player.o ../src/app/usr/tappy_plane/plane_game_player.c   
	
${OBJECTDIR}/_ext/968571546/sp_plane_ui.o: ../src/app/usr/tappy_plane/sp_plane_ui.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/968571546" 
	@${RM} ${OBJECTDIR}/_ext/968571546/sp_plane_ui.o.d 
	@${RM} ${OBJECTDIR}/_ext/968571546/sp_plane_ui.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/968571546/sp_plane_ui.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/968571546/sp_plane_ui.o.d" -o ${OBJECTDIR}/_ext/968571546/sp_plane_ui.o ../src/app/usr/tappy_plane/sp_plane_ui.c   
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c   
	
${OBJECTDIR}/_ext/1649337950/lcc_isr.o: ../src/drv/bsp/lcc_isr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1649337950" 
	@${RM} ${OBJECTDIR}/_ext/1649337950/lcc_isr.o.d 
	@${RM} ${OBJECTDIR}/_ext/1649337950/lcc_isr.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1649337950/lcc_isr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -MMD -MF "${OBJECTDIR}/_ext/1649337950/lcc_isr.o.d" -o ${OBJECTDIR}/_ext/1649337950/lcc_isr.o ../src/drv/bsp/lcc_isr.c   
	
${OBJECTDIR}/_ext/1649337950/touchscreen.o: ../src/drv/bsp/touchscreen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1649337950" 
	@${RM} ${OBJECTDIR}/_ext/1649337950/touchscreen.o.d 
	@${RM} ${OBJECTDIR}/_ext/1649337950/touchscreen.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1649337950/touchscreen.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -MMD -MF "${OBJECTDIR}/_ext/1649337950/touchscreen.o.d" -o ${OBJECTDIR}/_ext/1649337950/touchscreen.o ../src/drv/bsp/touchscreen.c   
	
${OBJECTDIR}/_ext/1649337950/lcc_io.o: ../src/drv/bsp/lcc_io.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1649337950" 
	@${RM} ${OBJECTDIR}/_ext/1649337950/lcc_io.o.d 
	@${RM} ${OBJECTDIR}/_ext/1649337950/lcc_io.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1649337950/lcc_io.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/1649337950/lcc_io.o.d" -o ${OBJECTDIR}/_ext/1649337950/lcc_io.o ../src/drv/bsp/lcc_io.c   
	
${OBJECTDIR}/_ext/362436977/configuration_bits.o: ../src/drv/uc/configuration_bits.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/362436977" 
	@${RM} ${OBJECTDIR}/_ext/362436977/configuration_bits.o.d 
	@${RM} ${OBJECTDIR}/_ext/362436977/configuration_bits.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/362436977/configuration_bits.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/362436977/configuration_bits.o.d" -o ${OBJECTDIR}/_ext/362436977/configuration_bits.o ../src/drv/uc/configuration_bits.c   
	
${OBJECTDIR}/_ext/362436977/tmr.o: ../src/drv/uc/tmr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/362436977" 
	@${RM} ${OBJECTDIR}/_ext/362436977/tmr.o.d 
	@${RM} ${OBJECTDIR}/_ext/362436977/tmr.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/362436977/tmr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/362436977/tmr.o.d" -o ${OBJECTDIR}/_ext/362436977/tmr.o ../src/drv/uc/tmr.c   
	
${OBJECTDIR}/_ext/362436977/uc.o: ../src/drv/uc/uc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/362436977" 
	@${RM} ${OBJECTDIR}/_ext/362436977/uc.o.d 
	@${RM} ${OBJECTDIR}/_ext/362436977/uc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/362436977/uc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/362436977/uc.o.d" -o ${OBJECTDIR}/_ext/362436977/uc.o ../src/drv/uc/uc.c   
	
${OBJECTDIR}/_ext/362436977/i2c_sw.o: ../src/drv/uc/i2c_sw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/362436977" 
	@${RM} ${OBJECTDIR}/_ext/362436977/i2c_sw.o.d 
	@${RM} ${OBJECTDIR}/_ext/362436977/i2c_sw.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/362436977/i2c_sw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -funroll-loops -DINLINE_API="static inline" -DINLINE="static inline" -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -MMD -MF "${OBJECTDIR}/_ext/362436977/i2c_sw.o.d" -o ${OBJECTDIR}/_ext/362436977/i2c_sw.o ../src/drv/uc/i2c_sw.c   
	
${OBJECTDIR}/_ext/659868371/ticks.o: ../src/sys/ticks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/659868371" 
	@${RM} ${OBJECTDIR}/_ext/659868371/ticks.o.d 
	@${RM} ${OBJECTDIR}/_ext/659868371/ticks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/659868371/ticks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/659868371/ticks.o.d" -o ${OBJECTDIR}/_ext/659868371/ticks.o ../src/sys/ticks.c   
	
${OBJECTDIR}/_ext/659868371/timer.o: ../src/sys/timer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/659868371" 
	@${RM} ${OBJECTDIR}/_ext/659868371/timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/659868371/timer.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/659868371/timer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/659868371/timer.o.d" -o ${OBJECTDIR}/_ext/659868371/timer.o ../src/sys/timer.c   
	
${OBJECTDIR}/_ext/659868371/delay.o: ../src/sys/delay.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/659868371" 
	@${RM} ${OBJECTDIR}/_ext/659868371/delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/659868371/delay.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/659868371/delay.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/659868371/delay.o.d" -o ${OBJECTDIR}/_ext/659868371/delay.o ../src/sys/delay.c   
	
${OBJECTDIR}/_ext/659868371/rtc.o: ../src/sys/rtc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/659868371" 
	@${RM} ${OBJECTDIR}/_ext/659868371/rtc.o.d 
	@${RM} ${OBJECTDIR}/_ext/659868371/rtc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/659868371/rtc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/659868371/rtc.o.d" -o ${OBJECTDIR}/_ext/659868371/rtc.o ../src/sys/rtc.c   
	
${OBJECTDIR}/_ext/659868371/salloc.o: ../src/sys/salloc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/659868371" 
	@${RM} ${OBJECTDIR}/_ext/659868371/salloc.o.d 
	@${RM} ${OBJECTDIR}/_ext/659868371/salloc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/659868371/salloc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -O1 -funroll-loops -I"../../../../../framework" -I"../src" -I"../../../../../" -I"../src/drv/bsp" -I"../src/drv/uc" -I"../src/sys" -I"../src/app/gui" -I"../src/app/gui_demo" -I"../src/app/p2d" -I"../src/app/resources" -I"../src/app/gui/widgets" -I"../src/app/gui/macro/file_browser" -I"../src/app/gui/macro/keyboard" -I"../src/app/gui/macro/list" -I"../src/app/gui/macro/popup" -I"../src/app/usr/space_shooter" -I"../src/app/usr/tappy_plane" -MMD -MF "${OBJECTDIR}/_ext/659868371/salloc.o.d" -o ${OBJECTDIR}/_ext/659868371/salloc.o ../src/sys/salloc.c   
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/herptronix.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../../bin/framework/peripheral/PIC32MZ2048ECH144_peripherals.a  
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/herptronix.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\..\..\bin\framework\peripheral\PIC32MZ2048ECH144_peripherals.a       -mreserve=data@0x0:0x27F   -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,--defsym=_min_heap_size=3000,--defsym=_min_stack_size=1024,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/herptronix.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../../../../../bin/framework/peripheral/PIC32MZ2048ECH144_peripherals.a 
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/herptronix.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\..\..\..\..\bin\framework\peripheral\PIC32MZ2048ECH144_peripherals.a      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=3000,--defsym=_min_stack_size=1024,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/herptronix.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/pic32mzsk_meb2_wqvga
	${RM} -r dist/pic32mzsk_meb2_wqvga

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
