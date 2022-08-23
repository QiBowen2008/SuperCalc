VERSION 5.00
Begin VB.Form frmScientific 
   BackColor       =   &H00F2DED5&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "��ѧ������"
   ClientHeight    =   4665
   ClientLeft      =   150
   ClientTop       =   720
   ClientWidth     =   8460
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   ScaleHeight     =   4665
   ScaleWidth      =   8460
   StartUpPosition =   3  '����ȱʡ
   Begin VB.Menu Menu_Edit 
      Caption         =   "�༭(&E)"
      Begin VB.Menu Menu_Copy 
         Caption         =   "����"
         Shortcut        =   ^C
      End
      Begin VB.Menu Menu_Paste 
         Caption         =   "ճ��"
         Shortcut        =   ^V
      End
      Begin VB.Menu Menu_Cut 
         Caption         =   "����"
         Shortcut        =   ^X
      End
      Begin VB.Menu line1 
         Caption         =   "-"
      End
      Begin VB.Menu Menu_All 
         Caption         =   "ȫѡ"
         Shortcut        =   ^A
      End
      Begin VB.Menu line2 
         Caption         =   "-"
      End
   End
End
Attribute VB_Name = "frmScientific"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Dim que(25) As Double
Public qt As Integer
Public qh As Integer
Public qv As Integer
Public ang As Double

Public memo As Double
Dim dflag As Integer
Dim i As Integer
Dim opnre As Integer
Dim prev As Double
Dim oflag As Integer
Dim ind As Integer

Private Sub Cmd_Atan_Click()    'Atan����
    Txt_Result.Text = Str((Atn(Val(Txt_Result.Text))) / ang)
    prev = Txt_Result.Text
End Sub

Private Sub Cmd_Backspace_Click()    '�˸�
    If Txt_Result.Text = "0." Then
       Exit Sub
    End If
    If (Txt_Result.Text <> "") Then
        Txt_Result.Text = Mid(Txt_Result.Text, 1, Len(Txt_Result.Text) - 1)
    ElseIf Txt_Result.Text = "" Then
        Txt_Result.Text = "0."
    End If
End Sub

Private Sub Cmd_Backspace_KeyPress(KeyAscii As Integer)
    If KeyAscii = 39 Then Cmd_CE.SetFocus
End Sub

Private Sub Cmd_C_Click()     '����
    Txt_Result.Text = "0"
    prev = 0
End Sub

Private Sub Cmd_CE_Click()
    dflag = 0
    prev = 0
    oflag = 0
    ind = 0
    opnre = 0
    Txt_Result = " 0"
End Sub

Private Sub Cmd_Cos_Click()   'Cosֵ
    Txt_Result.Text = Str(Cos(ang * Val(Txt_Result.Text)))
    prev = Txt_Result.Text
End Sub

Private Sub Cmd_Cube_Click()
    Txt_Result.Text = Val(Txt_Result.Text) ^ 3
    prev = Txt_Result.Text
End Sub

Private Sub Cmd_Exp_Click()    '����Exp��ֵ
    Txt_Result.Text = Exp(Txt_Result.Text)
    prev = Txt_Result.Text
End Sub

Private Sub Cmd_Fact_Click()    'N��
    Txt_Result.Text = Str(fac(Val(Txt_Result.Text)))
    prev = Txt_Result.Text
End Sub

Private Sub Cmd_fraction_Click()    '����
    Dim Temp
    Temp = Val(Txt_Result.Text)
    If Temp <> 0 Then
        Txt_Result.Text = Str(1 / Temp)
    Else
        Txt_Result.Text = "��������Ϊ�㡣"
    End If
    prev = Txt_Result.Text
End Sub

Private Sub Cmd_Ln_Click()   'LN
    If Val(Txt_Result.Text) > 0 Then
        Txt_Result.Text = Str(Log(Val(Txt_Result.Text)))
    Else
       Txt_Result.Text = "��������"
    End If
    prev = Txt_Result.Text
End Sub

Private Sub Cmd_Log_Click()   'Log
    If Val(Txt_Result.Text) > 0 Then
        Txt_Result.Text = Str((Log(Val(Txt_Result.Text)) / Log(10)))
    Else
        Txt_Result.Text = "��������"
    End If
    prev = Txt_Result.Text
End Sub

Private Sub Cmd_Operator_Click(Index As Integer)    ' ������������ť
    If opnre = 0 Or Index = 4 Then
        If ind = 3 Then         '�Ӻ�
            prev = prev + Val(Txt_Result.Text)
        ElseIf ind = 2 Then     '����
            prev = prev - Val(Txt_Result.Text)
        ElseIf ind = 0 Then     '����
            If Val(Txt_Result.Text) = 0 Then
                Txt_Result.Text = "��������Ϊ�㡣"
                Exit Sub
            Else
                prev = prev / Val(Txt_Result.Text)
            End If
        ElseIf ind = 5 Then     'X^Y
            prev = prev ^ Val(Txt_Result.Text)
        ElseIf ind = 1 Then      '�˺�
            prev = prev * Val(Txt_Result.Text)
        End If
        If prev = 0 Then        '���ǰһ��������Ϊ0
            prev = Txt_Result.Text    '����ǰ��ֵ����������
        Else                    '����
            Txt_Result.Text = Str(prev)   '����������ֵ���ݸ��ı�����ʾ
        End If
        oflag = 0
    End If
    opnre = 1
    ind = Index
    dflag = 0
