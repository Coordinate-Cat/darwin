<script>
// https://github.com/ghostdevv/svelte-copy
import { copy } from 'svelte-copy';

let copied = ``;
const d = {
// Hacking Machine
hackingMachine: `macOS Monterey ver 12.5.1
MacBook Pro (13-inch, 2017, Two Thunderbolt 3 ports)
2.3GHz DualCore IntelCore i5
16GB 2133 MHz LPDDR3
Intel Iris Plus Graphics 640 1536MB`,

nixOne: `sh <(curl -L https://nixos.org/nix/install)`,
nixTwo: `nix-shell -p nix-info --run "nix-info -m"`,

nixError: `sh <(curl -L https://nixos.org/nix/install)`,
errorDetails: `error: failed to bootstrap /nix If you enabled FileVault after booting, this is likely a known issue
with macOS that you'll have to reboot to fix. If you didn't enable FV,
though, please open an issue describing how the system that you see
this error on was set up.`,

// home-manager
hm: `nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager
nix-channel --update`,

// nixpkgs
nixPkgs: `nix-channel --add https://nixos.org/channels/nixpkgs-unstable
nix-channel --update`,

// Path
nixPath: `export NIX_PATH=$HOME/.nix-defexpr/channels\${NIX_PATH:+:}$NIX_PATH
nix-shell '<home-manager>' -A install`,

// gitui config file
config: `mkdir ~/.ssh
cd ~/.ssh
touch config
vim config`,

// write config file
writeConfig: `Host github github.com
    HostName github.com
    User git
    IdentityFile ~/.ssh/github`,

// make ssh one
makeSshOne: `ssh-keygen -t ecdsa -C "example@gmail.com"
pbcopy < ~/.ssh/github.pub
ssh-add ~/.ssh/github
ssh -T git@github.com`,

// make ssh two
makeSshTwo: `pbcopy < ~/.ssh/github.pub
ssh-add ~/.ssh/github
ssh -T git@github.com`,

// install repo
install: `cd ~/.config
rm -rf nixpkgs
git clone git@github.com:Coordinate-Cat/darwin.git nixpkgs

home-manager switch
source ~/.zshrc`,
}

</script>

<svelte:head>
	<title>dset</title>
	<meta name="description" content="" />
	<link rel="stylesheet" href="https://unpkg.com/mono-icons@1.0.5/iconfont/icons.css">
</svelte:head>

<!-- first section -->
<section class="section_first">
	<h2>Hacking Machine</h2>
	<div class="details">
		<img src="vscode.png" alt="vscode">
		<pre>{d.hackingMachine}</pre>
	</div>
</section>
<!-- first section -->

