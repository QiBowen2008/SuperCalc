VERSION 5.00
Begin VB.Form frmSSanjiaoxing1 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "��֪�׺͸������������"
   ClientHeight    =   4050
   ClientLeft      =   90
   ClientTop       =   435
   ClientWidth     =   6405
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   4050
   ScaleWidth      =   6405
   StartUpPosition =   3  '����ȱʡ
   Begin VB.CommandButton Command1 
      Caption         =   "��ֵ"
      Height          =   360
      Left            =   1560
      TabIndex        =   12
      Top             =   3120
      Width           =   990
   End
   Begin VB.CommandButton Command2 
      Caption         =   "�������"
      Height          =   360
      Left            =   3480
      TabIndex        =   11
      Top             =   3120
      Width           =   990
   End
   Begin VB.ComboBox Combo2 
      Height          =   300
      ItemData        =   "frmSSanjiaoxing1.frx":0000
      Left            =   4320
      List            =   "frmSSanjiaoxing1.frx":0010
      TabIndex        =   3
      Text            =   "Combo2"
      Top             =   1440
      Width           =   1095
   End
   Begin VB.ComboBox Combo3 
      Height          =   300
      ItemData        =   "frmSSanjiaoxing1.frx":0024
      Left            =   4320
      List            =   "frmSSanjiaoxing1.frx":0034
      TabIndex        =   4
      Text            =   "Combo3"
      Top             =   2280
      Width           =   1095
   End
   Begin VB.ComboBox Combo1 
      Height          =   300
      ItemData        =   "frmSSanjiaoxing1.frx":005E
      Left            =   4320
      List            =   "frmSSanjiaoxing1.frx":006E
      TabIndex        =   5
      Text            =   "Combo1"
      Top             =   600
      Width           =   1095
   End
   Begin VB.Frame Frame1 
      Caption         =   "����"
      Height          =   2415
      Left            =   1560
      TabIndex        =   6
      Top             =   360
      Width           =   2535
      Begin VB.ComboBox Combo4 
         Height          =   300
         ItemData        =   "frmSSanjiaoxing1.frx":0082
         Left            =   120
         List            =   "frmSSanjiaoxing1.frx":0084
         TabIndex        =   10
         Text            =   "Combo4"
         Top             =   240
         Width           =   2295
      End
      Begin VB.ComboBox Combo5 
         Height          =   300
         ItemData        =   "frmSSanjiaoxing1.frx":0086
         Left            =   120
         List            =   "frmSSanjiaoxing1.frx":0088
         TabIndex        =   9
         Text            =   "Combo5"
         Top             =   1080
         Width           =   2295
      End
      Begin VB.ComboBox Combo6 
         Height          =   300
         ItemData        =   "frmSSanjiaoxing1.frx":008A
         Left            =   120
         List            =   "frmSSanjiaoxing1.frx":008C
         TabIndex        =   8
         Text            =   "Combo6"
         Top             =   1920
         Width           =   2295
      End
   End
   Begin VB.Frame Frame2 
      Caption         =   "��λ"
      Height          =   2415
      Left            =   4200
      TabIndex        =   7
      Top             =   360
      Width           =   1455
   End
   Begin VB.Label б�� 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "���"
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
      Top             =   2280
      Width           =   510
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "��"
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
      Left            =   600
      TabIndex        =   1
      Top             =   600
      Width           =   255
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "��"
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
      Left            =   600
      TabIndex        =   0
      Top             =   1440
      Width           =   255
   End
End
Attribute VB_Name = "frmSSanjiaoxing1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim a As Double
Dim b As Double
Dim c As Double
Dim d As Double
Dim e As Double
Dim f As Double
Dim g As Double
Dim h As Double
Dim k As String
Dim L As String
Dim m As String

Private Sub Combo2_KeyPress(KeyAscii As Integer)
    If KeyAscii = 13 Then
        Combo3.SetFocus
    End If
End Sub

