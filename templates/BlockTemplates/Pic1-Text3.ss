<div class="block clearfix picturefirst item{$Pos}">
	<% if $Header != "None" %><{$Header}>$Name</{$Header}><% end_if %>
	<div class="picturewrap span1">
	<% if Images %>
		<% loop Images %>
			$SetWidth(110)
		<% end_loop %>
	<% end_if %>
	</div>
	<div class="textwrap span3">$Content</div>
</div>