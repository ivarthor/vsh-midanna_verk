<!DOCTYPE html>
<html>
<head>
	<title>{{k}}</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="/static/style.css">
</head>
<body>
	<h1>Nánari upplýsingar</h1>
	<%
		for i in data['results']:
			if i['key'] == k:
	%>
		<h3>söluaðili: {{i['company']}}</h3>
		<h3>Staður: {{i['name']}}</h3>
		<h3>Bensín: {{i['bensin95']}}</h3>
		<h3>Dísel: {{i['diesel']}}</h3>
	<%
		end
	%>
</body>
</html>