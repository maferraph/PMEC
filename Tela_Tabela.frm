VERSION 5.00
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form Tela_Tabela 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Imprimir"
   ClientHeight    =   4524
   ClientLeft      =   36
   ClientTop       =   264
   ClientWidth     =   6000
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   DrawStyle       =   1  'Dash
   DrawWidth       =   5
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   NegotiateMenus  =   0   'False
   ScaleHeight     =   4524
   ScaleWidth      =   6000
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin MSComDlg.CommonDialog CD 
      Left            =   120
      Top             =   3960
      _ExtentX        =   677
      _ExtentY        =   677
      _Version        =   393216
   End
   Begin MSFlexGridLib.MSFlexGrid FG 
      Height          =   3612
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   6012
      _ExtentX        =   10605
      _ExtentY        =   6371
      _Version        =   393216
      Rows            =   1
      AllowBigSelection=   0   'False
      SelectionMode   =   1
   End
   Begin VB.CommandButton BT_Imprimir 
      Caption         =   "Imprimir"
      Height          =   732
      Left            =   1800
      Picture         =   "Tela_Tabela.frx":0000
      Style           =   1  'Graphical
      TabIndex        =   1
      ToolTipText     =   "Imprime a tabela acima"
      Top             =   3720
      Width           =   972
   End
   Begin VB.CommandButton BT_Volta 
      Caption         =   "Voltar"
      Height          =   732
      Left            =   3240
      Picture         =   "Tela_Tabela.frx":030A
      Style           =   1  'Graphical
      TabIndex        =   2
      ToolTipText     =   "Volta à tela principal"
      Top             =   3720
      Width           =   972
   End
