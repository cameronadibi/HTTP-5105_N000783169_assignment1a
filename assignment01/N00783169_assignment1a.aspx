<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="N00783169_assignment1a.aspx.cs" Inherits="assignment01.WebForm1" %>

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
            </div>
            <div>
                <label>Choose Honorific</label>
                    <asp:RadioButtonList runat="server" ID="aspx_guesthonorific">
                        <asp:ListItem Text="Mr." Value="mr"></asp:ListItem>
                        <asp:ListItem Text="Ms." Value="ms"></asp:ListItem>
                        <asp:ListItem Text="Mrs." Value="mrs"></asp:ListItem>
                        <asp:ListItem Text="Dr." Value="dr"></asp:ListItem>
                    </asp:RadioButtonList>
            </div>
            <div>
                <label>Email:</label>
                <input type="text" id="guest_email" name="guest_email"/>
            </div>
        </section>
        <section>
            <h2>What kind of room are you looking for?</h2>
            <asp:DropDownList runat="server" ID="aspx_room_selection">
                    <asp:ListItem Text="Single" Value="roomselection1"></asp:ListItem>
                    <asp:ListItem Text="Double" Value="roomselection2"></asp:ListItem>
                    <asp:ListItem Text="Triple" Value="roomselection3"></asp:ListItem>
                    <asp:ListItem Text="Quad" Value="roomselection4"></asp:ListItem>
                    <asp:ListItem Text="King" Value="roomselection5"></asp:ListItem>
                    <asp:ListItem Text="Queen" Value="roomselection5"></asp:ListItem>
                    <asp:ListItem Text="Twin" Value="roomselection7"></asp:ListItem>
            </asp:DropDownList>
        </section>
        <section>
            <h2>How many people are staying?</h2>
            <asp:RadioButtonList runat="server" ID="aspx_numberofguests">
                <asp:ListItem Text="1" Value="one"></asp:ListItem>
                <asp:ListItem Text="2" Value="two"></asp:ListItem>
                <asp:ListItem Text="3" Value="three"></asp:ListItem>
                <asp:ListItem Text="4" Value="four"></asp:ListItem>
                <asp:ListItem Text="5+" Value="five"></asp:ListItem>
             </asp:RadioButtonList>
        </section>
        <section>
            <h2>What would you like included in your room?</h2>
                 <asp:CheckBoxList ID="aspx_roomoptions" runat="server">
                        <asp:ListItem Text="Room Service" Value="roomservice"></asp:ListItem>
                        <asp:ListItem Text="A View" Value="view"></asp:ListItem>
                        <asp:ListItem Text="Pull-Out Bed" Value="pulloutbed"></asp:ListItem>
                        <asp:ListItem Text="TV Entertainment Channels" Value="channels"></asp:ListItem>
                 </asp:CheckBoxList>
        </section>
        <section>
            <h2>Which packaged deals would you like?</h2>
            <asp:CheckBoxList ID="aspx_packages" runat="server">
                        <asp:ListItem Text="Breakfast Included" Value="breakfast"></asp:ListItem>
                        <asp:ListItem Text="Lunch Included" Value="Lunch"></asp:ListItem>
                        <asp:ListItem Text="Dinner Included" Value="Dinner"></asp:ListItem>
                        <asp:ListItem Text="Breakfast + Dinner Included" Value="breakfastanddinner"></asp:ListItem>
            </asp:CheckBoxList>
        </section>
        <section>
            <asp:Button runat="server" Text="Submit"/>
        </section>
    </form>
</body>
</html>
