Function f(a,b)
  If IsNull(a) Then
    a = 0
  End If
  If IsNull(b) Then
    b = 0
  End If
  f = a + b
End Function

MsgBox f(1,Null) 
MsgBox f(Null,Null)
MsgBox f(1,0) 