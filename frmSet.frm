VERSION 5.00
Object = "{826C7913-F2FA-4001-9902-5C755C3ABFC4}#1.0#0"; "XP����.ocx"
Begin VB.Form frmSet 
   BackColor       =   &H00F2DED5&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "����"
   ClientHeight    =   4860
   ClientLeft      =   7350
   ClientTop       =   15375
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
   ScaleHeight     =   4860
   ScaleWidth      =   5235
   StartUpPosition =   3  '����ȱʡ
   Begin Xp����.XpCorona XpCorona1 
      Left            =   5040
      Top             =   2880
      _ExtentX        =   4763
      _ExtentY        =   3466
   End
   Begin VB.ComboBox Combo5 
      Height          =   315
      ItemData        =   "frmSet.frx":0000
      Left            =   960
      List            =   "frmSet.frx":000A
      Style           =   2  'Dropdown List
      TabIndex        =   8
      Top             =   3360
      Width           =   1335
   End
   Begin VB.Frame Frame1 
      Caption         =   "��ʼ����ѧ��λ"
      Height          =   3615
      Left            =   720
      TabIndex        =   0
      Top             =   240
      Width           =   3855
      Begin VB.ComboBox Combo9 
         Height          =   315
         ItemData        =   "frmSet.frx":0019
         Left            =   2040
         List            =   "frmSet.frx":0026
         Style           =   2  'Dropdown List
         TabIndex        =   10
         Top             =   1440
         Width           =   1335
      End
      Begin VB.ComboBox Combo8 
         Height          =   315
         ItemData        =   "frmSet.frx":0038
         Left            =   2040
         List            =   "frmSet.frx":0045
         Style           =   2  'Dropdown List
         TabIndex        =   9
         Top             =   600
         Width           =   1335
      End
      Begin VB.ComboBox Combo3 
         Height          =   315
         ItemData        =   "frmSet.frx":0057
         Left            =   240
         List            =   "frmSet.frx":0067
         Style           =   2  'Dropdown List
         TabIndex        =   7
         Top             =   2280
         Width           =   1335
      End
      Begin VB.ComboBox Combo2 
         Height          =   315
         ItemData        =   "frmSet.frx":0082
         Left            =   240
         List            =   "frmSet.frx":0092
         Style           =   2  'Dropdown List
         TabIndex        =   5
         Top             =   1440
         Width           =   1335
      End
      Begin VB.ComboBox Combo1 
         Height          =   315
         ItemData        =   "frmSet.frx":00AD
         Left            =   240
         List            =   "frmSet.frx":00BD
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
         Left            =   240
         TabIndex        =   11
         Top             =   2760
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
      Left            =   1800
      TabIndex        =   3
      ToolTipText     =   "�������ã������������Ч"
      Top             =   4200
      Width           =   1110
   End
End
Attribute VB_Name = "frmSet"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Private Declare Function GetPrivateProfileString Lib "kernel32" Alias "GetPrivateProfileStringA" (ByVal lpApplicationName As String, ByVal lpKeyName As Any, ByVal lpDefault As String, ByVal lpReturnedString As String, ByVal nSize As Long, ByVal lpFileName As String) As Long
Private Declare Function WritePrivateProfileString Lib "kernel32" Alias "WritePrivateProfileStringA" (ByVal lpApplicationName As String, ByVal lpKeyName As Any, ByVal lpString As Any, ByVal lpFileName As String) As Long

'ע��д�����ȡ��[������]��[������]һ��Ҫ��ͬ��
Private Function STRYMINI(txtym1 As String, txtym2 As String, txtym3 As String, ONOFF As Boolean) As String
    Dim ULR As String
    ULR = App.Path & "\config.ini" 'INI�ļ�·��
    Dim txtBuff As String
    If ONOFF = True Then '��ȡ
        '�����ȡ�ַ����ĳ��ȣ���Space" ȡ ʵ �� �� �� ȥ �� �� �� �� �� �� �� �� �� �� ��
        txtBuff = Space(1000)
        't x t B u f f = S p a c e "ȡʵ���ַ�ȥ���ַ��������Ŀո� txtBuff = Space"ȡʵ���ַ�ȥ���ַ��������Ŀո�
        '��ȡINI�ļ�(������,������,��,��ȡ������ֵ,��ȡ�ַ�������,·��)
        Call GetPrivateProfileString(txtym1, txtym2, "", txtBuff, Len(txtBuff), ULR)
        '��ʾʵ���ַ�����ȡ"txtBuff"��ߵ��ַ���(ȡ�õ��ַ���,�ַ����ܳ���(ȥ���ַ����ұ߶���Ŀո��ַ�(ȡ�õ��ַ���))�ó��ַ���ʵ�ʳ��ȶ�һ������˼�1)
        txtBuff = Left(txtBuff, Len(RTrim(txtBuff)) - 1)
        '�Ѷ�ȡ�����ַ������ݵ�"STRYMINI"����
        STRYMINI = txtBuff
    Else
        '���ַ���д��INI�ļ�(����������������ֵ������INI�ļ���·��)
        Call WritePrivateProfileString(txtym1, txtym2, txtym3, ULR)
    End If
End Function

'д�����ݣ�
Private Sub Command1_Click()
    Call STRYMINI("startupdanwei", "changdudanwei", Combo1.Text, False)
    Call STRYMINI("startupdanwei", "mianjidanwei", Combo2.Text, False)
    Call STRYMINI("startupdanwei", "tijidanwei", Combo3.Text, False)
    Call STRYMINI("startupdanwei", "sududanwei", Combo5.Text, False)
    Call STRYMINI("startupdanwei", "dianzudanwei", Combo8.Text, False)
    Call STRYMINI("startupdanwei", "yaqiangdanwei", Combo9.Text, False)
    MsgBox "��������Ч", vbOKOnly, "��ܰ��ʾ"
    Unload Me
    frmCalc.Refresh
End Sub

Private Sub Form_Load()
    If language = "Ӣ��" Then
        Me.Caption = "Setup"
    End If
    Combo1.Text = titlechangdudanwei
    Combo2.Text = titlemianjidanwei
    Combo3.Text = titletijidanwei
    Combo5.Text = titlesududanwei
    Combo8.Text = titledianzudanwei
    Combo9.Text = titleyaqiangdanwei
End Sub

Private Sub Frame2_DragDrop(Source As Control, X As Single, Y As Single)

End Sub

Private Sub Label4_Click()

End Sub
