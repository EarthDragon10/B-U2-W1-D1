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
    public partial class AggiungiDipendente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            
                SqlConnection connectionDB = new SqlConnection();
                connectionDB.ConnectionString = ConfigurationManager.ConnectionStrings["CMS_Edile"].ToString();


                connectionDB.Open();

                try
                {

                    SqlCommand command = new SqlCommand();

                    command.Parameters.AddWithValue("@Nome", TEXTBOX_Nome.Text);
                    command.Parameters.AddWithValue("@Cognome", TEXTBOX_Cognome.Text);
                    command.Parameters.AddWithValue("@Indirizzo", TEXTBOX_Indirizzo.Text);
                    command.Parameters.AddWithValue("@CodiceFiscale", TEXTBOX_CodiceFiscale.Text);
                    command.Parameters.AddWithValue("@Coniugato", CheckBox_Coniugato.Checked);
                    command.Parameters.AddWithValue("@NumFigliCarico", TEXTBOX_NmFigliCarico.Text);
                    command.Parameters.AddWithValue("@Mansione", TEXTBOX_Mansione.Text);

                    command.CommandText = "INSERT INTO Dipendente VALUES (@Nome, @Cognome, @Indirizzo, @CodiceFiscale, @Coniugato, @NumFigliCarico, @Mansione)";

                    command.Connection = connectionDB;

                    int raws = command.ExecuteNonQuery();

                    if(raws > 0)
                    {
                        Mex_Error.Text = "Inserimento effettuato con successo";
                    } else
                    {
                        Mex_Error.Text = "Errore";
                    }

                }
                catch (Exception ex)
                {
                    connectionDB.Close();
                }

                connectionDB.Close();
            }
           
       
    }
}