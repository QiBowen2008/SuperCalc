VERSION 5.00
Begin VB.Form frmCYuanxing 
   BackColor       =   &H00F2DED5&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "��Բ���ܳ�"
   ClientHeight    =   3375
   ClientLeft      =   405
   ClientTop       =   1050
   ClientWidth     =   5745
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
   ScaleHeight     =   3375
   ScaleWidth      =   5745
   StartUpPosition =   3  '����ȱʡ
   Begin VB.ComboBox Combo2 
      Height          =   315
      ItemData        =   "CYuanxing.frx":0000
      Left            =   3840
      List            =   "CYuanxing.frx":0013
      Style           =   2  'Dropdown List
      TabIndex        =   5
      Top             =   1560
      Width           =   1095
   End
   Begin VB.ComboBox Combo4 
      Height          =   315
      ItemData        =   "CYuanxing.frx":002B
      Left            =   1200
      List            =   "CYuanxing.frx":002D
      TabIndex        =   4
      Top             =   1560
      Width           =   2295
   End
   Begin VB.ComboBox Combo3 
      Height          =   315
      ItemData        =   "CYuanxing.frx":002F
      Left            =   1200
      List            =   "CYuanxing.frx":0031
      TabIndex        =   3
      Top             =   720
      Width           =   2295
   End
   Begin VB.ComboBox Combo1 
      Height          =   315
      ItemData        =   "CYuanxing.frx":0033
      Left            =   3840
      List            =   "CYuanxing.frx":0046
      Style           =   2  'Dropdown List
      TabIndex        =   2
      Top             =   720
      Width           =   1095
   End
   Begin VB.CommandButton Command1 
      Caption         =   "����"
      Height          =   360
      Left            =   1200
      TabIndex        =   1
      ToolTipText     =   "����"
      Top             =   2400
      Width           =   990
   End
   Begin VB.CommandButton Command2 
      Caption         =   "��λ"
      Height          =   360
      Left            =   3360
      TabIndex        =   0
      Top             =   2400
      Width           =   990
   End
   Begin VB.Frame Frame1 
      Caption         =   "����"
      Height          =   1695
      Left            =   1080
      TabIndex        =   7
      Top             =   480
      Width           =   2535
   End
   Begin VB.Frame Frame2 
      Caption         =   "��λ"
      Height          =   1695
      Left            =   3720
      TabIndex        =   6
      Top             =   480
      Width           =   1455
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "�ܳ�"
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
      Left            =   360
      TabIndex        =   9
      Top             =   1560
      Width           =   510
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "ֱ��"
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
      Left            =   360
      TabIndex        =   8
      Top             =   720
      Width           =   510
   End
End
Attribute VB_Name = "frmCYuanxing"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
    Dim a As Double, b As Double
    Dim c As Double, d As Double
    Dim h As Double, r As Double, s As Double
    Dim k As String, l As String
    k = Combo1.Text
    l = Combo2.Text
    a = Val(Combo3.Text)
    c = Val(Combo4.Text)
    If k = "cm" Then
        b = CMtoKM(a)
    ElseIf k = "dm" Then
        b = DMtoKM(a)
    ElseIf k = "mm" Then
        b = MMtoKM(a)
    ElseIf k = "m " Then
        b = MtoKM(a)
    ElseIf k = "km" Then
        b = a
    End If
    If l = "cm" Then
        d = CMtoKM(c)
    ElseIf l = "dm" Then
        d = DMtoKM(c)
    ElseIf l = "mm" Then
        d = MMtoKM(c)
    ElseIf l = "m " Then
        d = MtoKM(c)
    ElseIf l = "km" Then
        d = c
    End If
    If Combo3.Text = "" Then
        r = d / 3.14
        If k = "cm" Then
            h = KMtoCM(r)
        ElseIf k = "dm" Then
            h = KMtoDM(r)
        ElseIf k = "mm" Then
            h = KMtoMM(r)
        ElseIf k = "m " Then
            h = KMtoM(r)
        ElseIf k = "km" Then
            h = r
        End If
        Combo3.Text = Str(h)
    ElseIf Combo4.Text = "" Then
        s = 3.14 * b
        If l = "cm" Then
            h = KMtoCM(s)
        ElseIf l = "dm" Then
            h = KMtoDM(s)
        ElseIf l = "mm" Then
            h = KMtoMM(s)
        ElseIf l = "m " Then
            h = KMtoM(s)
        ElseIf l = "km" Then
            h = g
        End If
        Combo4.Text = Str(h)
    End If
    Combo3.AddItem Combo3.Text
    Combo4.AddItem Combo4.Text
End Sub

Private Sub Form_Load()
    Combo1.Text = titlechangdudanwei
    Combo2.Text = titlechangdudanwei
End Sub
