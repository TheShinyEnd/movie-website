
<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdminPanel.aspx.cs" Inherits="AdminPanel" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <script>
        window.onbeforeunload = function () {
            document.body.style.opacity = 0;
        }

    </script>
    <style>

        body {
            transition: opacity 1.6s ease-out;
    
        }
    </style>
      <div class="wave"></div>
      <div class="wave"></div>
      <div class="wave"></div>

    <div class="container">
        <div id="alertBox" class="alert-box">
            <span id="alertMessage"></span>
        </div>

        <h1 class="frontscreentext">Admin Panel</h1>

        <asp:GridView ID="UserGridView" runat="server" AutoGenerateColumns="False" DataKeyNames="Username"
            OnRowEditing="UserGridView_RowEditing" OnRowCancelingEdit="UserGridView_RowCancelingEdit"
            OnRowUpdating="UserGridView_RowUpdating" OnRowDeleting="UserGridView_RowDeleting" CssClass="user-table">
            <Columns>
                <asp:BoundField DataField="Username" HeaderText="Username" ReadOnly="True" />
                <asp:BoundField DataField="Name" HeaderText="Name" />
                <asp:BoundField DataField="FamilyName" HeaderText="Family Name" />
                <asp:BoundField DataField="Email" HeaderText="Email" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" />
                <asp:BoundField DataField="PhonePrefix" HeaderText="Phone Prefix" />
                <asp:BoundField DataField="PhoneNumberWithoutPrefix" HeaderText="Phone Number" />
                <asp:BoundField DataField="BirthYear" HeaderText="Birth Year" />
                <asp:BoundField DataField="CityList" HeaderText="City" />
                <asp:BoundField DataField="HobbyList" HeaderText="Hobbies" />
                 <asp:BoundField DataField="Password"  HeaderText="Password"/>
                <asp:TemplateField HeaderText="Admin"> 
    <ItemTemplate>
        <asp:CheckBox ID="chkAdmin" runat="server" 
                      Checked='<%# Convert.ToBoolean(Eval("admin")) %>' 
                      Enabled="false" /> 
    </ItemTemplate>
    <EditItemTemplate>
        <asp:CheckBox ID="CheckBox1" runat="server" 
                      Checked='<%# Bind("admin") %>' />
    </EditItemTemplate>
</asp:TemplateField>
                <asp:CommandField ShowEditButton="True" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>

        <asp:Button ID="AddUserButton" runat="server" Text="Add User" OnClick="AddUserButton_Click" CssClass="btn btn-primary" />

        <div id="addUserModal" class="modal">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Add New User</h4>
                    <button type="button" class="close" onclick="hideModal()">×</button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label for="newUsername">Username:</label>
                        <asp:TextBox ID="newUsername" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="newName">Name:</label>
                        <asp:TextBox ID="newName" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="newFamilyName">Family Name:</label>
                        <asp:TextBox ID="newFamilyName" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="newEmail">Email:</label>
                        <asp:TextBox ID="newEmail" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="newGender">Gender:</label>
                        <asp:TextBox ID="newGender" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="newPhonePrefix">Phone Prefix:</label>
                        <asp:TextBox ID="newPhonePrefix" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="newPhoneNumberWithoutPrefix">Phone Number (No Prefix):</label>
                        <asp:TextBox ID="newPhoneNumberWithoutPrefix" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="newBirthYear">Birth Year:</label>
                        <asp:TextBox ID="newBirthYear" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="newCityList">City:</label>
                        <asp:TextBox ID="newCityList" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="newHobbyList">Hobbies:</label>
                        <asp:TextBox ID="newHobbyList" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="newPassword">Password:</label>
                        <asp:TextBox ID="newPassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="newRepeatPassword">Repeat Password:</label>
                        <asp:TextBox ID="newRepeatPassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                    </div>
                    <div class="form-group">
    <label for="newadmin">Admin:</label>
    <asp:CheckBox ID="newadmin" runat="server" />
