using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de Sesiones
/// </summary>
public class Sesiones
{
    public static bool SesionAdministrador(string sesion,string tipoUser)
    {
        bool resp = false;
        try
        {
            if (sesion == null || tipoUser != "2")
            {
                resp = false;
            }
            else
            {
                resp = true;
            }
        }
        catch
        {
            resp = false;
        }
        return resp;
    }
}