VERSION 5.00
Begin VB.Form frmSet 
   BackColor       =   &H00F2DED5&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "����"
   ClientHeight    =   4920
   ClientLeft      =   8430
   ClientTop       =   17535
   ClientWidth     =   5235
   BeginProperty Font 
      Name            =   "Tahoma"
      Size            =   8.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   4920
   ScaleWidth      =   5235
   StartUpPosition =   3  '����ȱʡ
   Begin VB.ComboBox Combo4 
      Height          =   315
      ItemData        =   "frmSet.frx":0000
      Left            =   3120
      List            =   "frmSet.frx":000D
      Style           =   2  'Dropdown List
      TabIndex        =   15
      Top             =   3480
      Width           =   1095
   End
   Begin VB.ComboBox Combo5 
      Height          =   315
      ItemData        =   "frmSet.frx":0025
      Left            =   2760
      List            =   "frmSet.frx":002F
      Style           =   2  'Dropdown List
      TabIndex        =   8
      Top             =   2520
      Width           =   1335
   End
   Begin VB.Frame Frame1 
      Caption         =   "��ʼ����λ"
      Height          =   2775
      Left            =   720
      TabIndex        =   0
      Top             =   240
      Width           =   3855
      Begin VB.ComboBox Combo9 
         Height          =   315
         ItemData        =   "frmSet.frx":003E
         Left            =   2040
         List            =   "frmSet.frx":004B
         Style           =   2  'Dropdown List
         TabIndex        =   10
         Top             =   1440
         Width           =   1335
      End
      Begin VB.ComboBox Combo8 
         Height          =   315
         ItemData        =   "frmSet.frx":005D
         Left            =   2040
         List            =   "frmSet.frx":006A
         Style           =   2  'Dropdown List
         TabIndex        =   9
         Top             =   600
         Width           =   1335
      End
      Begin VB.ComboBox Combo3 
         Height          =   315
         ItemData        =   "frmSet.frx":007C
         Left            =   240
         List            =   "frmSet.frx":008C
         Style           =   2  'Dropdown List
         TabIndex        =   7
         Top             =   2280
         Width           =   1335
      End
      Begin VB.ComboBox Combo2 
         Height          =   315
         ItemData        =   "frmSet.frx":00A7
         Left            =   240
         List            =   "frmSet.frx":00B7
         Style           =   2  'Dropdown List
         TabIndex        =   5
         Top             =   1440
         Width           =   1335
      End
      Begin VB.ComboBox Combo1 
         Height          =   315
         ItemData        =   "frmSet.frx":00D2
         Left            =   240
         List            =   "frmSet.frx":00E2
         TabIndex        =   1
         Text            =   "Combo1"
         Top             =   600
         Width           =   1335
      End
      Begin VB.Label Label7 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Ĭ�ϵ��赥λ"
         Height          =   195
         Index           =   3
         Left            =   2040
         TabIndex        =   13
         Top             =   240
         Width           =   1080
      End
      Begin VB.Label Label7 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Ĭ��ѹǿ��λ"
         Height          =   195
         Index           =   2
         Left            =   2040
         TabIndex        =   12
         Top             =   1080
         Width           =   1080
      End
      Begin VB.Label Label6 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Ĭ���ٶȵ�λ"
         Height          =   195
         Left            =   2040
         TabIndex        =   11
         Top             =   1920
         Width           =   1080
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Ĭ�������λ"
         Height          =   195
         Left            =   240
         TabIndex        =   6
         Top             =   1920
         Width           =   1080
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Ĭ�������λ"
         Height          =   195
         Left            =   240
         TabIndex        =   4
         Top             =   1080
         Width           =   1080
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Ĭ�ϳ��ȵ�λ"
         Height          =   195
         Left            =   240
         TabIndex        =   2
         Top             =   240
         Width           =   1080
      End
   End
   Begin VB.CommandButton Command1 
      Caption         =   "��������"
      Height          =   465
      Left            =   2040
      TabIndex        =   3
      ToolTipText     =   "�������ã������������Ч"
      Top             =   3960
      Width           =   1110
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "�ر�ʱ�Զ����ص�����"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   10.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   840
      TabIndex        =   14
      Top             =   3480
      Width           =   2340
   End
End
Attribute VB_Name = "frmSet"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
'д�����ݣ�
Private Sub Command1_Click()
    Call STRYMINI("startupdanwei", "changdudanwei", Combo1.Text)
    Call STRYMINI("startupdanwei", "mianjidanwei", Combo2.Text)
    Call STRYMINI("startupdanwei", "tijidanwei", Combo3.Text)
    Call STRYMINI("startupdanwei", "sududanwei", Combo5.Text)
    Call STRYMINI("startupdanwei", "dianzudanwei", Combo8.Text)
    Call STRYMINI("startupdanwei", "yaqiangdanwei", Combo9.Text)
    Call STRYMINI("startupdanwei", "tuopan", Combo4.Text)
    titletuopan = Combo4.Text
    Unload Me
    frmCalc.Refresh
End Sub

Private Sub Form_Load()
    Combo1.Text = titlechangdudanwei
    Combo2.Text = titlemianjidanwei
    Combo3.Text = titletijidanwei
    Combo5.Text = titlesududanwei
    Combo8.Text = titledianzudanwei
    Combo9.Text = titleyaqiangdanwei
    Combo4.Text = titletuopan
End Sub
