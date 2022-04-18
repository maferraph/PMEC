Attribute VB_Name = "Modulo_Pmec"
'********************************************
'              VALORES PADRAO
'********************************************
Public iMec As Integer
Public sTempo As Single

Public sVAR_Int As Single
Public sVAR_Cur As Single
Public sVAR_Xd1 As Single
Public sVAR_Xdd1 As Single
Public sVAR_CB1 As Single
Public sVAR_C2 As Single
Public sVAR_DH As Single
Public sVAR_CB2 As Single
Public sVAR_DF As Single

'********************************************
'           VARIAVEIS DE CALCULO
'********************************************
'BM1
Public aPosicao() As Single
Public aQ1r() As Single
Public aA1r() As Single
Public aKA1() As Single
Public aLA1() As Single
Public aKX1() As Single
Public aLX1() As Single
Public aQ1g() As Single
Public aQ1d() As Single
Public aQ1dd() As Single
Public aA1g() As Single
Public aA1d() As Single
Public aA1dd() As Single
Public aDi() As Single
Public aDj() As Single
Public aDid() As Single
Public aDjd() As Single
Public aDidd() As Single
Public aDjdd() As Single
'QB
Public aQ2r() As Single
Public aQ2g() As Single
Public aQ2d() As Single
Public aQ2dd() As Single
Public aL() As Single
Public aAlfar() As Single
Public aAlfag() As Single
Public aBetar() As Single
Public aBetag() As Single
Public aA3r() As Single
Public aA3g() As Single
Public aKA3() As Single
Public aA3d() As Single
Public aLA3() As Single
Public aA3dd() As Single
'Conexao - QB com BM2
Public aH() As Single
Public aHi() As Single
Public aHj() As Single
Public aHd() As Single
Public aHdd() As Single
'Conexao - QB com BM2
Public aW() As Single
Public aWd() As Single
Public aWdd() As Single
Public aGamar() As Single
Public aGE() As Single
Public aRor() As Single
Public aA4r() As Single
Public aQ4r() As Single
Public aKA4() As Single
Public aKW() As Single
Public aQ4d() As Single
Public aA4d() As Single
Public aLA4() As Single
Public aLW() As Single
Public aQ4dd() As Single
Public aA4dd() As Single


'********************************************
'             FUNCOES PARA CALCULOS
'********************************************

