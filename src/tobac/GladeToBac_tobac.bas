' ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
'< _tobac.bas modul generated by utility                     GladeToBac V3.2.2 >
'< Modul _tobac.bas erzeugt von                                                >
'< Generated at / Generierung am                             2019-06-10, 12:34 >
' -----------------------------------------------------------------------------
'< Main/Haupt Program name: GladeToBac.bas                                     >
'< Author:  TJF                                                                >
'<  Email:  Thomas[ dot ]Freiherr{ at }gmx{ dot }net                           >
'<    WWW:  github.com/DTJF/GladeToBac                                         >
'<    (C):  GNU General Public License v3                                      >
' -----------------------------------------------------------------------------
'< declare names, signal handlers, load GUI-XML                   do not edit! >
'< deklariert Namen, Signale, laedt GUI-XML                  nicht veraendern! >
' vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv

SCOPE
  VAR er = gtk_check_version_(3, 10, 0)
  IF er THEN
    ?"Fehler/Error (GTK-Version):"
    ?*er
    END 1
  END IF
END SCOPE

TYPE GUIData
  AS GtkBuilder PTR XML
  AS GObject PTR _
  WinMain, ComboLiSto, MnuSave, MnuMist, MnuBas, MnuI18N, MnuPro, TobBas,  _
  TobI18N, NotMain, EntSyn, ComLiz, EntVer, EntWeb, EntEmail, EntName,  _
  EntTyNa, CheI18N, CheTobac, LabNeuPro, CheGlaIn, EntGtkVer, LabTob, CheReadMe,  _
  CheMake, CheGeany, CheFbIde, CheFbEdit, CheJelly, CheWin, CheRc, TeVMessage,  _
  WinAbout, aboutdialog_vbox1, aboutdialog_action_area1
END TYPE
DIM SHARED AS GUIData GUI

GUI.XML = gtk_builder_new()

SCOPE
DIM AS GError PTR meld
IF 0 = gtk_builder_add_from_file(GUI.XML, "GladeToBac.ui", @meld) THEN
  WITH *meld
    ?"Fehler/Error (GTK-Builder):"
    ?*.message
  END WITH
  g_error_free(meld)
  END 2
END IF
END SCOPE

WITH GUI
  .WinMain = gtk_builder_get_object(.XML, "WinMain")
  .ComboLiSto = gtk_builder_get_object(.XML, "ComboLiSto")
  .MnuSave = gtk_builder_get_object(.XML, "MnuSave")
  .MnuMist = gtk_builder_get_object(.XML, "MnuMist")
  .MnuBas = gtk_builder_get_object(.XML, "MnuBas")
  .MnuI18N = gtk_builder_get_object(.XML, "MnuI18N")
  .MnuPro = gtk_builder_get_object(.XML, "MnuPro")
  .TobBas = gtk_builder_get_object(.XML, "TobBas")
  .TobI18N = gtk_builder_get_object(.XML, "TobI18N")
  .NotMain = gtk_builder_get_object(.XML, "NotMain")
  .EntSyn = gtk_builder_get_object(.XML, "EntSyn")
  .ComLiz = gtk_builder_get_object(.XML, "ComLiz")
  .EntVer = gtk_builder_get_object(.XML, "EntVer")
  .EntWeb = gtk_builder_get_object(.XML, "EntWeb")
  .EntEmail = gtk_builder_get_object(.XML, "EntEmail")
  .EntName = gtk_builder_get_object(.XML, "EntName")
  .EntTyNa = gtk_builder_get_object(.XML, "EntTyNa")
  .CheI18N = gtk_builder_get_object(.XML, "CheI18N")
  .CheTobac = gtk_builder_get_object(.XML, "CheTobac")
  .LabNeuPro = gtk_builder_get_object(.XML, "LabNeuPro")
  .CheGlaIn = gtk_builder_get_object(.XML, "CheGlaIn")
  .EntGtkVer = gtk_builder_get_object(.XML, "EntGtkVer")
  .LabTob = gtk_builder_get_object(.XML, "LabTob")
  .CheReadMe = gtk_builder_get_object(.XML, "CheReadMe")
  .CheMake = gtk_builder_get_object(.XML, "CheMake")
  .CheGeany = gtk_builder_get_object(.XML, "CheGeany")
  .CheFbIde = gtk_builder_get_object(.XML, "CheFbIde")
  .CheFbEdit = gtk_builder_get_object(.XML, "CheFbEdit")
  .CheJelly = gtk_builder_get_object(.XML, "CheJelly")
  .CheWin = gtk_builder_get_object(.XML, "CheWin")
  .CheRc = gtk_builder_get_object(.XML, "CheRc")
  .TeVMessage = gtk_builder_get_object(.XML, "TeVMessage")
  .WinAbout = gtk_builder_get_object(.XML, "WinAbout")
  .aboutdialog_vbox1 = gtk_builder_get_object(.XML, "aboutdialog_vbox1")
  .aboutdialog_action_area1 = gtk_builder_get_object(.XML, "aboutdialog_action_area1")
END WITH

#INCLUDE "on_ActGenerate_activate.bas"
#INCLUDE "on_ActI18N_activate.bas"
#INCLUDE "on_ActLoad_activate.bas"
#INCLUDE "on_win_main_configure_event.bas"
#INCLUDE "on_MnuSaPa_activate.bas"
#INCLUDE "on_MnuMist_activate.bas"
#INCLUDE "on_MnuPro_activate.bas"
#INCLUDE "on_MnuHelp_activate.bas"
#INCLUDE "on_MnuInfo_activate.bas"
#INCLUDE "on_CheWin_toggled.bas"
