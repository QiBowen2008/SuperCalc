VERSION 5.00
Begin VB.Form frmSSanjiaoxing2 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "��֪���������������"
   ClientHeight    =   4635
   ClientLeft      =   30
   ClientTop       =   375
   ClientWidth     =   6555
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   4635
   ScaleWidth      =   6555
   StartUpPosition =   3  '����ȱʡ
   Begin VB.Frame Frame3 
      Caption         =   "���"
      Height          =   855
      Left            =   2520
      TabIndex        =   15
      Top             =   2880
      Width           =   1815
      Begin VB.ComboBox Combo8 
         Height          =   300
         Left            =   240
         TabIndex        =   16
         Top             =   240
         Width           =   1335
      End
   End
   Begin VB.CommandButton Command2 
      Caption         =   "��λ"
      Height          =   360
      Left            =   3840
      TabIndex        =   14
      Top             =   3960
      Width           =   990
   End
   Begin VB.ComboBox Combo6 
      Height          =   300
      Left            =   2760
      TabIndex        =   12
      Top             =   1560
      Width           =   1335
   End
   Begin VB.ComboBox Combo4 
      Height          =   300
      ItemData        =   "SSanjiaoxing2.frx":0000
      Left            =   4680
      List            =   "SSanjiaoxing2.frx":0013
      TabIndex        =   10
      Top             =   3120
      Width           =   1335
   End
   Begin VB.ComboBox Combo3 
      Height          =   300
      ItemData        =   "SSanjiaoxing2.frx":0047
      Left            =   4680
      List            =   "SSanjiaoxing2.frx":005A
      TabIndex        =   9
      Top             =   2280
      Width           =   1335
   End
   Begin VB.ComboBox Combo2 
      Height          =   300
      ItemData        =   "SSanjiaoxing2.frx":0071
      Left            =   4680
      List            =   "SSanjiaoxing2.frx":0084
      TabIndex        =   8
      Top             =   1560
      Width           =   1335
   End
   Begin VB.Frame Frame2 
      Caption         =   "��λ"
      Height          =   3375
      Left            =   4560
      TabIndex        =   6
      Top             =   360
      Width           =   1695
      Begin VB.ComboBox Combo1 
         Height          =   300
         ItemData        =   "SSanjiaoxing2.frx":009B
         Left            =   120
         List            =   "SSanjiaoxing2.frx":00AE
         TabIndex        =   7
         Top             =   360
         Width           =   1335
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "����"
      Height          =   2415
      Left            =   2640
      TabIndex        =   5
      Top             =   360
      Width           =   1695
      Begin VB.ComboBox Combo7 
         Height          =   300
         Left            =   120
         TabIndex        =   13
         Top             =   1920
         Width           =   1335
      End
      Begin VB.ComboBox Combo5 
         Height          =   300
         Left            =   120
         TabIndex        =   11
         Top             =   360
         Width           =   1335
      End
   End
   Begin VB.CommandButton Command1 
      Caption         =   "��ֵ"
      Height          =   360
      Left            =   1560
      TabIndex        =   3
      Top             =   3960
      Width           =   990
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "���������"
      BeginProperty Font 
         Name            =   "����"
         Size            =   12
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Left            =   480
      TabIndex        =   4
      Top             =   3240
      Width           =   1665
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "�����ߵĳ���c"
      BeginProperty Font 
         Name            =   "����"
         Size            =   12
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Left            =   480
      TabIndex        =   2
      Top             =   2400
      Width           =   1665
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "��һ�ߵĳ���c"
      BeginProperty Font 
         Name            =   "����"
         Size            =   12
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Left            =   480
      TabIndex        =   1
      Top             =   720
      Width           =   1665
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "�ڶ��ߵĳ���b"
      BeginProperty Font 
         Name            =   "����"
         Size            =   12
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Left            =   480
      TabIndex        =   0
      Top             =   1560
      Width           =   1665
   End
End
Attribute VB_Name = "frmSSanjiaoxing2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Dim a As String
Dim b As String
Dim c As String
Dim d As String

Dim e As Double
Dim f As Double

Dim g As Double
Dim h As Double

Dim i As Double
Dim j As Double

Dim k As Double
Dim l As Double


End Sub

Private Sub Form_Load()
    Combo1.Text = "ƽ������"
    Combo2.Text = "cm"
    Combo3.Text = "��������"
End Sub