<!-- second section -->
<section class="section_second">
	<h2>Nix</h2>

	<div class="details">
		<pre>{d.nixOne}</pre>
		<button use:copy={d.nixOne} on:svelte-copy={() => copied = d.nixOne }>
			<!-- check copy -->
			{#if copied === d.nixOne}
				<i class="mi mi-clipboard-check"><span class="u-sr-only"></span></i>
			{:else}
				<i class="mi mi-clipboard"><span class="u-sr-only"></span></i>
			{/if}
		</button>
	</div>

	<p>Quit the terminal once.</p>

	<div class="details">
		<pre>{d.nixTwo}</pre>
		<button use:copy={d.nixTwo} on:svelte-copy={() => copied = d.nixTwo }>
			<!-- check copy -->
			{#if copied === d.nixTwo}
				<i class="mi mi-clipboard-check"><span class="u-sr-only"></span></i>
			{:else}
				<i class="mi mi-clipboard"><span class="u-sr-only"></span></i>
			{/if}
		</button>
	</div>

	<hr>
	<h3>Error</h3>

	<p>The following error may occur when the very first command is executed.</p>
	<pre>{d.errorDetails}</pre>
	<p>Solution</p>
	<ul class="solution">
		<li>mac system settings</li>
		<li>security and privacy</li>
		<li>Filevault on/off</li>
		<li>mac reboot</li>
	</ul>
</section>
<!-- second section -->

<!-- third section -->
<section class="section_third">
	<h2>Home-manager</h2>
	<div class="details">
		<pre>{d.hm}</pre>
		<button use:copy={d.hm} on:svelte-copy={() => copied = d.hm }>
			<!-- check copy -->
			{#if copied === d.hm}
				<i class="mi mi-clipboard-check"><span class="u-sr-only"></span></i>
			{:else}
				<i class="mi mi-clipboard"><span class="u-sr-only"></span></i>
			{/if}
		</button>
	</div>

	<h3>nixpkgs</h3>

	<div class="details">
		<pre>{d.nixPkgs}</pre>
		<button use:copy={d.nixPkgs} on:svelte-copy={() => copied = d.nixPkgs }>
			<!-- check copy -->
			{#if copied === d.nixPkgs}
				<i class="mi mi-clipboard-check"><span class="u-sr-only"></span></i>
			{:else}
				<i class="mi mi-clipboard"><span class="u-sr-only"></span></i>
			{/if}
		</button>
	</div>

	<h3>nix path</h3>

	<div class="details">
		<pre>{d.nixPath}</pre>
		<button use:copy={d.nixPath} on:svelte-copy={() => copied = d.nixPath }>
			<!-- check copy -->
			{#if copied === d.nixPath}
				<i class="mi mi-clipboard-check"><span class="u-sr-only"></span></i>
			{:else}
				<i class="mi mi-clipboard"><span class="u-sr-only"></span></i>
			{/if}
		</button>
	</div>
</section>
<!-- third section -->

<!-- fourth section -->
<section class="section_fourth">
	<h2>Gitui</h2>

	<p>make config file.</p>

	<div class="details">
		<pre>{d.config}</pre>
		<button use:copy={d.config} on:svelte-copy={() => copied = d.config }>
			<!-- check copy -->
			{#if copied === d.config}
				<i class="mi mi-clipboard-check"><span class="u-sr-only"></span></i>
			{:else}
				<i class="mi mi-clipboard"><span class="u-sr-only"></span></i>
			{/if}
		</button>
	</div>

	<p>write config.</p>

	<div class="details">
		<pre>{d.writeConfig}</pre>
		<button use:copy={d.writeConfig} on:svelte-copy={() => copied = d.writeConfig }>
			<!-- check copy -->
			{#if copied === d.writeConfig}
				<i class="mi mi-clipboard-check"><span class="u-sr-only"></span></i>
			{:else}
				<i class="mi mi-clipboard"><span class="u-sr-only"></span></i>
			{/if}
		</button>
	</div>

	<p>make ssh-key.</p>

	<div class="details">
		<pre>{d.makeSshOne}</pre>
		<button use:copy={d.makeSshOne} on:svelte-copy={() => copied = d.makeSshOne }>
			<!-- check copy -->
			{#if copied === d.makeSshOne}
				<i class="mi mi-clipboard-check"><span class="u-sr-only"></span></i>
			{:else}
				<i class="mi mi-clipboard"><span class="u-sr-only"></span></i>
			{/if}
		</button>
	</div>

	<p>Type "github" in the first question...</p>

	<div class="details">
		<pre>{d.makeSshTwo}</pre>
		<button use:copy={d.makeSshTwo} on:svelte-copy={() => copied = d.makeSshTwo }>
			<!-- check copy -->
			{#if copied === d.makeSshTwo}
				<i class="mi mi-clipboard-check"><span class="u-sr-only"></span></i>
			{:else}
				<i class="mi mi-clipboard"><span class="u-sr-only"></span></i>
			{/if}
		</button>
	</div>
</section>
<!-- fourth section -->

<!-- fifth section -->
<section class="section_fifth">
	<h2>Install Repository</h2>

	<p>
		<a href="https://github.com/Coordinate-Cat/darwin" target="blank">Coordinate-Cat/darwin</a>
	</p>

	<div class="details">
		<pre>{d.install}</pre>
		<button use:copy={d.install} on:svelte-copy={() => copied = d.install }>
			<!-- check copy -->
			{#if copied === d.install}
				<i class="mi mi-clipboard-check"><span class="u-sr-only"></span></i>
			{:else}
				<i class="mi mi-clipboard"><span class="u-sr-only"></span></i>
			{/if}
		</button>
	</div>
</section>
<!-- fifth section -->

<!-- sixth section -->


<style lang="scss">
$section-mar: 30px 20px;
$section-pad: 10px 20px;
section{
  top: 20px;
	position: sticky;
	margin: $section-mar;
	padding: $section-pad;
	border: 4px solid var(--main-color);
	background-color: var(--firstly-color);
	&:first-child {
		margin-top: 0;
	}
	&:last-child {
		margin-bottom: 600px;
	}
}

.solution {
	margin-left: 30px;
	li {
		list-style-type: decimal;
	}
}

.details {
	position: relative;
	button {
		position: absolute;
		top: 0;
		right: 0;
	}
}

button {
	border: none;
	cursor: pointer;
	font-weight: 600;
	width: 68px;
	height: 100%;
	padding: 4px 10px;
	margin: 0;
	box-sizing: border-box;
	color: var(--sub-color);
	border: 4px solid var(--main-color);
	background-color: var(--main-color);
	&:hover {
		box-sizing: border-box;
		color: var(--main-color);
		background-color: var(--sub-color);
	}
}

i.mi, .mi-clipboard-check, .mi-clipboard {
	font-size: 1.5rem;
}
</style>
