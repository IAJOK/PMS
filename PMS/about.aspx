<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="PMS.about" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="MsoNormal">
        <span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">人事管理系统在企业管理中占据着重要的地位，针对传统人工管理数据可能出现的数据冗余、信息丢失、效率低下等问题，本软件采用软件工程思想，使用</span><span lang="EN-US">c#</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">语言实现系统的相关模块，使用</span><span lang="EN-US"> VS2017 </span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">内置</span><span lang="EN-US"> SQL Express </span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">数据库，实现与企业人事管理相适应的人事管理系统，该系统操作简单、功能实用，实现人事基本信息管理的基本功能。</span><o:p></o:p></p>
    <p class="MsoNormal" style="font-family: 宋体">
        本系统主要功能面向两种用户——主管用户和员工用户，主管用户可以进行对数据的增删改查，包括对员工表和对部门表的操作。员工用户能进行的操作则进行了一定的限制,只能查询部分信息以及修改自己的登陆密码。</p>
    <p class="MsoNormal" style="font-family: 宋体">
        主要实现的功能有以下几种：</p>
    <p class="MsoNormal">
        <![if !supportLists]><span lang="EN-US" style="mso-fareast-font-family:
&quot;Times New Roman&quot;"><span style="mso-list:Ignore">(1)<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><span style="font-family:宋体;mso-ascii-font-family:
&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">信息查询：</span><span lang="EN-US"><br />
        </span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">查询员工信息、查询部门信息。</span><span lang="EN-US"><br />
        </span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">注：信息查询可基于单条件查询也可基于多条件复合查询。</span> <span lang="EN-US"><o:p></o:p></span>
    </p>
    <p class="MsoNormal">
        <![if !supportLists]><span lang="EN-US" style="mso-fareast-font-family:
&quot;Times New Roman&quot;"><span style="mso-list:Ignore">(2)<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><span style="font-family:宋体;mso-ascii-font-family:
&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">信息录入：</span><span lang="EN-US"><br />
        </span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">录入员工信息、录入部门信息。</span><span lang="EN-US"><br />
        </span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">注：信息录入时，需要考虑数据信息的完整性、有效性等</span> <span lang="EN-US"><o:p></o:p></span>
    </p>
    <p class="MsoNormal">
        <![if !supportLists]><span lang="EN-US" style="mso-fareast-font-family:
&quot;Times New Roman&quot;"><span style="mso-list:Ignore">(3)<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><span style="font-family:宋体;mso-ascii-font-family:
&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">信息删除：</span><span lang="EN-US"><br />
        <span style="mso-spacerun:yes">&nbsp;</span></span><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">删除员工信息、删除部门信息。</span><span lang="EN-US"><br />
        </span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">注：可单条记录删除，也可批量删除，执行该项操作时需要考虑删除所需的约束条件。</span> <span lang="EN-US"><o:p></o:p></span>
    </p>
    <p class="MsoNormal">
        <![if !supportLists]><span lang="EN-US" style="mso-fareast-font-family:
&quot;Times New Roman&quot;"><span style="mso-list:Ignore">(4)<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><span style="font-family:宋体;mso-ascii-font-family:
&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">信息修改：</span><span lang="EN-US"><br />
        </span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">修改员工信息、修改部门信息。</span><span lang="EN-US"><br />
        </span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">注：进行修改操作时，需要保证数据的一致性</span> <span lang="EN-US"><o:p></o:p></span>
    </p>
    <p class="MsoNormal">
        <![if !supportLists]><span lang="EN-US" style="mso-fareast-font-family:
&quot;Times New Roman&quot;"><span style="mso-list:Ignore">(5)<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><span style="font-family:宋体;mso-ascii-font-family:
&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">信息浏览：</span><span lang="EN-US"><br />
        <span style="mso-spacerun:yes">&nbsp;</span></span><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">浏览个别员工信息、浏览部门所属所有员工信息</span> <span lang="EN-US"><o:p></o:p></span>
    </p>
    <p class="MsoNormal">
        <![if !supportLists]><span lang="EN-US" style="mso-fareast-font-family:
&quot;Times New Roman&quot;"><span style="mso-list:Ignore">(6)<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><span style="font-family:宋体;mso-ascii-font-family:
&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">数据报表：</span><span lang="EN-US"><br />
        </span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">打印个别员工信息、打印部门所属所有员工信息。</span><span lang="EN-US"><br />
        </span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">注：按照一定的格式在相应的窗口界面上显示用户、部门等信息，并提供通过打印机</span> <span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">打印输出的功能。</span> <span lang="EN-US"><o:p></o:p></span>
    </p>
    <p class="MsoNormal">
        <![if !supportLists]><span lang="EN-US" style="mso-fareast-font-family:
&quot;Times New Roman&quot;"><span style="mso-list:Ignore">(7)<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><span style="font-family:宋体;mso-ascii-font-family:
&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">用户管理与用户登陆功能模块：</span><span lang="EN-US"><br />
        </span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">系统可根据需要添加、删除用户，并可对已有的用户信息进行修改操作；在添加新用户时，可定义其操作权限（查询、更新、浏览、报表等权限）；用户密码可进行随时修改；各种不同身份的用户登陆系统后，可享有不同的系统操作权限。</span> <span lang="EN-US"><o:p></o:p></span>
    </p>
    <p class="MsoNormal">
        <![if !supportLists]><span lang="EN-US" style="mso-fareast-font-family:
&quot;Times New Roman&quot;"><span style="mso-list:Ignore">(8)<span style="font:7.0pt &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><span style="font-family:宋体;mso-ascii-font-family:
&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">系统帮助及使用说明功能模块：</span><span lang="EN-US"><br />
        </span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">为用户提供必要的在线帮助功能和简要的操作使用说明。</span><span lang="EN-US"><o:p></o:p></span></p>
    <p class="MsoNormal" style="font-family: 宋体">
        开发人员：</p>
    <p class="MsoNormal" style="font-family: 宋体">
        201624131347 郑风扬</p>
    <p class="MsoNormal" style="font-family: 宋体">
        完成时间：2019-6-28</p>
</asp:Content>
