<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="hotelbooking.aspx.cs" Inherits="assignment01.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <section>
            <h1>Hotel Booking</h1>
            <div>
                <label>Full Name:</label>
                <asp:TextBox runat="server" ID="guest_fullname"></asp:TextBox>
                <asp:RequiredFieldValidator  runat="server" EnableClientScript="true" ErrorMessage="Please enter your full name" ControlToValidate="guest_fullname"></asp:RequiredFieldValidator>
            </div>
            <div>
                <label>Choose Honorific</label>
                    <asp:RadioButtonList runat="server" ID="aspx_guesthonorific">
                        <asp:ListItem Text="Mr." Value="mr"></asp:ListItem>
                        <asp:ListItem Text="Ms." Value="ms"></asp:ListItem>
                        <asp:ListItem Text="Mrs." Value="mrs"></asp:ListItem>
                        <asp:ListItem Text="Dr." Value="dr"></asp:ListItem>
                    </asp:RadioButtonList>
                <asp:RequiredFieldValidator  runat="server" EnableClientScript="true" ErrorMessage="Please choose honorific" ControlToValidate="aspx_guesthonorific"></asp:RequiredFieldValidator>
            </div>
            <div>
                <label>Email:</label>
                <asp:TextBox runat="server" ID="guest_email"></asp:TextBox>
                <asp:RequiredFieldValidator  runat="server" EnableClientScript="true" ErrorMessage="Please enter email" ControlToValidate="guest_email"></asp:RequiredFieldValidator>
            </div>
        </section>
        <section>
            <h2>What kind of room are you looking for?</h2>
            <asp:DropDownList runat="server" ID="guest_roomselection">
                    <asp:ListItem Value="" Text="-- Choose a Room --"></asp:ListItem>
                    <asp:ListItem Text="Single" Value="roomselection1"></asp:ListItem>
                    <asp:ListItem Text="Double" Value="roomselection2"></asp:ListItem>
                    <asp:ListItem Text="Triple" Value="roomselection3"></asp:ListItem>
                    <asp:ListItem Text="Quad" Value="roomselection4"></asp:ListItem>
                    <asp:ListItem Text="King" Value="roomselection5"></asp:ListItem>
                    <asp:ListItem Text="Queen" Value="roomselection5"></asp:ListItem>
                    <asp:ListItem Text="Twin" Value="roomselection7"></asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator  runat="server" EnableClientScript="true" ErrorMessage="Please choose a room" ControlToValidate="guest_roomselection"></asp:RequiredFieldValidator>
        </section>
        <section>
            <h2>How many people are staying?</h2>
            <asp:RadioButtonList runat="server" ID="guests_total">
                <asp:ListItem Text="1" Value="one"></asp:ListItem>
                <asp:ListItem Text="2" Value="two"></asp:ListItem>
                <asp:ListItem Text="3" Value="three"></asp:ListItem>
                <asp:ListItem Text="4" Value="four"></asp:ListItem>
                <asp:ListItem Text="5+" Value="five"></asp:ListItem>
             </asp:RadioButtonList>
            <asp:RequiredFieldValidator  runat="server" EnableClientScript="true" ErrorMessage="Please choose a number" ControlToValidate="guests_total"></asp:RequiredFieldValidator>
        </section>
        <section>
            <h2>What would you like included in your room?</h2>
                 <asp:CheckBoxList ID="guest_roomoptions" runat="server">
                        <asp:ListItem Text="Room Service" Value="roomservice"></asp:ListItem>
                        <asp:ListItem Text="A View" Value="view"></asp:ListItem>
                        <asp:ListItem Text="Pull-Out Bed" Value="pulloutbed"></asp:ListItem>
                        <asp:ListItem Text="TV Entertainment Channels" Value="channels"></asp:ListItem>
                 </asp:CheckBoxList>
        </section>
        <section>
            <h2>Which packaged deals would you like?</h2>
            <asp:CheckBoxList ID="guest_packages" runat="server">
                        <asp:ListItem Text="Breakfast Included" Value="breakfast"></asp:ListItem>
                        <asp:ListItem Text="Lunch Included" Value="Lunch"></asp:ListItem>
                        <asp:ListItem Text="Dinner Included" Value="Dinner"></asp:ListItem>
                        <asp:ListItem Text="Breakfast + Dinner Included" Value="breakfastanddinner"></asp:ListItem>
            </asp:CheckBoxList>
        </section>
        <section>
            <h2>How many pillows will you need?</h2>
            <asp:TextBox runat="server" ID="guest_pillows"></asp:TextBox>
            <asp:RangeValidator runat="server" EnableClientScript="true" ControlToValidate="guest_pillows" ErrorMessage="Please enter a number between 0 and 5." MinimumValue="0" MaximumValue="5" ></asp:RangeValidator>
        </section>
        <section>
            <h2>Enter Your Street Address</h2>
            <asp:TextBox runat="server" ID="guest_address"></asp:TextBox>
            <asp:RegularExpressionValidator runat="server" EnableClientScript="true" ControlToValidate="guest_address" ValidationExpression="" ErrorMessage="Please enter a valid street address."></asp:RegularExpressionValidator>
        </section>
        <section>
            <asp:Button runat="server" Text="Submit"/>
        </section>
         <section>
            <asp:ValidationSummary runat="server" ShowSummary="true" />
        </section>
    </form>
</body>
</html>
