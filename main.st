CASE estado OF
  0: tempo_fase := T#5s;
  1: tempo_fase := T#2s;
  2: tempo_fase := T#5s;
ELSE
  tempo_fase := T#5s;
END_CASE;

t_fase(IN := NOT t_fase.Q, PT := tempo_fase);

IF t_fase.Q THEN
  CASE estado OF
    0: estado := 1;
    1: estado := 2;
    2: estado := 0;
  ELSE
    estado := 2;
  END_CASE;
END_IF;

luz_verde    := (estado = 0);
luz_amarela  := (estado = 1);
luz_vermelha := (estado = 2);