Attribute VB_Name = "Modulo_Matematica"
'FORMULA MATEMATICAS Q NAO EXISTEM EM VB
Dim sTemp As Single
Public Function ASin(X) As Single
    On Error Resume Next
    sTemp = Atn(X / Sqr(-X * X + 1))
    ASin = sTemp
End Function
Public Function ACos(X) As Single
    On Error Resume Next
    sTemp = Atn(-X / Sqr(-X * X + 1)) + 2 * Atn(1)
    ACos = sTemp
End Function
Public Function Pi() As Single
    On Error Resume Next
   Pi = 3.14159265358979
End Function
Public Function Rad2Deg(X) As Single
    On Error Resume Next
   sTemp = X * 180 / Pi
   Rad2Deg = sTemp
End Function
Public Function Deg2Rad(X) As Single
    On Error Resume Next
   sTemp = X * Pi / 180
   Deg2Rad = sTemp
End Function
