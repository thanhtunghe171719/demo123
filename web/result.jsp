<!DOCTYPE html>
<html>
<head>
    <title>Result</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
    <form action="sum" method="POST">
        <p> a = <input type="text" name="a" value="${param.a}"/>
        <p> b = <input type="text" name="b" value="${param.b}"/>
        <p> c = <input type="text" name="c" value="${param.c}"/>
        <p> d = <input type="text" name="d" value="${d}" readonly/>
        <p> <input type="Submit" value="DO"/>
    </form>
</body>
</html>
