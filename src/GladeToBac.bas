' ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
'< main program generated by utility                           GladeToBac V3.0 >
'< Hauptprogramm erzeugt von                                                   >
'< Generated at / Generierung am                             2011-05-14, 14:15 >
' -----------------------------------------------------------------------------
'< Program info:                                                               >
CONST PROJ_NAME = "GladeToBac" '                                               >
CONST PROJ_DESC = "Glade to Freebasic code sketcher" '                         >
CONST PROJ_VERS = "3.2.2" '                                                    >
CONST PROJ_YEAR = "2020" '                                                     >
CONST PROJ_AUTH = "TJF" '                                                      >
CONST PROJ_MAIL = "Thomas[ dot ]Freiherr{ at }gmx{ dot }net" '                 >
CONST PROJ_WEBS = "github.com/DTJF/GladeToBac" '                               >
CONST PROJ_LICE = "GNU General Public License v3" '                            >
'<                                                                             >
'< Description / Beschreibung:                                                 >
'<                                                                             >
'<                                                                             >
'< License / Lizenz:                                                           >
'<                                                                             >
'< This program is free software: you can redistribute it and/or modify        >
'< it under the terms of the GNU General Public License as published by        >
'< the Free Software Foundation, either version 3 of the License, or           >
'< (at your option) any later version.                                         >
'<                                                                             >
'< This program is distributed in the hope that it will be useful, but         >
'< WITHOUT ANY WARRANTY; without even the implied warranty of                  >
'< MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU           >
'< General Public License for more details.                                    >
'<                                                                             >
'< You should have received a copy of the GNU General Public License along     >
'< with this program.  If not, see <http://www.gnu.org/licenses/>.             >
'<                                                                             >
' -----------------------------------------------------------------------------
'< Please prefer GNU GENERAL PUBLIC LICENSE to support open software.          >
'< For more information please visit:                       http://www.fsf.org >
'<                                                                             >
'< Bitte bevorzugen Sie die GNU GENERAL PUBLIC LICENSE und                     >
'< unterstuetzen Sie mit Ihrem Programm die freie Software                     >
'< Mehr Informationen finden Sie unter:                     http://www.fsf.org >
' -----------------------------------------------------------------------------
'<  GladeToBac:                    general init / Allgemeine Initialisierungen >
    #DEFINE __USE_GTK3__ '                                                     >
    #INCLUDE ONCE "gtk/gtk.bi" '                GTK3 library / GTK3 Bibliothek >
    '#INCLUDE ONCE "Gir/Gtk-3.0.bi" '            GTK3 library / GTK3 Bibliothek >
    gtk_init(@__FB_ARGC__, @__FB_ARGV__) '             start GKT / GTK starten >
    #INCLUDE ONCE "libintl.bi" '                          load lib / Lib laden >
    bindtextdomain(PROJ_NAME, EXEPATH & "/locale") '               path / Pfad >
    bind_textdomain_codeset(PROJ_NAME, "UTF-8") '   set encoding / Zeichensatz >
    textdomain(PROJ_NAME) '                               Filename / Dateiname >
'<  GladeToBac:                                          end block / Blockende >
' vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv

#INCLUDE ONCE "vbcompat.bi"
#IFDEF __FB_WIN32__
  '#LIBPATH "C:/opt/Gtk+" ' place path to your GTK-dev here
  #LIBPATH "C:/opt/GTK-3.10.0/lib"
  #DEFINE SLASH "\"
  #DEFINE NL !"\r\n"
  #DEFINE ORDNER "C:\project\"
  #DEFINE EXAMPLE "C:\programs\" & PROJ_NAME & "\bin\" & PROJ_NAME & " "
#ELSEIF DEFINED(__FB_UNIX__)
  #DEFINE SLASH "/"
  #DEFINE NL !"\n"
  #DEFINE ORDNER "~/project/"
  #DEFINE EXAMPLE "/home/user/" & PROJ_NAME & "/" & PROJ_NAME & " "