Public Sub ResolveCalculos()
    On Error Resume Next
    ReDim aPosicao(sVAR_Int)
    ReDim aQ1r(sVAR_Int)
    ReDim aA1r(sVAR_Int)
    ReDim aKA1(sVAR_Int)
    ReDim aLA1(sVAR_Int)
    ReDim aKX1(sVAR_Int)
    ReDim aLX1(sVAR_Int)
    ReDim aQ1g(sVAR_Int)
    ReDim aQ1d(sVAR_Int)
    ReDim aQ1dd(sVAR_Int)
    ReDim aA1g(sVAR_Int)
    ReDim aA1d(sVAR_Int)
    ReDim aA1dd(sVAR_Int)
    ReDim aDi(sVAR_Int)
    ReDim aDj(sVAR_Int)
    ReDim aDid(sVAR_Int)
    ReDim aDjd(sVAR_Int)
    ReDim aDidd(sVAR_Int)
    ReDim aDjdd(sVAR_Int)
    ReDim aQ2r(sVAR_Int)
    ReDim aQ2g(sVAR_Int)
    ReDim aQ2d(sVAR_Int)
    ReDim aQ2dd(sVAR_Int)
    ReDim aL(sVAR_Int)
    ReDim aAlfar(sVAR_Int)
    ReDim aAlfag(sVAR_Int)
    ReDim aBetar(sVAR_Int)
    ReDim aBetag(sVAR_Int)
    ReDim aA3r(sVAR_Int)
    ReDim aA3g(sVAR_Int)
    ReDim aKA3(sVAR_Int)
    ReDim aA3d(sVAR_Int)
    ReDim aLA3(sVAR_Int)
    ReDim aA3dd(sVAR_Int)
    ReDim aH(sVAR_Int)
    ReDim aHi(sVAR_Int)
    ReDim aHj(sVAR_Int)
    ReDim aHd(sVAR_Int)
    ReDim aHdd(sVAR_Int)
    ReDim aW(sVAR_Int)
    ReDim aWd(sVAR_Int)
    ReDim aWdd(sVAR_Int)
    ReDim aGamar(sVAR_Int)
    ReDim aGE(sVAR_Int)
    ReDim aRor(sVAR_Int)
    ReDim aA4r(sVAR_Int)
    ReDim aQ4r(sVAR_Int)
    ReDim aKA4(sVAR_Int)
    ReDim aKW(sVAR_Int)
    ReDim aQ4d(sVAR_Int)
    ReDim aA4d(sVAR_Int)
    ReDim aLA4(sVAR_Int)
    ReDim aLW(sVAR_Int)
    ReDim aQ4dd(sVAR_Int)
    ReDim aA4dd(sVAR_Int)
    
    'Calculo premilinares
    Dim sPasso As Single, sPosIni As Single, sPosicao As Single, sPosBM2 As Single, sPosIniBM2 As Single
    sPasso = sVAR_Cur / sVAR_Int
    sPosIni = -(sVAR_Cur / 2)
    sPosicao = sPosIni
    sPosIniBM2 = sVAR_DF 'Valor inicial da posicao do embolo de BM2 <= sVAR_DF
    sPosBM2 = sPosIniBM2
    
    'Calculos
    For I = 0 To sVAR_Int
        'Biela-Manivela 1
        aPosicao(I) = sPosicao
        aQ1r(I) = ACos(sPosicao / (2 * sVAR_CB1))
        aA1r(I) = aQ1r(I)
        aKA1(I) = (sVAR_CB1 * Cos(aQ1r(I))) / (sVAR_CB1 * Cos(aA1r(I)))
        aLA1(I) = (-((sVAR_CB1 * Sin(aQ1r(I))) / (sVAR_CB1 * Cos(aA1r(I)))) + (aKA1(I) * aKA1(I) * Tan(aA1r(I))))
        aKX1(I) = -(sPosicao * Tan(aA1r(I)))
        aLX1(I) = (-(sVAR_CB1 * Cos(aQ1r(I))) - (aKA1(I) * aKA1(I) * Cos(aA1r(I)) * sVAR_CB1) - (aLA1(I) * sVAR_CB1 * Sin(aA1r(I))))
        aQ1g(I) = Rad2Deg(aQ1r(I))
        aQ1d(I) = sVAR_Xd1 / aKX1(I)
        aQ1dd(I) = ((sVAR_Xdd1 - (aLX1(I) * aQ1d(I) * aQ1d(I))) / aKX1(I))
        aA1g(I) = Rad2Deg(aA1r(I))
        aA1d(I) = aKA1(I) * aQ1d(I)
        aA1dd(I) = (aKA1(I) * aQ1dd(I)) + (aLA1(I) * aQ1d(I) * aQ1d(I))
        aDi(I) = sVAR_CB1 * Cos(aQ1r(I))
        aDj(I) = sVAR_CB1 * Sin(aQ1r(I))
        aDid(I) = sVAR_CB1 * (-(Sin(aQ1r(I)))) * aQ1d(I)
        aDjd(I) = sVAR_CB1 * Cos(aQ1r(I)) * aQ1d(I)
        aDidd(I) = sVAR_CB1 * (-(Cos(aQ1r(I)))) * aQ1d(I) * aQ1d(I) + sVAR_CB1 * (-(Sin(aQ1r(I)))) * aQ1dd(I)
        aDjdd(I) = sVAR_CB1 * (-(Sin(aQ1r(I)))) * aQ1d(I) * aQ1d(I) + sVAR_CB1 * Cos(aQ1r(I)) * aQ1dd(I)
        'Quatro-Barras
        aQ2r(I) = aQ1r(I)
        aQ2g(I) = Rad2Deg(aQ2r(I))
        aQ2d(I) = aQ1d(I)
        aQ2dd(I) = aQ1dd(I)
        aL(I) = Sqr((sVAR_CB1 * sVAR_CB1) + (sVAR_C2 * sVAR_C2) - (2 * sVAR_CB1 * sVAR_C2 * Cos(aQ2r(I))))
        aAlfar(I) = ASin((sVAR_CB1 * Sin(aQ2r(I))) / aL(I))
        aAlfag(I) = Rad2Deg(aAlfar(I))
        aBetar(I) = Pi - aQ2r(I) - aAlfar(I)
        aBetag(I) = Rad2Deg(aBetar(I))
        aA3g(I) = 360 - (Rad2Deg(aAlfar(I)) + Rad2Deg(aBetar(I)))
        aA3r(I) = Deg2Rad(aA3g(I))
        aKA3(I) = -(sVAR_CB1 * Sin(-aQ2r(I))) / (sVAR_CB1 * Sin(aA3r(I)))
        aA3d(I) = aKA3(I) * aQ2d(I)
        aLA3(I) = (sVAR_CB1 * Cos(-aQ2r(I))) / (sVAR_CB1 * Sin(-aA3r(I)))
        aA3dd(I) = (aQ2dd(I) * aKA3(I)) + (aQ2d(I) * aQ2d(I) * aLA3(I))
        'Conexao - QB com BM2
        aH(I) = sVAR_DH / Sin(aQ2r(I))
        aHi(I) = aH(I) * Cos(aQ2r(I))
        aHj(I) = aH(I) * Sin(aQ2r(I))
        aHd(I) = aH(I) * aQ1d(I) * Sin(aQ2r(I))
        aHdd(I) = (sVAR_DH * Cos(aQ2r(I)) * aQ2d(I) * aQ2dd(I) * 2 * aQ2d(I)) / (Sin(aQ2r(I)) * Sin(aQ2r(I)) * Sin(aQ2r(I)))
        'Biela-Manivela 2
        If I = 0 Then 'Primeiro valor de posicao
            aW(I) = sPosBM2
        Else
            aW(I) = aW(I - 1) + (aHi(I - 1) - aHi(I))
        End If
        aWd(I) = -(aH(I) * Sin(aQ2r(I)) * aQ2d(I))
        aWdd(I) = -(aH(I) * Cos(aQ2r(I)) * aQ2d(I) * aQ2d(I)) - (aH(I) * Sin(aQ2r(I)) * aQ2dd(I))
        If aW(I) > 0 Then
            aRor(I) = Atn(sVAR_CB2 / aW(I))
        Else
            aRor(I) = Pi + Atn((sVAR_CB2 / aW(I)))
        End If
        aGE(I) = sVAR_CB2 / Sin(aRor(I))
        aGamar(I) = ACos(((sVAR_DF * sVAR_DF - aGE(I) * aGE(I) - sVAR_CB2 * sVAR_CB2) / (-2 * aGE(I) * sVAR_CB2)))
        If aGamar(I) > 1 Then aGamar(I) = 0
        aA4r(I) = aGamar(I) + aRor(I)
        aQ4r(I) = -ACos(((aW(I) - (sVAR_CB2 * Cos(aA4r(I)))) / sVAR_DF))
        aKW(I) = -(sVAR_CB2 + (aW(I) * Tan(aA4r(I))))
        aKA4(I) = (sVAR_DF * Cos(aQ4r(I))) / (sVAR_CB2 * Cos(aA4r(I)))
        aQ4d(I) = aWd(I) / aKW(I)
        aA4d(I) = aQ4d(I) * aKA4(I)
        aLA4(I) = (-sVAR_DF * Sin(aQ4r(I))) / (sVAR_CB2 * Cos(aA4r(I))) + aKA4(I) * aKA4(I) * Tan(aA4r(I))
        aLW(I) = -(sVAR_DF * Cos(aQ4r(I))) + (aKA4(I) * aKA4(I) * sVAR_CB2 * Cos(aA4r(I))) - (aLA4(I) * sVAR_CB2 * Sin(aA4r(I)))
        aQ4dd(I) = (sVAR_Xdd1 - (aLW(I) * aQ4d(I) * aQ4d(I))) / aKW(I)
        aA4dd(I) = (aKA4(I) * aQ4dd(I)) + (aLA4(I) * aA4r(I) * aA4r(I))
        'Acao
         sPosicao = sPosicao + sPasso
    Next I
