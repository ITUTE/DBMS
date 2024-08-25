using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace ConnectDB
{
    public partial class Form1 : Form
    {
        string connectionString = "Data Source=.;Initial Catalog=QUANLYKTX;Integrated Security=True";
        SqlConnection conn;

        public Form1()
        {
            InitializeComponent();
            conn = new SqlConnection();
            conn.ConnectionString = connectionString;
            conn.Open();
        }

        public void LoadData()
        {
            DataTable dataTable = new DataTable(tableName: "DSSV");
            string query = "SELECT * FROM SINHVIEN";
            if (conn.State == ConnectionState.Closed)
                conn.Open();
            SqlDataAdapter adapter = new SqlDataAdapter(query, conn);
            adapter.Fill(dataTable);
            dgvDisplay.DataSource = dataTable;
        }

        private void Form1_Load(object sender, System.EventArgs e)
        {
            LoadData();
        }
    }
}