End
Attribute VB_Name = "Tela_Tabela"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim I As Integer, J As Integer, K As Integer
Private Sub BT_Imprimir_Click()
    On Error Resume Next
    TelaEmEspera True
    IT_Tabela.LimpaCampos
    IT_Tabela.LB_Mec.Caption = "Mecanismo: " & Trim(Tela_Tabela.Caption)
    IT_Tabela.LB_Data.Caption = "Data: " & Format(Date, "dd/mm/yyyy")
    For I = 0 To (FG.Cols - 1)
        With IT_Tabela
            If I = 0 Then
                .LB_T1.Caption = FG.TextArray(I)
            ElseIf I = 1 Then
                .LB_T2.Caption = FG.TextArray(I)
            ElseIf I = 2 Then
                .LB_T3.Caption = FG.TextArray(I)
            ElseIf I = 3 Then
                .LB_T4.Caption = FG.TextArray(I)
            ElseIf I = 4 Then
                .LB_T5.Caption = FG.TextArray(I)
            ElseIf I = 5 Then
                .LB_T6.Caption = FG.TextArray(I)
            ElseIf I = 6 Then
                .LB_T7.Caption = FG.TextArray(I)
            ElseIf I = 7 Then
                .LB_T8.Caption = FG.TextArray(I)
            ElseIf I = 8 Then
                .LB_T9.Caption = FG.TextArray(I)
            ElseIf I = 9 Then
                .LB_T10.Caption = FG.TextArray(I)
            ElseIf I = 10 Then
                .LB_T11.Caption = FG.TextArray(I)
            ElseIf I = 11 Then
                .LB_T12.Caption = FG.TextArray(I)
            ElseIf I = 12 Then
                .LB_T13.Caption = FG.TextArray(I)
            ElseIf I = 13 Then
                .LB_T14.Caption = FG.TextArray(I)
            ElseIf I = 14 Then
                .LB_T15.Caption = FG.TextArray(I)
            ElseIf I = 15 Then
                .LB_T16.Caption = FG.TextArray(I)
            ElseIf I = 16 Then
                .LB_T17.Caption = FG.TextArray(I)
            ElseIf I = 17 Then
                .LB_T18.Caption = FG.TextArray(I)
            ElseIf I = 18 Then
                .LB_T19.Caption = FG.TextArray(I)
            End If
        End With
    Next I
    For I = 0 To (FG.Cols - 1)
        For K = 0 To 45
            J = (K * 8) + 1
            With IT_Tabela
                If I = 0 Then
                    .LB_C1(K).Caption = FG.TextMatrix(J, I)
                ElseIf I = 1 Then
                    .LB_C2(K).Caption = FG.TextMatrix(J, I)
                ElseIf I = 2 Then
                    .LB_C3(K).Caption = FG.TextMatrix(J, I)
                ElseIf I = 3 Then
                    .LB_C4(K).Caption = FG.TextMatrix(J, I)
                ElseIf I = 4 Then
                    .LB_C5(K).Caption = FG.TextMatrix(J, I)
                ElseIf I = 5 Then
                    .LB_C6(K).Caption = FG.TextMatrix(J, I)
                ElseIf I = 6 Then
                    .LB_C7(K).Caption = FG.TextMatrix(J, I)
                ElseIf I = 7 Then
                    .LB_C8(K).Caption = FG.TextMatrix(J, I)
                ElseIf I = 8 Then
                    .LB_C9(K).Caption = FG.TextMatrix(J, I)
                ElseIf I = 9 Then
                    .LB_C10(K).Caption = FG.TextMatrix(J, I)
                ElseIf I = 10 Then
                    .LB_C11(K).Caption = FG.TextMatrix(J, I)
                ElseIf I = 11 Then
                    .LB_C12(K).Caption = FG.TextMatrix(J, I)
                ElseIf I = 12 Then
                    .LB_C13(K).Caption = FG.TextMatrix(J, I)
                ElseIf I = 13 Then
                    .LB_C14(K).Caption = FG.TextMatrix(J, I)
                ElseIf I = 14 Then
                    .LB_C15(K).Caption = FG.TextMatrix(J, I)
                ElseIf I = 15 Then
                    .LB_C16(K).Caption = FG.TextMatrix(J, I)
                ElseIf I = 16 Then
                    .LB_C17(K).Caption = FG.TextMatrix(J, I)
                ElseIf I = 17 Then
                    .LB_C18(K).Caption = FG.TextMatrix(J, I)
                ElseIf I = 18 Then
                    .LB_C19(K).Caption = FG.TextMatrix(J, I)
                End If
            End With
        Next K
    Next I
    TelaEmEspera False
    CD.DialogTitle = "Selecione a impressora"
    CD.ShowPrinter
    IT_Tabela.PrintForm
End Sub
Private Sub BT_Volta_Click()
   Unload Me
