***********************************************************;
*  Exploring Automatic SAS Libraries                      *;
***********************************************************;
*  Syntax                                                 *;
*                                                         *;
*    Work library - personal temporary tables             *;
*    Sashelp library - sample tables                      *;
*                                                         *;
*    WORK is the default library                          *;
*    **equivalent statements**                            *;
*    proc contents data=work.class;                       *;
*    proc contents data=class;                            *;
***********************************************************;

***********************************************************;
*  Demo                                                   *;
*  1) Run the demo program and use the navigation pane to *;
*     examine the contents of the Work and Out libraries. *;
*  2) Which table is in the Work library? Which table is  *;
*     in the Out library?                                 *;
*  3) Restart SAS.                                        *;
*     * Enterprise Guide: In the Servers list, select     *;
*       Local and click Disconnect. Click Yes in the      *;
*       confirmation window. Expand Local to start SAS    *;
*       again, and then expand Libraries.                 *;
*     * SAS Studio: Select More application options ->    *;
*       Reset SAS Session.                                *;
*  4) Discuss the following questions:                    *;
*     a) What is in the Work library?                     *;
*     b) Why are the out and pg1 libraries not available? *;
*     c) Is class_copy2 saved permanently?                *;
*     d) What must be done to re-establish the out        *;
*        library?                                         *;
*  5) To re-establish the pg1 library, open and run the   *;
*     libname.sas program saved previously in the main    *;
*     course files folder.                                *;
***********************************************************;

*Modify the path if necessary;
libname out "/folders/myshortcuts/EPG194/output";

data class_copy1 out.class_copy2;
	set sashelp.class;
run;