End Sub

Private Sub Cmd_PI_Click()    'PI
   Txt_Result.Text = 3.141592654
   prev = Txt_Result.Text
End Sub

Private Sub Cmd_Rnd_Click()   '����һ�������
    Txt_Result.Text = Str(Rnd)
End Sub

Private Sub Cmd_Sin_Click()    'Sinֵ
    Txt_Result.Text = Str(Sin(ang * Val(Txt_Result.Text)))
    prev = Txt_Result.Text
End Sub

Private Sub Cmd_sqrt_Click()   '��ƽ����
    Dim Temp As Integer
    Temp = Val(Txt_Result.Text)
    If Temp > 0 Or Temp = 0 Then
        Txt_Result.Text = Str(Sqr(Val(Txt_Result.Text)))
    Else
        Txt_Result.Text = "����������Ч��"
    End If
End Sub
Private Sub Cmd_Square_Click()   '��ƽ��
    Txt_Result.Text = Val(Txt_Result.Text) ^ 2
    prev = Txt_Result.Text
End Sub
Private Sub Cmd_Tan_Click()    'Tan����
    If (Cos(Val(Txt_Result.Text))) <> 0 Then
        Txt_Result.Text = Str(Sin(ang * Val(Txt_Result.Text)) / Cos(ang * Val(Txt_Result.Text)))
    Else
        Txt_Result.Text = "��������Ϊ�㡣"
    End If
    prev = Txt_Result.Text
End Sub

Private Sub Command1_Click(Index As Integer)   '���ּ�
    If ind = 4 Then
        prev = 0
        Txt_Result.Text = " "
        ind = 0
    End If
    opnre = 0
    If oflag = 0 Then
        Txt_Result.Text = " "
    End If
    oflag = 1
    If Command1(Index).Caption <> "." Then
        If Txt_Result.Text <> "0." Then
            Txt_Result.Text = Txt_Result.Text & Command1(Index).Caption
        Else
            Txt_Result.Text = " " & Command1(Index).Caption
        End If
    Else
        If dflag = 0 Then
            Txt_Result.Text = Txt_Result.Text & "."
            dflag = 1
        Else
            Txt_Result.Text = "��������"
        End If
    End If
End Sub

Private Sub Form_Load()
    dflag = 0
    prev = 0
    oflag = 0
    ind = 0
    opnre = 0
    Clipboard.Clear
    If language = "Ӣ��" Then
        Me.Caption = "Scientific Calculator"
    End If
End Sub


Private Sub Menu_All_Click()      'ȫѡ
    Clipboard.Clear
    Clipboard.SetText Txt_Result.Text
End Sub

Private Sub Menu_Copy_Click()     '����
    Clipboard.Clear
    Clipboard.SetText Txt_Result.Text
End Sub

Private Sub Menu_Cut_Click()      '����
    Clipboard.Clear
    Clipboard.SetText Txt_Result.Text
    Txt_Result.Text = ""
End Sub

Private Sub Menu_Paste_Click()    'ճ��
    Txt_Result.Text = ""
    Txt_Result.Text = Clipboard.GetText()
End Sub


Private Sub Otn_Deg_Click()    '�Ƕ�
    If Otn_Deg = True Then
        ang = 3.141592654 / 180
    End If
End Sub

Private Sub Otn_Grd_Click()    '�ݶ�
    If Otn_Grd.Value = True Then
        ang = 3.141592654 / 200
    End If
End Sub

Private Sub Otn_Rad_Click()    '����
   If Otn_Rad.Value = True Then
        ang = 1
    End If
End Sub


'*************************************************************************
'**�� �� ����fac
'**��    �룺num(Long) - Ҫ����׳˵���
'**��    ����(Long) -    ������
'**��������������һ��С��12�����Ľ׳�
'**ȫ�ֱ�����
'**����ģ�飺
'**��    �ߣ�mrlbb
'**��    �ڣ�2008-12-01 11:25:14
'*************************************************************************
Function fac(num As Long) As Long
    Dim re
    If (num < 0 Or num = 0) Then
         Txt_Result.Text = "�������ֵ����"
         fac = num
    Else
        If (num > 12) Then
            Txt_Result.Text = "�������ֵ����"
            fac = num
        Else
            re = 1
            While (num > 0)
                re = re * num
                num = num - 1
            Wend
            fac = re
        End If
    End If
End Function