Private Sub Combo3_KeyPress(KeyAscii As Integer)
    If KeyAscii = 13 Then
        Command1.SetFocus
    End If
End Sub

Private Sub Combo4_KeyPress(KeyAscii As Integer)
    If KeyAscii = 13 Then
        Combo5.SetFocus
    End If
End Sub

Private Sub Combo5_KeyPress(KeyAscii As Integer)
    If KeyAscii = 13 Then
        Combo6.SetFocus
    End If
End Sub

Private Sub Combo6_KeyPress(KeyAscii As Integer)
    If KeyAscii = 13 Then
        Command1.SetFocus
    End If
End Sub

Sub Command1_Click()
    k = Combo1.Text
    L = Combo2.Text
    m = Combo3.Text
    a = Val(Combo4.Text)
    c = Val(Combo5.Text)
    e = Val(Combo6.Text)
    If k = "cm" Then
        b = CMtoKM(a)
    ElseIf k = "dm" Then
        b = DMtoKM(a)
    ElseIf k = "mm" Then
        b = MMtoKM(a)
    ElseIf k = "m" Then
        b = MtoKM(a)
    ElseIf k = "km" Then
        b = a
    End If
    If L = "cm" Then
        d = CMtoKM(c)
    ElseIf L = "dm" Then
        d = DMtoKM(c)
    ElseIf L = "mm" Then
        d = MMtoKM(c)
    ElseIf L = "m" Then
        d = MtoKM(c)
    ElseIf L = "km" Then
        d = c
    End If
    If m = "ƽ������" Then
        f = PFCMtoPFKM(e)
    ElseIf m = "ƽ������" Then
        f = PFKMtoPFDM(e)
    ElseIf m = "ƽ������" Then
        f = PFMMtoPFKM(e)
    ElseIf m = "ƽ����" Then
        f = PFMtoPFKM(e)
    ElseIf m = "ƽ��ǧ��" Then
        f = e
    End If
    If Combo4.Text = "" Then
        g = f * 2 / d
        If k = "cm" Then
            h = KMtoCM(g)
        ElseIf k = "dm" Then
            h = KMtoDM(g)
        ElseIf k = "mm" Then
            h = KMtoMM(g)
        ElseIf k = "m" Then
            h = KMtoM(g)
        ElseIf k = "km" Then
            h = g
        End If
    Combo4.Text = h
    ElseIf Combo5.Text = "" Then
        g = f * 2 / b
        If L = "cm" Then
            h = KMtoCM(g)
        ElseIf L = "dm" Then
            h = KMtoDM(g)
        ElseIf L = "mm" Then
            h = KMtoMM(g)
        ElseIf L = "m" Then
            h = KMtoM(g)
        ElseIf L = "km" Then
            h = g
        End If
        Combo5.Text = h
    ElseIf Combo6.Text = "" Then
        g = b * d / 2
        If m = "ƽ������" Then
            h = PFKMtoPFCM(g)
        ElseIf m = "ƽ������" Then
            h = PFKMtoPFDM(g)
        ElseIf m = "ƽ������" Then
            h = PFKMtoPFMM(g)
        ElseIf m = "ƽ����" Then
            h = PFKMtoPFM(g)
        ElseIf m = "ƽ��ǧ��" Then
            h = g
        End If
        Combo6.Text = h
    End If
    Combo4.AddItem Combo4.Text
    Combo5.AddItem Combo5.Text
    Combo6.AddItem Combo6.Text
End Sub

Private Sub Command2_Click()
    Combo4.Text = ""
    Combo5.Text = ""
    Combo6.Text = ""
    Combo1.Text = ""
    Combo2.Text = ""
    Combo3.Text = ""
End Sub

Private Sub Form_Load()
    Combo1.Text = "cm"
    Combo2.Text = "cm"
    Combo3.Text = "cm"
End Sub

Private Sub combo1_KeyPress(KeyAscii As Integer)
    If KeyAscii = 13 Then
        Combo2.SetFocus
    End If
End Sub