#ELSE
  #ERROR platform not supported / nicht unterstuetzt!
#ENDIF

#DEFINE HELP_TEXT _
  *__("Short help (for details see '") & _
  PROJ_NAME & "_" & *__("ReadMe") & ".txt')" & NL & NL & _
  *__("Synopsis: ") & PROJ_NAME & " >" & SLASH & _
    *__("FILE") & "<.[ui|glade] " & *__("-OPTIONS") & NL & _
  *__("  Example: ") & EXAMPLE & ORDNER & "MYFILE.ui -n -I -p -t" & NL & _
  *__(" Executes: ") & "MYFILE.ui " & *__("in folder") & " " & ORDNER & NL & _
  *__("  Options: ") & *__("confirm sketching, external GUI-file,") & NL & _
  *__("           create .pot file, use tobac folder") & NL & NL & _
  PROJ_NAME & " " & *__("runs through the steps") & NL & _
  *__("1.) load GUI-XML-file and analyse") & NL & _
  *__("2.) write .bas sources (switched by -n or -N)") & NL & _
  *__("3.) create .pot file (switched by -x)") & NL & _
  *__("4.) delete deprecated files (switched by -a or -A)") & NL & NL & _
  *__("If no regular file is specified the GUI will start.") & NL & NL & _
  *__("Options (use minus all times, separated by space):") & NL & _
  *__("-h help (print this text and end)") & NL & _
  *__("-v version: show version info and end") & NL & NL & _
  *__("-a run clean-up funktion, confirm deleting") & NL & _
  *__("-A run clean-up funktion, delete without confirmation") & NL & _
  *__("-C GUI block: do not start GUI on error") & NL & _
  *__("-g include GUI-XML-file in code (for final version)") & NL & _
  *__("-G do not include GUI-XML-file in code") & NL & _
  *__("-i I18N support in main file (*.bas)") & NL & _
  *__("-I no I18N support in main file (*.bas)") & NL & _
  *__("-n NoAction: analyse file, confirm .bas code sketching") & NL & _
  *__("-N NoAction: analyse file, no .bas code sketching at all") & NL & _
  *__("-t tobac folder: generate and use it") & NL & _
  *__("-T files in current folder (no use of tobac-folder)") & NL & _
  *__("-x run xgettext to I18N: create .pot file (in current folder)") & NL & _
  *__("Values form .ini-file are used (overwrite by -g-G-i-I-t-T).") & NL & NL & _
  *__("To use aditional functions => start with GUI.") & NL & NL

#INCLUDE "GladeToBac.bi"

CHDIR EXEPATH
' ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
'<  GladeToBac:                                 load GTK stuff / GTK Anbindung >
    #INCLUDE "tobac/GladeToBac_tobac.bas" '             Signale + GUI-XML >
'<  GladeToBac:                                          end block / Blockende >
' vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv

#INCLUDE "GladeToBac_RepData.bas"
#INCLUDE "GladeToBac_CodeBas.bas"
#INCLUDE "GladeToBac_CodeProj.bas"
#INCLUDE "GladeToBac_Signals.bas"
#INCLUDE "GladeToBac_Xml.bas"
#INCLUDE "GladeToBac_UI.bas"

IF _UI_.Init() THEN

' ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
'<  GladeToBac:          run GTK main, then end / GTK Hauptschleife, dann Ende >
    gtk_builder_connect_signals(GUI.XML, 0) '                 Signale anbinden >
    g_object_unref(GUI.XML) '                   dereference / Referenz abbauen >
    gtk_widget_show_all(GTK_WIDGET(GUI.WinMain)) '     Hauptfenster darstellen >
    gtk_main() '                                     main loop / Hauptschleife >
'<  GladeToBac:                                          end block / Blockende >
' vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv

END IF

COLOR LOWORD(_UI_.Farb), HIWORD(_UI_.Farb)

END 0 ' finish with return code 0 / Ende mit Returncode 0
