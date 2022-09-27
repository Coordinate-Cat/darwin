<script>
	import { page } from '$app/stores';
</script>

<header>
	<div class="heading">
		<a class="heading_deco_none" href="/">
			<h1 class="heading_title">dotset<span class="dot">.</span></h1>
		</a>
	</div>

	<ul class="nav">
		<li class:active={$page.url.pathname === '/'}>
			<a href="/">Home</a>
		</li>
		<li class="about" class:active={$page.url.pathname === '/about'}>
			<a href="/about">About</a>
		</li>
	</ul>
</header>

<style lang="scss">
.heading {
	&_deco_none {
		text-decoration: none;
	}
	&_title {
		margin-top: 2px;
		margin-bottom: 0;
		padding: 0 15px;
		font-size: 5rem;
		font-weight: 600;
		border-bottom: 4px solid var(--main-color);
	}
}
.nav {
	display: flex;
	font-weight: 600;
	margin: 10px 0 10px 20px;
}
.about {
	margin-left: 10px;
}
.dot {
	color: var(--fourthly-color);
}
</style>
