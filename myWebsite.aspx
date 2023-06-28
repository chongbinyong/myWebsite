<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="myWebsite.aspx.cs" Inherits="Assignment.myWebsite" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My Website</title>
    <link rel="icon" href="Images/icon.png" />
    <link href="Style/myStyle.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div align="center">
            <br />
            <br />
            <br />
            <asp:Image ID="imgPicture" runat="server" ImageUrl="~/Images/chongbinyong.jpg" AlternateText="Chong Bin Yong" Width="292.5" Height="324" /><br /><br /><br />
            <asp:Label ID="lblWelcome" runat="server" Text="Hi, I'm " Font-Italic="true" Font-Size="20" />
            <asp:Label ID="lblName" runat="server" Text="Chong Bin Yong!" Font-Bold="true" Font-Italic="true" Font-Size="20"/>
        </div><br /><br />
        <div align="center">
            <asp:MultiView ID="mvOptions" runat="server" ActiveViewIndex="0">
                <asp:View ID="viewIntro" runat="server">
                    <asp:Button ID="btnHome1" runat="server" Text="HOME" CommandName="SwitchViewByID" CommandArgument="viewIntro" CssClass="button1" />
                    <asp:Button ID="btnAbout1" runat="server" Text="ABOUT" CommandName="SwitchViewByID" CommandArgument="viewAbout" CssClass="button1" OnClick="btnAbout_Click" />
                    <asp:Button ID="btnFeedback1" runat="server" Text="FEEDBACK" CommandName="SwitchViewByID" CommandArgument="viewFeedback" CssClass="button1" OnClick="btnFeedback_Click" />
                    <asp:Button ID="btnContact1" runat="server" Text="CONTACT" CommandName="SwitchViewByID" CommandArgument="viewContact" CssClass="button1" OnClick="btnContact_Click" /><br /><br /><br />
                    <asp:Label ID="lblStory" runat="server" Text="MY STORY" Font-Size="20" Font-Bold="true" /><br /><br />
                    <asp:Image ID="imgStory" runat="server" ImageUrl="~/Images/mystory.png" AlternateText="My Story" Width="795.75px" Height="587.25" />
                </asp:View>
                <asp:View ID="viewAbout" runat="server">
                    <asp:Button ID="btnHome2" runat="server" Text="HOME" CommandName="SwitchViewByID" CommandArgument="viewIntro" CssClass="button1" />
                    <asp:Button ID="btnAbout2" runat="server" Text="ABOUT" CommandName="SwitchViewByID" CommandArgument="viewAbout" CssClass="button1" OnClick="btnAbout_Click" />
                    <asp:Button ID="btnFeedback2" runat="server" Text="FEEDBACK" CommandName="SwitchViewByID" CommandArgument="viewFeedback" CssClass="button1" OnClick="btnFeedback_Click" />
                    <asp:Button ID="btnContact2" runat="server" Text="CONTACT" CommandName="SwitchViewByID" CommandArgument="viewContact" CssClass="button1" OnClick="btnContact_Click" /><br /><br /><br />
                    <table style="text-align: left; background-color: white; border: 2px solid black", width="800px">
                        <tr>
                            <td colspan="2"><asp:Label ID="lblAbout" runat="server" Text="ABOUT ME" Font-Size="20" Font-Bold="true" /></td>
                        </tr>
                        <tr>
                            <td><asp:Label ID="lblInfo" runat="server" Text="INFO" Font-Size="15" /></td>
                            <td>My name is Chong Bin Yong and now I am a student in INTI International University. I major in Software Engineering of Bachelor of Computer Science (Hons) - BCSI. 
                                I am a newbie in programming but I am passionate about learning new things. I believe the technologies will improve more faster during the pandemic besides we are in an age of digital.
                                Therefore, it is essential to improve the programming skills and that is the reason why I create this personal web application. 
                            </td>
                        </tr>
                        <tr>
                            <td><asp:Label ID="lblStrength" runat="server" Text="STRENGTH" Font-Size="15" /></td>
                            <td>
                                <asp:BulletedList ID="blStrength" runat="server" BulletStyle="CustomImage" BulletImageUrl="~/Images/heart1.png">
                                    <asp:ListItem>&nbsp;Creativity</asp:ListItem>
                                    <asp:ListItem>&nbsp;Discipline</asp:ListItem>
                                    <asp:ListItem>&nbsp;Determination</asp:ListItem>
                                    <asp:ListItem>&nbsp;Enthusiasm</asp:ListItem>
                                    <asp:ListItem>&nbsp;Patience</asp:ListItem>
                                    <asp:ListItem>&nbsp;Respectfulness</asp:ListItem>
                                </asp:BulletedList>
                            </td>
                        </tr>
                        <tr>
                            <td><asp:Label ID="lblLove" runat="server" Text="LOVE" Font-Size="15" /></td>
                            <td><asp:DropDownList ID="ddlLove" runat="server" AutoPostBack="true" CssClass="ddlLove" OnSelectedIndexChanged="ddlLove_SelectedIndexChanged">
                                    <asp:ListItem>Choose one</asp:ListItem>
                                    <asp:ListItem>Anime</asp:ListItem>
                                    <asp:ListItem>Fried Chicken</asp:ListItem>
                                    <asp:ListItem>My Family</asp:ListItem>
                                    <asp:ListItem>Study</asp:ListItem>
                                    <asp:ListItem>Travel</asp:ListItem>
                                    <asp:ListItem>Video Game</asp:ListItem>
                                </asp:DropDownList>&nbsp;
                                <asp:Image ID="imgLove" runat="server" ImageUrl="~/Images/heart.png" AlternateText="My Love" /><br />
                                <asp:Label ID="lblLoveInfo" runat="server" Text="" />
                            </td>
                        </tr>
                    </table>
                </asp:View>
                <asp:View ID="viewFeedback" runat="server">
                    <asp:Button ID="btnHome3" runat="server" Text="HOME" CommandName="SwitchViewByID" CommandArgument="viewIntro" CssClass="button1" />
                    <asp:Button ID="btnAbout3" runat="server" Text="ABOUT" CommandName="SwitchViewByID" CommandArgument="viewAbout" CssClass="button1" OnClick="btnAbout_Click" />
                    <asp:Button ID="btnFeedback3" runat="server" Text="FEEDBACK" CommandName="SwitchViewByID" CommandArgument="viewFeedback" CssClass="button1" OnClick="btnFeedback_Click" />
                    <asp:Button ID="btnContact3" runat="server" Text="CONTACT" CommandName="SwitchViewByID" CommandArgument="viewContact" CssClass="button1" OnClick="btnContact_Click" /><br /><br /><br />
                    <table style="background-color: white; border: 2px solid black", width="800px">
                        <tr>
                            <td style="text-align:center", colspan="2"><asp:Label ID="lblFeedback" runat="server" Text="FEEDBACK FORM" Font-Size="20" Font-Bold="true" /></td>
                        </tr>
                        <tr>
                            <td class="tdFeedback"><asp:Label ID="lblQuestion1" runat="server" Text="How do you rate my website?" Font-Size="15" /></td>
                            <td class="tdFeedback">
                                <asp:RadioButtonList ID="rblQuestion1" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem>⭐1</asp:ListItem>
                                    <asp:ListItem>⭐2</asp:ListItem>
                                    <asp:ListItem>⭐3</asp:ListItem>
                                    <asp:ListItem>⭐4</asp:ListItem>
                                    <asp:ListItem>⭐5</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                        <tr>
                            <td class="tdFeedback"><asp:Label ID="lblQuestion2" runat="server" Text="Name?" Font-Size="15" /></td>
                            <td class="tdFeedback"><asp:TextBox ID="txtQuestion2" runat="server" CssClass="txtFeedback" /></td>
                        </tr>
                        <tr>
                            <td class="tdFeedback"><asp:Label ID="lblQuestion3" runat="server" Text="Gender?" Font-Size="15" /></td>
                            <td class="tdFeedback">
                                <asp:DropDownList ID="ddlQuestion3" runat="server" CssClass="txtFeedback">
                                    <asp:ListItem>Male</asp:ListItem>
                                    <asp:ListItem>Female</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="tdFeedback"><asp:Label ID="lblQuestion4" runat="server" Text="Blood type?" Font-Size="15" /></td>
                            <td class="tdFeedback">
                                <asp:DropDownList ID="ddlQuestion4" runat="server" CssClass="txtFeedback" AutoPostBack="true" OnSelectedIndexChanged="ddlQuestion4_SelectedIndexChanged">
                                    <asp:ListItem>Choose one</asp:ListItem>
                                    <asp:ListItem>Type A</asp:ListItem>
                                    <asp:ListItem>Type B</asp:ListItem>
                                    <asp:ListItem>Type AB</asp:ListItem>
                                    <asp:ListItem>Type O</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="tdFeedback">&nbsp;</td>
                            <td class="tdFeedback">
                                <asp:BulletedList ID="blQuestion4_1" runat="server" BulletStyle="CustomImage" BulletImageUrl="~/Images/heart1.png"></asp:BulletedList>
                            </td>
                        </tr>
                        <tr>
                            <td class="tdFeedback"><asp:Label ID="lblQuestion5" runat="server" Text="Date of birth?" Font-Size="15" /></td>
                            <td class="tdFeedback">
                                <asp:Calendar ID="calQuestion5" runat="server" NextMonthText=">" PrevMonthText="<" OnSelectionChanged="calQuestion5_SelectionChanged" />
                                <asp:Label ID="lblQuestion5_1" runat="server" Font-Size="15" />
                            </td>
                        </tr>
                        <tr>
                            <td class="tdFeedback"><asp:Label ID="lblQuestion6" runat="server" Text="What can be improved on my website?" Font-Size="15" /></td>
                            <td class="tdFeedback">
                                <asp:CheckBoxList ID="cblQuestion6" runat="server" RepeatColumns="2" RepeatDirection="Horizontal">
                                    <asp:ListItem>Add More Contents</asp:ListItem>
                                    <asp:ListItem>Create navigation</asp:ListItem>
                                    <asp:ListItem>Implement calls-to-action</asp:ListItem>
                                    <asp:ListItem>Improve Page Speed</asp:ListItem>
                                    <asp:ListItem>Include Images and Videos</asp:ListItem>
                                    <asp:ListItem>Make it Mobile Responsive</asp:ListItem>
                                </asp:CheckBoxList>
                            </td>
                        </tr>
                        <tr>
                            <td class="tdFeedback"><asp:Label ID="lblQuestion7" runat="server" Text="Any other suggestions?" Font-Size="15" /></td>
                            <td class="tdFeedback"><asp:TextBox ID="txtQuestion7" runat="server" Columns="55" Rows="5" TextMode="MultiLine" CssClass="txtContact" /></td>
                        </tr>
                        <tr>
                            <td style="text-align:right", colspan="2"><asp:Button ID="btnSubmit1" runat="server" Text="SUBMIT" CssClass="button2" OnClick="btnSubmit1_Click" /></td>
                        </tr>
                        <tr>
                            <td class="tdFeedback">&nbsp;</td>
                            <td class="tdFeedback">&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="text-align:center", colspan="2">
                                <asp:Label ID="lblReply1" runat="server" Text="YOUR FEEDBACK" Font-Size="20" Font-Bold="true" Visible="false" /><br />
                            </td>
                        </tr>
                        <tr>
                            <td class="tdFeedback", colspan="2">
                                <asp:Label ID="lblReply2" runat="server" />
                            </td>
                        </tr>
                    </table>
                </asp:View>
                <asp:View ID="viewContact" runat="server">
                    <asp:Button ID="btnHome4" runat="server" Text="HOME" CommandName="SwitchViewByID" CommandArgument="viewIntro" CssClass="button1" />
                    <asp:Button ID="btnAbout4" runat="server" Text="ABOUT" CommandName="SwitchViewByID" CommandArgument="viewAbout" CssClass="button1" OnClick="btnAbout_Click" />
                    <asp:Button ID="btnFeedback4" runat="server" Text="FEEDBACK" CommandName="SwitchViewByID" CommandArgument="viewFeedback" CssClass="button1" OnClick="btnFeedback_Click" />
                    <asp:Button ID="btnContact4" runat="server" Text="CONTACT" CommandName="SwitchViewByID" CommandArgument="viewContact" CssClass="button1" OnClick="btnContact_Click" /><br /><br /><br />
                    <table style="text-align: left", width="600px">
                        <tr>
                            <td>
                                <asp:Label ID="lblContact1" runat="server" Text="CONTACT ME" Font-Size="20" Font-Bold="true" />
                                &nbsp;
                                <asp:Label ID="lblContact2" runat="server" Text="( I'LL BE GLAD TO ANSWER YOUR QUESTIONS! )" Font-Size="12" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblEmailName" runat="server" Text="NAME:*" Font-Size="15" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="txtEmailName" Columns="40" Rows="1" runat="server" CssClass="txtContact" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblEmailAddress" runat="server" Text="EMAIL:*" Font-Size="15" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="txtEmailAddress" Columns="40" Rows="1" runat="server" CssClass="txtContact" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblMessage" runat="server" Text="MESSAGE:*" Font-Size="15" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="txtMessage" runat="server" Columns="80" Rows="5" TextMode="MultiLine" CssClass="txtContact" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lblValidation" runat="server" Text="* DENOTES A REQUIRED FIELD" Font-Size="10" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button ID="btnSend" runat="server" Text="SEND" CssClass="button2" OnClick="btnSend_Click" />
                                &ensp;
                                <asp:Label ID="lblSend" runat="server" ForeColor="Green" Font-Bold="true" />
                            </td>
                        </tr>
                    </table>
                    <br />
                    <table width="500px">
                        <tr>
                            <td class="tdContact"><asp:Image ID="imgMyPhoneNumer" runat="server" ImageUrl="~/Images/phone.png" AlternateText="My Phone Number" />&nbsp;
                                <asp:Label ID="lblMyPhoneNumer" runat="server" Text="+60137670682" />
                            </td>
                            <td class="tdContact"><asp:Image ID="imgMyEmailAddress" runat="server" ImageUrl="~/Images/email.png" AlternateText="My Email" Width="50" />&nbsp;
                                <asp:Label ID="lblMyEmailAddress" runat="server" Text="I20018977@student.newinti.edu.my" />
                            </td>
                        </tr>
                    </table>
                </asp:View>
            </asp:MultiView>
        </div><br /><br />
        <div align="center">
            <asp:HyperLink ID="hlFacebook" runat="server" Target="_blank" NavigateUrl="https://www.facebook.com/chongbinyong" ImageUrl="~/Images/facebook1.png" Width="40" Text="Go to Facebook" />
            <asp:HyperLink ID="hlTwitter" runat="server" Target="_blank" NavigateUrl="https://twitter.com/chongbinyong" ImageUrl="~/Images/twitter1.png" Width="40" Text="Go to Twitter" />
            <asp:HyperLink ID="hlInstagram" runat="server" Target="_blank" NavigateUrl="https://www.instagram.com/binyong_1115/" ImageUrl="~/Images/instagram1.png" Width="40" Text="Go to Instagram" /><br /><br />
            <asp:Label ID="lblCopyright" runat="server" Text="© Copyright 2021 Chong Bin Yong. All rights reserved. " /><br /><br /><br />
        </div>
    </form>
</body>
</html>
