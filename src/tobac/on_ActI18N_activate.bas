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

SUB on_ActI18N_activate CDECL ALIAS "on_ActI18N_activate" ( _
  BYVAL action AS GtkAction PTR, _
  BYVAL user_data AS gpointer) EXPORT

_UI_.GenI18N()

END SUB
