MESSAGE "-> AND" 
        SKIP
        "N/N ->" STRING((NO AND NO), "Y/N") SKIP
        "Y/N ->" STRING((YES AND NO), "Y/N") SKIP
        "N/Y ->" STRING((NO AND YES), "Y/N") SKIP
        "Y/Y ->" STRING((YES AND YES), "Y/N")
        SKIP(1)
        "-> OR" SKIP
        "N/N ->" STRING((NO OR NO), "Y/N") SKIP           
        "Y/N ->" STRING((YES OR NO), "Y/N") SKIP
        "N/Y ->" STRING((NO OR YES), "Y/N") SKIP
        "Y/Y ->" STRING((YES OR YES), "Y/N")         
        VIEW-AS ALERT-BOX INFORMATION TITLE "Tabela-verdade".
