using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace B_U2_W1_D1
{
    public partial class DettagliDipendente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string IdDipendente = Request.QueryString["ID_Dipendente"];

            if (!IsPostBack)
            {
                Dipendente.ListaDettaglioDipendente.Clear();
                SqlConnection connectionDB = new SqlConnection();
                connectionDB.ConnectionString = ConfigurationManager.ConnectionStrings["CMS_Edile"].ToString();


                connectionDB.Open();

                try
                {

                    SqlCommand command = new SqlCommand();
                    command.Parameters.AddWithValue("@ID_Dipendente", IdDipendente);
                    command.CommandText = "Select * From Dipendente Where ID_Dipendente = @ID_Dipendente";
                    command.Connection = connectionDB;

                    SqlDataReader reader = command.ExecuteReader();
                    Dipendente dipendente = new Dipendente();

                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            
                            dipendente.ID_Dipendente = Convert.ToInt32(reader["ID_Dipendente"]);
                            dipendente.Nome = reader["Nome"].ToString();
                            dipendente.Cognome = reader["Cognome"].ToString();
                            dipendente.Indirizzo = reader["Indirizzo"].ToString();
                            dipendente.CodiceFiscale = reader["CodiceFiscale"].ToString();
                            dipendente.Coniugato = Convert.ToBoolean(reader["Coniugato"]);
                            dipendente.NumFigliCarico = Convert.ToInt32(reader["NumFigliCarico"]);
                            dipendente.Mansione = reader["Mansione"].ToString();
                    
                        }

                    }



                    TD_Nomne.InnerText = dipendente.Nome;
                    TD_Cognome.InnerText = dipendente.Cognome;
                    TD_Indirizzo.InnerText = dipendente.Indirizzo;
                    TD_CodiceFiscale.InnerText = dipendente.CodiceFiscale;
                    TD_Coniugato.InnerText = dipendente.Coniugato.ToString();
                    TD_NumFigliCarico.InnerText = dipendente.NumFigliCarico.ToString();
                    TD_Mansione.InnerText = dipendente.Mansione;


                }
                catch (Exception ex)
                {
                    connectionDB.Close();
                }

                connectionDB.Close();
            }

        }
    }
    
}