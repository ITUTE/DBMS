namespace ConnectDB
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.label1 = new System.Windows.Forms.Label();
            this.dgvDisplay = new System.Windows.Forms.DataGridView();
            this.qUANLYKTXDataSet = new ConnectDB.QUANLYKTXDataSet();
            this.sINHVIENBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.sINHVIENTableAdapter = new ConnectDB.QUANLYKTXDataSetTableAdapters.SINHVIENTableAdapter();
            this.mSSVDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.maLopDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dienSVDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.hoTenDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.phaiDataGridViewCheckBoxColumn = new System.Windows.Forms.DataGridViewCheckBoxColumn();
            this.ngSinhDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.cMNDDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.emailDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.sDTDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.bHYTDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.queQuanDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.anhChanDungDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            ((System.ComponentModel.ISupportInitialize)(this.dgvDisplay)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.qUANLYKTXDataSet)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.sINHVIENBindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.Dock = System.Windows.Forms.DockStyle.Top;
            this.label1.Font = new System.Drawing.Font("UVN Bach Tuyet Nang", 16.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.Color.DarkRed;
            this.label1.Location = new System.Drawing.Point(0, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(1504, 44);
            this.label1.TabIndex = 0;
            this.label1.Text = "DANH SÁCH SINH VIÊN";
            this.label1.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // dgvDisplay
            // 
            this.dgvDisplay.AutoGenerateColumns = false;
            this.dgvDisplay.BackgroundColor = System.Drawing.SystemColors.Control;
            this.dgvDisplay.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvDisplay.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.mSSVDataGridViewTextBoxColumn,
            this.maLopDataGridViewTextBoxColumn,
            this.dienSVDataGridViewTextBoxColumn,
            this.hoTenDataGridViewTextBoxColumn,
            this.phaiDataGridViewCheckBoxColumn,
            this.ngSinhDataGridViewTextBoxColumn,
            this.cMNDDataGridViewTextBoxColumn,
            this.emailDataGridViewTextBoxColumn,
            this.sDTDataGridViewTextBoxColumn,
            this.bHYTDataGridViewTextBoxColumn,
            this.queQuanDataGridViewTextBoxColumn,
            this.anhChanDungDataGridViewTextBoxColumn});
            this.dgvDisplay.DataSource = this.sINHVIENBindingSource;
            this.dgvDisplay.Dock = System.Windows.Forms.DockStyle.Fill;
            this.dgvDisplay.Location = new System.Drawing.Point(0, 44);
            this.dgvDisplay.Name = "dgvDisplay";
            this.dgvDisplay.RowHeadersVisible = false;
            this.dgvDisplay.RowHeadersWidth = 51;
            this.dgvDisplay.RowTemplate.Height = 24;
            this.dgvDisplay.Size = new System.Drawing.Size(1504, 406);
            this.dgvDisplay.TabIndex = 1;
            // 
            // qUANLYKTXDataSet
            // 
            this.qUANLYKTXDataSet.DataSetName = "QUANLYKTXDataSet";
            this.qUANLYKTXDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // sINHVIENBindingSource
            // 
            this.sINHVIENBindingSource.DataMember = "SINHVIEN";
            this.sINHVIENBindingSource.DataSource = this.qUANLYKTXDataSet;
            // 
            // sINHVIENTableAdapter
            // 
            this.sINHVIENTableAdapter.ClearBeforeFill = true;
            // 
            // mSSVDataGridViewTextBoxColumn
            // 
            this.mSSVDataGridViewTextBoxColumn.DataPropertyName = "MSSV";
            this.mSSVDataGridViewTextBoxColumn.HeaderText = "MSSV";
            this.mSSVDataGridViewTextBoxColumn.MinimumWidth = 6;
            this.mSSVDataGridViewTextBoxColumn.Name = "mSSVDataGridViewTextBoxColumn";
            this.mSSVDataGridViewTextBoxColumn.Width = 125;
            // 
            // maLopDataGridViewTextBoxColumn
            // 
            this.maLopDataGridViewTextBoxColumn.DataPropertyName = "MaLop";
            this.maLopDataGridViewTextBoxColumn.HeaderText = "MaLop";
            this.maLopDataGridViewTextBoxColumn.MinimumWidth = 6;
            this.maLopDataGridViewTextBoxColumn.Name = "maLopDataGridViewTextBoxColumn";
            this.maLopDataGridViewTextBoxColumn.Width = 125;
            // 
            // dienSVDataGridViewTextBoxColumn
            // 
            this.dienSVDataGridViewTextBoxColumn.DataPropertyName = "DienSV";
            this.dienSVDataGridViewTextBoxColumn.HeaderText = "DienSV";
            this.dienSVDataGridViewTextBoxColumn.MinimumWidth = 6;
            this.dienSVDataGridViewTextBoxColumn.Name = "dienSVDataGridViewTextBoxColumn";
            this.dienSVDataGridViewTextBoxColumn.Width = 125;
            // 
            // hoTenDataGridViewTextBoxColumn
            // 
            this.hoTenDataGridViewTextBoxColumn.DataPropertyName = "HoTen";
            this.hoTenDataGridViewTextBoxColumn.HeaderText = "HoTen";
            this.hoTenDataGridViewTextBoxColumn.MinimumWidth = 6;
            this.hoTenDataGridViewTextBoxColumn.Name = "hoTenDataGridViewTextBoxColumn";
            this.hoTenDataGridViewTextBoxColumn.Width = 125;
            // 
            // phaiDataGridViewCheckBoxColumn
            // 
            this.phaiDataGridViewCheckBoxColumn.DataPropertyName = "Phai";
            this.phaiDataGridViewCheckBoxColumn.HeaderText = "Phai";
            this.phaiDataGridViewCheckBoxColumn.MinimumWidth = 6;
            this.phaiDataGridViewCheckBoxColumn.Name = "phaiDataGridViewCheckBoxColumn";
            this.phaiDataGridViewCheckBoxColumn.Width = 125;
            // 
            // ngSinhDataGridViewTextBoxColumn
            // 
            this.ngSinhDataGridViewTextBoxColumn.DataPropertyName = "NgSinh";
            this.ngSinhDataGridViewTextBoxColumn.HeaderText = "NgSinh";
            this.ngSinhDataGridViewTextBoxColumn.MinimumWidth = 6;
            this.ngSinhDataGridViewTextBoxColumn.Name = "ngSinhDataGridViewTextBoxColumn";
            this.ngSinhDataGridViewTextBoxColumn.Width = 125;
            // 
            // cMNDDataGridViewTextBoxColumn
            // 
            this.cMNDDataGridViewTextBoxColumn.DataPropertyName = "CMND";
            this.cMNDDataGridViewTextBoxColumn.HeaderText = "CMND";
            this.cMNDDataGridViewTextBoxColumn.MinimumWidth = 6;
            this.cMNDDataGridViewTextBoxColumn.Name = "cMNDDataGridViewTextBoxColumn";
            this.cMNDDataGridViewTextBoxColumn.Width = 125;
            // 
            // emailDataGridViewTextBoxColumn
            // 
            this.emailDataGridViewTextBoxColumn.DataPropertyName = "Email";
            this.emailDataGridViewTextBoxColumn.HeaderText = "Email";
            this.emailDataGridViewTextBoxColumn.MinimumWidth = 6;
            this.emailDataGridViewTextBoxColumn.Name = "emailDataGridViewTextBoxColumn";
            this.emailDataGridViewTextBoxColumn.Width = 125;
            // 
            // sDTDataGridViewTextBoxColumn
            // 
            this.sDTDataGridViewTextBoxColumn.DataPropertyName = "SDT";
            this.sDTDataGridViewTextBoxColumn.HeaderText = "SDT";
            this.sDTDataGridViewTextBoxColumn.MinimumWidth = 6;
            this.sDTDataGridViewTextBoxColumn.Name = "sDTDataGridViewTextBoxColumn";
            this.sDTDataGridViewTextBoxColumn.Width = 125;
            // 
            // bHYTDataGridViewTextBoxColumn
            // 
            this.bHYTDataGridViewTextBoxColumn.DataPropertyName = "BHYT";
            this.bHYTDataGridViewTextBoxColumn.HeaderText = "BHYT";
            this.bHYTDataGridViewTextBoxColumn.MinimumWidth = 6;
            this.bHYTDataGridViewTextBoxColumn.Name = "bHYTDataGridViewTextBoxColumn";
            this.bHYTDataGridViewTextBoxColumn.Width = 125;
            // 
            // queQuanDataGridViewTextBoxColumn
            // 
            this.queQuanDataGridViewTextBoxColumn.DataPropertyName = "QueQuan";
            this.queQuanDataGridViewTextBoxColumn.HeaderText = "QueQuan";
            this.queQuanDataGridViewTextBoxColumn.MinimumWidth = 6;
            this.queQuanDataGridViewTextBoxColumn.Name = "queQuanDataGridViewTextBoxColumn";
            this.queQuanDataGridViewTextBoxColumn.Width = 125;
            // 
            // anhChanDungDataGridViewTextBoxColumn
            // 
            this.anhChanDungDataGridViewTextBoxColumn.DataPropertyName = "AnhChanDung";
            this.anhChanDungDataGridViewTextBoxColumn.HeaderText = "AnhChanDung";
            this.anhChanDungDataGridViewTextBoxColumn.MinimumWidth = 6;
            this.anhChanDungDataGridViewTextBoxColumn.Name = "anhChanDungDataGridViewTextBoxColumn";
            this.anhChanDungDataGridViewTextBoxColumn.Width = 125;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1504, 450);
            this.Controls.Add(this.dgvDisplay);
            this.Controls.Add(this.label1);
            this.Name = "Form1";
            this.Text = "Form1";
            this.Load += new System.EventHandler(this.Form1_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvDisplay)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.qUANLYKTXDataSet)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.sINHVIENBindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.DataGridView dgvDisplay;
        private QUANLYKTXDataSet qUANLYKTXDataSet;
        private System.Windows.Forms.BindingSource sINHVIENBindingSource;
        private QUANLYKTXDataSetTableAdapters.SINHVIENTableAdapter sINHVIENTableAdapter;
        private System.Windows.Forms.DataGridViewTextBoxColumn mSSVDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn maLopDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn dienSVDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn hoTenDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewCheckBoxColumn phaiDataGridViewCheckBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn ngSinhDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn cMNDDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn emailDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn sDTDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn bHYTDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn queQuanDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn anhChanDungDataGridViewTextBoxColumn;
    }
}

