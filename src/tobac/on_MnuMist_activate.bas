' ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
'< callback modul generated by utility                         GladeToBac V3.0 >
'< callback-Modul erzeugt von                                                  >
'< Generated at / Generierung am                             2011-05-14, 13:44 >
' -----------------------------------------------------------------------------
'< Main/Haupt Program name: GladeToBac.bas                                     >
'<  Email:  Thomas[ dot ]Freiherr{ at }gmx{ dot }net                           >
'<    WWW:  www.freebasic-portal.de                                            >
' -----------------------------------------------------------------------------
'< callback SUB/FUNCTION                                          insert code! >
'< Ereignis Unterprogramm/Funktion                        Quelltext einfuegen! >
' vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv

SUB on_MnuMist_activate CDECL ALIAS "on_MnuMist_activate" ( _
  BYVAL menuitem AS GtkMenuItem PTR, _
  BYVAL user_data AS gpointer) EXPORT

_Ui_.Ausmisten()

END SUB
