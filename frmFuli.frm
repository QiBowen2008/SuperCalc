VERSION 5.00
Begin VB.Form frmFuli 
   Caption         =   "�����׵�ԭ��"
   ClientHeight    =   4260
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   5640
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
   ScaleHeight     =   4260
   ScaleWidth      =   5640
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  '����ȱʡ
   Begin VB.CommandButton Command1 
      Caption         =   "����"
      Height          =   360
      Left            =   1440
      TabIndex        =   5
      Top             =   3600
      Width           =   990
   End
   Begin VB.Frame Frame1 
      Caption         =   "��λ"
      Height          =   2535
      Left            =   3840
      TabIndex        =   0
      Top             =   480
      Width           =   1695
   End
   Begin VB.Frame Frame2 
      Caption         =   "����"
      Height          =   2535
      Left            =   1920
      TabIndex        =   1
      Top             =   480
      Width           =   1695
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "�ſ�Һ�����"
      BeginProperty Font 
         Name            =   "����"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Left            =   240
      TabIndex        =   4
      Top             =   2160
      Width           =   1440
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "�������ٶȣ�g��"
      BeginProperty Font 
         Name            =   "����"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Left            =   240
      TabIndex        =   3
      Top             =   1440
      Width           =   1800
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Һ���ܶ�"
      BeginProperty Font 
         Name            =   "����"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Left            =   360
      TabIndex        =   2
      Top             =   840
      Width           =   960
   End
End
Attribute VB_Name = "frmFuli"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
