<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.83.1">
    <title>Register</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/sign-in/">


    <!-- Bootstrap core CSS -->
    <link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            user-select: none;
        }

        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }
    </style>


    <!-- Custom styles for this template -->
    <link href="signing.css" rel="stylesheet" type="text/css">
</head>
<body class="text-center">

<main class="form-signin">
    <form name="Register" method="POST" action="${pageContext.request.contextPath}/controller">
        <input type="hidden" name="command" value="registration"/>
        <img class="mb-4" src="../bootstrap-5.0.1-dist/bootstrap-seeklogo.com.svg" alt="" width="72" height="57">
        <h1 class="h3 mb-3 fw-normal">Please sign up</h1>

        <div class="form-floating">
            <input type="email" class="form-control" id="floatingInput" placeholder="name@example.com" name="email"
                   value="<% if (session.getAttribute("email")!= null){%>
                <%=session.getAttribute("email")%>
                <%} else {%>
                <%=""%>
                <%}%>">
            <label for="floatingInput">Email address</label>
        </div>
        <div class="form-floating">
            <input type="password" class="form-control" id="floatingPassword" placeholder="Password" name="user_password"
                   value="<%if (session.getAttribute("user_password")!=null){%>
                    <%=session.getAttribute("user_password")%>
                    <%}%>" required>
            <label for="floatingPassword">Password</label>
        </div>

        <div class="checkbox mb-3">
            <label>
                <input type="checkbox" value="remember-me"> Remember me
            </label>
        </div>
        <button class="w-100 btn btn-lg btn-primary" type="submit">Sign up</button>
        <p class="mt-5 mb-3 text-muted">&copy; 2017-2022</p>
    </form>
</main>


</body>
</html>
