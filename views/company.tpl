<!DOCTYPE html>
<html>
<head>
	<title>{{co}}</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="/static/style.css">
</head>
<body>
	<table>
		<tr>
			<th>fyrirtæki</th>
			<th>staður</th>
		</tr>
		<%
			cnt = 0
			for i in data['results']:
				if i ['company'] == co:
				cnt += 1
		%>
		<tr>
			<td>
				<a href="/moreinfo/{{i['key']}}">{{i['company']}}</a>
			</td>
			<td>{{i['name']}}</td>
		</tr>
		<%
				end
			end
		%>
	</table>
	<h3>Fjöldi stöðva: {{cnt}}</h3>
</body>
</html>