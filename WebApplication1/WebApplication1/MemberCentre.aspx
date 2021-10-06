<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MemberCentre.aspx.cs" Inherits="WebApplication1.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>客戶中心</h2>
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="MemberId" DataSourceID="SqlDataSource1">
        <AlternatingItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="編輯" />
                </td>
                <td>
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                </td>
                <td>
                    <asp:Label ID="PassWordLabel" runat="server" Text='<%# Eval("PassWord") %>' />
                </td>
                <td>
                    <asp:Label ID="AuthorityLabel" runat="server" Text='<%# Eval("Authority") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="EnableCheckBox" runat="server" Checked='<%# Eval("Enable") %>' Enabled="false" />
                </td>
                <td>
                    <asp:Label ID="MemberIdLabel" runat="server" Text='<%# Eval("MemberId") %>' />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="取消" />
                </td>
                <td>
                    <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                </td>
                <td>
                    <asp:TextBox ID="PassWordTextBox" runat="server" Text='<%# Bind("PassWord") %>' />
                </td>
                <td>
                    <asp:TextBox ID="AuthorityTextBox" runat="server" Text='<%# Bind("Authority") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="EnableCheckBox" runat="server" Checked='<%# Bind("Enable") %>' />
                </td>
                <td>
                    <asp:Label ID="MemberIdLabel1" runat="server" Text='<%# Eval("MemberId") %>' />
                </td>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="">
                <tr>
                    <td>未傳回資料。</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="插入" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="清除" />
                </td>
                <td>
                    <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                </td>
                <td>
                    <asp:TextBox ID="PassWordTextBox" runat="server" Text='<%# Bind("PassWord") %>' />
                </td>
                <td>
                    <asp:TextBox ID="AuthorityTextBox" runat="server" Text='<%# Bind("Authority") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="EnableCheckBox" runat="server" Checked='<%# Bind("Enable") %>' />
                </td>
                <td>&nbsp;</td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="編輯" />
                </td>
                <td>
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                </td>
                <td>
                    <asp:Label ID="PassWordLabel" runat="server" Text='<%# Eval("PassWord") %>' />
                </td>
                <td>
                    <asp:Label ID="AuthorityLabel" runat="server" Text='<%# Eval("Authority") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="EnableCheckBox" runat="server" Checked='<%# Eval("Enable") %>' Enabled="false" />
                </td>
                <td>
                    <asp:Label ID="MemberIdLabel" runat="server" Text='<%# Eval("MemberId") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                            <tr runat="server" style="">
                                <th runat="server"></th>
                                <th runat="server">Name</th>
                                <th runat="server">PassWord</th>
                                <th runat="server">Authority</th>
                                <th runat="server">Enable</th>
                                <th runat="server">MemberId</th>
                            </tr>
                            <tr id="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="">
                        <asp:DataPager ID="DataPager1" runat="server">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                            </Fields>
                        </asp:DataPager>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="編輯" />
                </td>
                <td>
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                </td>
                <td>
                    <asp:Label ID="PassWordLabel" runat="server" Text='<%# Eval("PassWord") %>' />
                </td>
                <td>
                    <asp:Label ID="AuthorityLabel" runat="server" Text='<%# Eval("Authority") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="EnableCheckBox" runat="server" Checked='<%# Eval("Enable") %>' Enabled="false" />
                </td>
                <td>
                    <asp:Label ID="MemberIdLabel" runat="server" Text='<%# Eval("MemberId") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:YtsysTestConnectionString %>" DeleteCommand="DELETE FROM [Member] WHERE [MemberId] = @original_MemberId AND [Name] = @original_Name AND [PassWord] = @original_PassWord AND (([Authority] = @original_Authority) OR ([Authority] IS NULL AND @original_Authority IS NULL)) AND (([Enable] = @original_Enable) OR ([Enable] IS NULL AND @original_Enable IS NULL))" InsertCommand="INSERT INTO [Member] ([Name], [PassWord], [Authority], [Enable]) VALUES (@Name, @PassWord, @Authority, @Enable)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Name], [PassWord], [Authority], [Enable], [MemberId] FROM [Member]" UpdateCommand="UPDATE [Member] SET [Name] = @Name, [PassWord] = @PassWord, [Authority] = @Authority, [Enable] = @Enable WHERE [MemberId] = @original_MemberId AND [Name] = @original_Name AND [PassWord] = @original_PassWord AND (([Authority] = @original_Authority) OR ([Authority] IS NULL AND @original_Authority IS NULL)) AND (([Enable] = @original_Enable) OR ([Enable] IS NULL AND @original_Enable IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_MemberId" Type="Int32" />
            <asp:Parameter Name="original_Name" Type="String" />
            <asp:Parameter Name="original_PassWord" Type="String" />
            <asp:Parameter Name="original_Authority" Type="Int32" />
            <asp:Parameter Name="original_Enable" Type="Boolean" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="PassWord" Type="String" />
            <asp:Parameter Name="Authority" Type="Int32" />
            <asp:Parameter Name="Enable" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="PassWord" Type="String" />
            <asp:Parameter Name="Authority" Type="Int32" />
            <asp:Parameter Name="Enable" Type="Boolean" />
            <asp:Parameter Name="original_MemberId" Type="Int32" />
            <asp:Parameter Name="original_Name" Type="String" />
            <asp:Parameter Name="original_PassWord" Type="String" />
            <asp:Parameter Name="original_Authority" Type="Int32" />
            <asp:Parameter Name="original_Enable" Type="Boolean" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:Label ID="Label1" runat="server" Text="帳號:"></asp:Label>
    <asp:Label ID="account" runat="server" Text="Label"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

    <asp:Label ID="Label3" runat="server" Text="密碼:"></asp:Label>
    <asp:Label ID="password" runat="server" Text="Label"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <br /><br />
    <asp:Label ID="Label2" runat="server" Text="姓名:"></asp:Label>
    <asp:Label ID="name" runat="server" Text="Label"></asp:Label>
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>

    <asp:Label ID="Label4" runat="server" Text="生日:"></asp:Label>
    <asp:Label ID="birthday" runat="server" Text="Label"></asp:Label>
    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
    <br /><br />
    <asp:Label ID="Label5" runat="server" Text="Email:"></asp:Label>
    <asp:Label ID="email" runat="server" Text="Label"></asp:Label>
    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
    <br /><br />
    <asp:Label ID="Label6" runat="server" Text="權限:"></asp:Label>
    <asp:Label ID="authority" runat="server" Text="Label"></asp:Label>
    <asp:DropDownList ID="DropDownList2" runat="server">
        <asp:ListItem Value="3">一般會員</asp:ListItem>
        <asp:ListItem Value="2">VIP會員</asp:ListItem>
        <asp:ListItem Value="1">管理者</asp:ListItem>
    </asp:DropDownList>

    <asp:Label ID="Label8" runat="server" Text="是否啟用:"></asp:Label>
    <asp:Label ID="enable" runat="server" Text="Label"></asp:Label>
    <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem Value="true">已啟用</asp:ListItem>
        <asp:ListItem Value="false">停權</asp:ListItem>
    </asp:DropDownList>
</asp:Content>