End Sub
Private Sub Form_Load()
    If iMec = 0 Then 'BM1
        FG.Clear
        FG.Cols = 19
        For I = 0 To 18
            FG.FixedAlignment(I) = flexAlignCenterCenter
            FG.ColAlignment(I) = flexAlignCenterCenter
        Next I
        FG.TextArray(0) = "Posição"
            FG.TextArray(1) = "Q1r"
        FG.TextArray(2) = "A1r"
        FG.TextArray(3) = "KA1"
        FG.TextArray(4) = "LA1"
        FG.TextArray(5) = "KX1"
        FG.TextArray(6) = "LX1"
        FG.TextArray(7) = "Q1g"
        FG.TextArray(8) = "Q1d"
        FG.TextArray(9) = "Q1dd"
        FG.TextArray(10) = "A1g"
        FG.TextArray(11) = "A1d"
        FG.TextArray(12) = "A1dd"
        FG.TextArray(13) = "Di"
        FG.TextArray(14) = "Dj"
        FG.TextArray(15) = "Did"
        FG.TextArray(16) = "Djd"
        FG.TextArray(17) = "Didd"
        FG.TextArray(18) = "Djdd"
        For I = 0 To sVAR_Int
            FG.AddItem FormataDados(aPosicao(I))
            FG.TextMatrix(FG.Rows - 1, 1) = FormataDados(aQ1r(I))
            FG.TextMatrix(FG.Rows - 1, 2) = FormataDados(aA1r(I))
            FG.TextMatrix(FG.Rows - 1, 3) = FormataDados(aKA1(I))
            FG.TextMatrix(FG.Rows - 1, 4) = FormataDados(aLA1(I))
            FG.TextMatrix(FG.Rows - 1, 5) = FormataDados(aKX1(I))
            FG.TextMatrix(FG.Rows - 1, 6) = FormataDados(aLX1(I))
            FG.TextMatrix(FG.Rows - 1, 7) = FormataDados(aQ1g(I))
            FG.TextMatrix(FG.Rows - 1, 8) = FormataDados(aQ1d(I))
            FG.TextMatrix(FG.Rows - 1, 9) = FormataDados(aQ1dd(I))
            FG.TextMatrix(FG.Rows - 1, 10) = FormataDados(aA1g(I))
            FG.TextMatrix(FG.Rows - 1, 11) = FormataDados(aA1d(I))
            FG.TextMatrix(FG.Rows - 1, 12) = FormataDados(aA1dd(I))
            FG.TextMatrix(FG.Rows - 1, 13) = FormataDados(aDi(I))
            FG.TextMatrix(FG.Rows - 1, 14) = FormataDados(aDj(I))
            FG.TextMatrix(FG.Rows - 1, 15) = FormataDados(aDid(I))
            FG.TextMatrix(FG.Rows - 1, 16) = FormataDados(aDjd(I))
            FG.TextMatrix(FG.Rows - 1, 17) = FormataDados(aDidd(I))
            FG.TextMatrix(FG.Rows - 1, 18) = FormataDados(aDjdd(I))
        Next I
    ElseIf iMec = 1 Then 'QB
        FG.Clear
        FG.Cols = 15
        For I = 0 To 14
            FG.FixedAlignment(I) = flexAlignCenterCenter
            FG.ColAlignment(I) = flexAlignCenterCenter
        Next I
        FG.TextArray(0) = "Q2r"
        FG.TextArray(1) = "Q2g"
        FG.TextArray(2) = "Q2d"
        FG.TextArray(3) = "Q2dd"
        FG.TextArray(4) = "L"
        FG.TextArray(5) = "Alfar"
        FG.TextArray(6) = "Alfag"
        FG.TextArray(7) = "Betar"
        FG.TextArray(8) = "Betag"
        FG.TextArray(9) = "A3g"
        FG.TextArray(10) = "A3r"
        FG.TextArray(11) = "KA3"
        FG.TextArray(12) = "A3d"
        FG.TextArray(13) = "LA3"
        FG.TextArray(14) = "A3dd"
        For I = 0 To sVAR_Int
            FG.AddItem FormataDados(aQ2r(I))
            FG.TextMatrix(FG.Rows - 1, 1) = FormataDados(aQ2g(I))
            FG.TextMatrix(FG.Rows - 1, 2) = FormataDados(aQ2d(I))
            FG.TextMatrix(FG.Rows - 1, 3) = FormataDados(aQ2dd(I))
            FG.TextMatrix(FG.Rows - 1, 4) = FormataDados(aL(I))
            FG.TextMatrix(FG.Rows - 1, 5) = FormataDados(aAlfar(I))
            FG.TextMatrix(FG.Rows - 1, 6) = FormataDados(aAlfag(I))
            FG.TextMatrix(FG.Rows - 1, 7) = FormataDados(aBetar(I))
            FG.TextMatrix(FG.Rows - 1, 8) = FormataDados(aBetag(I))
            FG.TextMatrix(FG.Rows - 1, 9) = FormataDados(aA3g(I))
            FG.TextMatrix(FG.Rows - 1, 10) = FormataDados(aA3r(I))
            FG.TextMatrix(FG.Rows - 1, 11) = FormataDados(aKA3(I))
            FG.TextMatrix(FG.Rows - 1, 12) = FormataDados(aA3d(I))
            FG.TextMatrix(FG.Rows - 1, 13) = FormataDados(aLA3(I))
            FG.TextMatrix(FG.Rows - 1, 14) = FormataDados(aA3dd(I))
        Next I
    ElseIf iMec = 2 Then 'Conexao QB-BM2
        FG.Clear
        FG.Cols = 6
        For I = 0 To 5
            FG.FixedAlignment(I) = flexAlignCenterCenter
            FG.ColAlignment(I) = flexAlignCenterCenter
        Next I
        FG.TextArray(0) = "Q2r"
        FG.TextArray(1) = "H"
        FG.TextArray(2) = "Hi"
        FG.TextArray(3) = "Hj"
        FG.TextArray(4) = "Hd"
        FG.TextArray(5) = "Hdd"
        For I = 0 To sVAR_Int
            FG.AddItem FormataDados(aQ2r(I))
            FG.TextMatrix(FG.Rows - 1, 1) = FormataDados(aH(I))
            FG.TextMatrix(FG.Rows - 1, 2) = FormataDados(aHi(I))
            FG.TextMatrix(FG.Rows - 1, 3) = FormataDados(aHj(I))
            FG.TextMatrix(FG.Rows - 1, 4) = FormataDados(aHd(I))
            FG.TextMatrix(FG.Rows - 1, 5) = FormataDados(aHdd(I))
        Next I
    ElseIf iMec = 3 Then 'BM2
        FG.Clear
        FG.Cols = 16
        For I = 0 To 15
            FG.FixedAlignment(I) = flexAlignCenterCenter
            FG.ColAlignment(I) = flexAlignCenterCenter
        Next I
        FG.TextArray(0) = "W"
        FG.TextArray(1) = "Wd"
        FG.TextArray(2) = "Wdd"
        FG.TextArray(3) = "Ror"
        FG.TextArray(4) = "GE"
        FG.TextArray(5) = "Gamar"
        FG.TextArray(6) = "A4r"
        FG.TextArray(7) = "Q4r"
        FG.TextArray(8) = "KW"
        FG.TextArray(9) = "KA4"
        FG.TextArray(10) = "Q4d"
        FG.TextArray(11) = "A4d"
        FG.TextArray(12) = "LA4"
        FG.TextArray(13) = "LW"
        FG.TextArray(14) = "Q4dd"
        FG.TextArray(15) = "A4dd"
        For I = 0 To sVAR_Int
            FG.AddItem FormataDados(aW(I))
            FG.TextMatrix(FG.Rows - 1, 1) = FormataDados(aWd(I))
            FG.TextMatrix(FG.Rows - 1, 2) = FormataDados(aWdd(I))
            FG.TextMatrix(FG.Rows - 1, 3) = FormataDados(aRor(I))
            FG.TextMatrix(FG.Rows - 1, 4) = FormataDados(aGE(I))
            FG.TextMatrix(FG.Rows - 1, 5) = FormataDados(aGamar(I))
            FG.TextMatrix(FG.Rows - 1, 6) = FormataDados(aA4r(I))
            FG.TextMatrix(FG.Rows - 1, 7) = FormataDados(aQ4r(I))
            FG.TextMatrix(FG.Rows - 1, 8) = FormataDados(aKW(I))
            FG.TextMatrix(FG.Rows - 1, 9) = FormataDados(aKA4(I))
            FG.TextMatrix(FG.Rows - 1, 10) = FormataDados(aQ4d(I))
            FG.TextMatrix(FG.Rows - 1, 11) = FormataDados(aA4d(I))
            FG.TextMatrix(FG.Rows - 1, 12) = FormataDados(aLA4(I))
            FG.TextMatrix(FG.Rows - 1, 13) = FormataDados(aLW(I))
            FG.TextMatrix(FG.Rows - 1, 14) = FormataDados(aQ4dd(I))
            FG.TextMatrix(FG.Rows - 1, 15) = FormataDados(aA4dd(I))
        Next I
    End If
End Sub
