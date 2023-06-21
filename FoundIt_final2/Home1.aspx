<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home1.aspx.cs" Inherits="FoundIt_final2.Home1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="CSS/GlobalStyle.css" rel="stylesheet" />
    <link href="CSS/Home.css" rel="stylesheet" />
    <script src="https://cdn.tailwindcss.com"></script>
    <title>Home</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="font-bold p-10 grid grid-cols-3">
            <img src="assets/Found It!.png" alt="logo" class="w-44 h-auto" />
            <nav>
                <div class="flex justify-center">
                    <a href="Home1.aspx" class="pr-10 pl-3 nav-link text-black hover:text-black">Home</a>
                    <a href="FoundFinal.aspx" class="pl-10 pr-10 nav-link text-gray-600 hover:text-black">Found</a>
                    <a href="HistoryFinal.aspx" class="pl-10 pr-10 nav-link active text-gray-600 hover:text-black">History</a>
                    <a href="ProfileFinal.aspx" class="pl-10 nav-link text-gray-600 hover:text-black">Profile</a>
                </div>
            </nav>
            <div class="flex justify-end items-start">
                <a href="LogOut.aspx">
                    <img src="assets/Logout.png" alt="logout" class="w-6 h-auto" />
                </a>
            </div>
        </div>
    <!-- Notification -->
    <div class="top-side flex justify-center items-center pb-10">
        <div class="notifbar  bg-white rounded-xl py-3 px-6 flex items-center justify-between w-2/6">
            <img src="assets/notification.png" alt="notif" class="order-first">
            <asp:Label ID="notiflabel" runat="server" Text=""></asp:Label>
            <!--<span class="text-gray-600">No Notifications Yet</span>-->
            <img src="assets/caret_down.png" alt="downbar" class="order-last">
        </div>
    </div>
    <!-- Content -->
    <div id="form1" class="flex justify-center">
        <div class="">
            <table class="card pt-10 pb-4 pl-10 pr-10 mb-20 max-w-6xl rounded-3xl bg-white shadow-xl">
                <tr class="font-bold text-xl grid grid-cols-5 gap-0 p-10 flex justify-start">
                    <th class="flex justify-start">Lost ID</th>
                    <th class="flex justify-start">Name</th>
                    <th class="flex justify-start">Type</th>
                    <th class="flex justify-start">Description</th>
                    <th class="max-w-1 flex justify-start">Last Location</th>
                </tr>
                <%foreach (var item in itemList)
                    { %>
                    
                    <tr class="text-lg grid grid-cols-5 mb-5 border-b ml-10 mr-10 ">
                        <td><%= item.itemID %></td>
                        <td><%= item.itemName %></td>
                        <td><%= item.itemType %></td>
                        <td class="pr-5 overflow-hidden mb-5 "><%= item.itemDescription %></td>
                        <td><%= item.LastLocation %></td>
                    </tr>
                <%} %>
            </table>
                <a href="InsertLostListFinal.aspx"
                    class="fixed bottom-5 right-12 bg-white hover:bg-gray-100 text-gray-500 rounded-full w-16 h-16 flex items-center justify-center">
                    <span class="text-4xl">+</span>
                </a>
            </div>
        </div>
    </div>
    <!-- footer -->
    <footer class="bg-gray-200 py-4 bottom-0 w-full">
        <div class="container mx-auto px-4 flex justify-between items-start max-width: 900px">
            <div class="text-left m-5">
                <div class="logo mb-5">
                    <img src="assets/Found It!.png" alt="Logo" class="h-6">
                </div>
                <p class="text-gray-600">Office: +62 566 5262</p>
                <p class="text-gray-600">Contact Center: +62 2927 8888</p>
                <p class="text-gray-600">Fax: +62 567 1413</p>
                <p class="text-gray-600">Email: Customercare@jne.co.id</p>
            </div>
            <div class="text-right m-7 flex flex-col justify-between">
                <div>
                    <p class="text-black-600 font-bold mb-3">Head Office</p>
                    <p class="text-black-600">Jl. Raya Serpong No. 11</p>
                    <p class="text-black-600">PT. FoundIt</p>
                    <p class="text-black-600">Tangerang Selatan, Banten 15325</p>
                    <p class="text-black-600">Indonesia</p>
                </div>
                <div class="flex-grow"></div>
            </div>
        </div>
    </footer>
    </form>
</body>
</html>