End Sub
Public Function FormataDados(Valor As Single) As String
    On Error Resume Next
    If Valor > 1000 Then
        FormataDados = Format(Valor, "Scientific")
    ElseIf Valor >= 10 And Valor < 1000 Then
        FormataDados = Format(Valor, "##0.0")
    ElseIf Valor >= 1 And Valor < 10 Then
        FormataDados = Format(Valor, "#0.00")
    ElseIf Valor >= 0.001 And Valor < 1 Then
        FormataDados = Format(Valor, "#0.0000")
    ElseIf Valor <= 0.001 And Valor > 0 Then
        FormataDados = Format(Valor, "Scientific")
    ElseIf Valor <= -1000 Then
        FormataDados = Format(Valor, "Scientific")
    ElseIf Valor <= -10 And Valor > -1000 Then
        FormataDados = Format(Valor, "##0.0")
    ElseIf Valor <= -1 And Valor > -10 Then
        FormataDados = Format(Valor, "#0.00")
    ElseIf Valor <= -0.001 And Valor > -1 Then
        FormataDados = Format(Valor, "#0.0000")
    ElseIf Valor >= -0.001 And Valor < 0 Then
        FormataDados = Format(Valor, "Scientific")
    Else
        FormataDados = Valor
    End If
End Function
Public Function TelaEmEspera(Espera As Boolean)
    On Error Resume Next
    If Espera = True Then
        Screen.MousePointer = vbHourglass
        Screen.ActiveForm.Enabled = False
    Else
        Screen.MousePointer = vbDefault
        Screen.ActiveForm.Enabled = True
    End If
End Function