</div>
                    <asp:Button ID="addUserConfirmButton" runat="server" Text="Add User" CssClass="btn btn-primary" OnClick="AddUserConfirmButton_Click" />
                    <button type="button" class="btn btn-secondary" onclick="hideModal()">Cancel</button>
                </div>
            </div>
        </div>
    </div>

    <style>
        body {
            margin: auto;
            font-family: -apple-system, BlinkMacSystemFont, sans-serif;
            overflow: auto;
            background: linear-gradient(315deg, rgba(101,0,94,1) 3%, rgba(60,132,206,1) 38%, rgba(48,238,226,1) 68%, rgba(255,25,25,1) 98%);
            animation: gradient 15s ease infinite;
            background-size: 400% 400%;
            background-attachment: fixed;
            margin: 0;
            font-family: 'Quicksand', sans-serif;
            overflow-x: hidden;
        }


        .frontscreentext {
            color: whitesmoke;
        }

        .container {
            backdrop-filter:brightness(80%), blur(4px);
            background-color: rgba(0,0,0,0.2);
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            padding: 0 20px;
        }
 

        @keyframes gradient {
            0% {
                background-position: 0% 0%;
            }
            50% {
                background-position: 100% 100%;
            }
            100% {
                background-position: 0% 0%;
            }
        }

        .wave {
            background: rgb(255 255 255 / 25%);
            border-radius: 1000% 1000% 0 0;
            position: fixed;
            width: 200%;
            height: 12em;
            animation: wave 10s -3s linear infinite;
            transform: translate3d(0, 0, 0);
            opacity: 0.8;
            bottom: 0;
            left: 0;
            z-index: -1;
        }

        .wave:nth-of-type(2) {
            bottom: -1.25em;
            animation: wave 18s linear reverse infinite;
            opacity: 0.8;
        }

        .wave:nth-of-type(3) {
            bottom: -2.5em;
            animation: wave 20s -1s reverse infinite;
            opacity: 0.9;
        }

        @keyframes wave {
            2% {
                transform: translateX(1);
            }

            25% {
                transform: translateX(-25%);
            }

            50% {
                transform: translateX(-50%);
            }

            75% {
                transform: translateX(-25%);
            }

            100% {
                transform: translateX(1);
            }
        }


  


          .animated {
            animation: paper-plane-animation 1s linear infinite;
          }
  
          @keyframes paper-plane-animation {
            0% {
              transform: rotate(0deg);
            }
            50% {
              transform: rotate(180deg);
            }
            100% {
              transform: rotate(0deg);
            }
          }
  

        .alert-box {
            display: none;
            position: fixed;
            top: 2%;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color: #ff0000;
            color: #ffffff;
            padding: 15px;
            border-radius: 8px;
            animation: slideIn 1s forwards, fadeOutandslideout 1s 3.5s forwards;
        }

        @keyframes slideIn {
            0% { transform: translate(-50%, -120%); }
            100% { transform: translate(-50%, 0%); }
        }

        @keyframes fadeOutandslideout {
            0% { opacity: 0.8; }
            100% {
                opacity: 0;
                transform: translate(-50%, -100%);
                filter: blur(20px);
            }
        }

        .user-table {
            width: 90%;
            margin: 20px 0;
            border-collapse: collapse;
            background: rgba(255, 255, 255, 0.8);
            backdrop-filter: blur(10px);
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 12px;
            overflow: hidden;
        }

        .user-table th, .user-table td {
            border: 1px solid rgba(255, 255, 255, 0.5);
            padding: 12px 15px;
            text-align: left;
        }

        .user-table th {
            background-color: rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        .btn {
            margin-top: 20px;
            padding: 10px 20px;
            border-radius: 24px;
            transition: background-color 0.25s, border-color 0.25s;
            font-family: 'Quicksand', sans-serif;
        }

        .btn-primary {
            background-color: #FFC0CB;
            border-color: #FFC0CB;
            color: #663399;
        }

        .btn-primary:hover {
            background-color: #FF69B4;
            border-color: #FF69B4;
        }

        .modal {
            display: none;
            position: fixed;
            z-index: 1000;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background-color: rgba(0,0,0,0.5);
            justify-content: center;
            align-items: center;
        }

        .modal-content {
            background-color: #fefefe;
            margin: auto;
            padding: 20px;
            border: 1px solid #888;
            border-radius: 12px;
            width: 90%;
            max-width: 500px;
            animation: modalFadeIn 0.5s;
        }

        @keyframes modalFadeIn {
            from { opacity: 0; transform: translateY(-50px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .modal-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .modal-title {
            margin: 0;
        }

        .close {
            background: none;
            border: none;
            font-size: 1.5em;
            cursor: pointer;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-control {
            width: 100%;
            padding: 10px;
            border: 2px solid #FFC0CB;
            border-radius: 24px;
            transition: border-color 0.25s;
        }

        .form-control:focus {
            border-color: #FF69B4;
        }

        .btn-secondary {
            margin-top: 10px;
            background-color: #ccc;
            border: none;
            color: #333;
            cursor: pointer;
            border-radius: 24px;
            padding: 10px 20px;
            transition: background-color 0.25s;
        }

        .btn-secondary:hover {
            background-color: #bbb;
        }

    </style>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <script>
        $(document).ready(function () {
            $('#AddUserButton').click(function () {
                showModal();
            });

            $('.close').click(function () {
                hideModal();
            });

            $('.btn-secondary').click(function () {
                hideModal();
            });
        });

        function showModal() {
            $('#addUserModal').fadeIn();
        }

        function hideModal() {
            $('#addUserModal').fadeOut();
        }

        function showAlert(message) {
            var alertBox = document.getElementById('alertBox');
            var alertMessage = document.getElementById('alertMessage');

            alertMessage.textContent = message;
            alertBox.style.display = 'block';

            setTimeout(function () {
                alertBox.style.display = 'none';
            }, 4600);  
        }
    </script>
</asp:Content>
