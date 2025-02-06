CREATE OR REPLACE TRIGGER controla_horario
BEFORE INSERT ON  estoque

BEGIN

    -- bloquei os dias da semanas e os horarios
     IF (to_char(sysdate, 'DY') in ('SAT', 'SUN')) or (to_char(sysdate, 'hh24') not BETWEEN '08' and '17') THEN 
        raise_application_error(-20001, 'Não foi possivek gravar este produto, o valor encontrado abaixo do 
        minimo permitido');
    END IF;
     
END controla_horario;
/