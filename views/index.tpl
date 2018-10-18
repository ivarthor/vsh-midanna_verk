<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Petrol verð á íslandi</title>
	<link rel="stylesheet" type="text/css" href="/static/style.css">
</head>
<body>
	% include('haus.tpl')
	<div>
		<% 
			le = len(data['results'])
			for i in range(le -1):
				if (data['results'][i]['company'] != data['results'][i+1]['company']):
		%>
		<div class="stodvar">
			<a href="/company/{{data['results'][i]['company']}}">{{data['results'][i]['company']}}</a>
		</div>
		<%
		 end
		 end
		%>
	</div>
	<footer>
		% include('fotur.tpl')
	</footer>
</body>
</html>