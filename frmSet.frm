VERSION 5.00
Begin VB.Form frmSet 
   Caption         =   "Form1"
   ClientHeight    =   4125
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   7965
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
   ScaleHeight     =   4125
   ScaleWidth      =   7965
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  '����ȱʡ
   Begin VB.ComboBox CombolanguageSelecter 
      Height          =   315
      ItemData        =   "frmSet.frx":0000
      Left            =   6000
      List            =   "frmSet.frx":000D
      Style           =   2  'Dropdown List
      TabIndex        =   12
      Top             =   240
      Width           =   975
   End
   Begin VB.Frame Frame2 
      Caption         =   "��ʼ������λ"
      Height          =   3135
      Left            =   3120
      TabIndex        =   8
      Top             =   240
      Width           =   1815
      Begin VB.ComboBox Combo4 
         Height          =   315
         Left            =   240
         Style           =   2  'Dropdown List
         TabIndex        =   10
         Top             =   600
         Width           =   1455
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Ĭ��ѹǿ��λ"
         Height          =   195
         Left            =   120
         TabIndex        =   9
         Top             =   240
         Width           =   1080
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "��ʼ����ѧ��λ"
      Height          =   3135
      Left            =   720
      TabIndex        =   0
      Top             =   240
      Width           =   1815
      Begin VB.ComboBox Combo3 
         Height          =   315
         Left            =   240
         Style           =   2  'Dropdown List
         TabIndex        =   7
         Top             =   2280
         Width           =   1335
      End
      Begin VB.ComboBox Combo2 
         Height          =   315
         Left            =   240
         TabIndex        =   5
         Top             =   1440
         Width           =   1335
      End
      Begin VB.ComboBox Combo1 
         Height          =   315
         ItemData        =   "frmSet.frx":002B
         Left            =   240
         List            =   "frmSet.frx":003B
         TabIndex        =   1
         Top             =   600
         Width           =   1335
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
      Height          =   345
      Left            =   2280
      TabIndex        =   3
      Top             =   3600
      Width           =   990
   End
   Begin VB.Label Label5 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "����"
      Height          =   195
      Left            =   5400
      TabIndex        =   11
      Top             =   240
      Width           =   360
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
        '�����ȡ�ַ����ĳ��ȣ���Space" ȡ ʵ �� �� �� ȥ �� �� �� �� �� �� �� �� �� �� �� t x t B u f f = S p a c e "ȡʵ���ַ�ȥ���ַ��������Ŀո� txtBuff = Space"ȡʵ���ַ�ȥ���ַ��������Ŀո�txtBuff=Space(1000)
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
    Call STRYMINI("startupdanwei", "startupchangdudanwei", Combo1.Text, False)
    Call STRYMINI("startuplanguage", "language", CombolanguageSelecter.Text, False)
    Unload Me
    frmCalc.Refresh
End Sub

Private Sub Form_Load()
     Dim title As String
    '��ȡINI�ļ���ָ���Ľںͽ�/��
    '�ڵ����ƣ�AppName
    '�����ƣ�Title
    title = GetValueFromINIFile("startupdanwei", "startupchangdudanwei", App.Path & "\config.ini")
    Combo1.Text = title
End Sub

