#tag Window
Begin Window Window1
   Backdrop        =   0
   BackgroundColor =   &cFFFFFF00
   Composite       =   False
   DefaultLocation =   0
   FullScreen      =   False
   HasBackgroundColor=   False
   HasCloseButton  =   True
   HasFullScreenButton=   False
   HasMaximizeButton=   True
   HasMinimizeButton=   True
   Height          =   400
   ImplicitInstance=   True
   MacProcID       =   0
   MaximumHeight   =   32000
   MaximumWidth    =   32000
   MenuBar         =   992231423
   MenuBarVisible  =   True
   MinimumHeight   =   64
   MinimumWidth    =   64
   Resizeable      =   True
   Title           =   "Untitled"
   Type            =   0
   Visible         =   True
   Width           =   600
   Begin PushButton Button
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "Button"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   0
      InitialParent   =   ""
      Italic          =   False
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   -60
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  For i As Integer = 1 To 3
		    Dim newButton As New Button
		    If i = 1 Then
		      newButton.Top = 20
		      newButton.Left = 20
		    Else
		      newButton.Top = Button(i-1).Top + Button(i-1).Height + 12
		      newButton.Left = Button(i-1).Left
		    End If
		  Next
		End Sub
	#tag EndEvent


#tag EndWindowCode

#tag Events Button
	#tag Event
		Sub Action(index as Integer)
		  Select case index
		  case 0
		    MessageBox("Invisible button.")
		  case 1
		    MessageBox("Button 1")
		  case 2
		    MessageBox("Button 2")
		  case 3
		    MessageBox("Button 3")
		  End Select
		  
		  MessageBox("You selected Button " + index.ToString + ".")
		End Sub
	#tag EndEvent
#tag EndEvents
