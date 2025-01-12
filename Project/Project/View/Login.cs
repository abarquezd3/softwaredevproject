﻿using Project.Interface;
using Project.Object;
using Project.Presenter;
using Project.View;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Project
{
    public partial class Login : Form, ILoginSignup
    {

        LoginSignupPresenter presenter;

  
        public Login()
        {
            InitializeComponent();
            presenter = new LoginSignupPresenter(this);
        }

        public string username
        {
            get { return textBox1.Text; }
        }

        public string password { get { return textBox2.Text; }
        }

        public Form currentForm { get { return this; } }

        private void button1_Click(object sender, EventArgs e)
        {
            presenter.signup();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            presenter.startLogin();
     
        }
    }
}
