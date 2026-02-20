<script lang="ts">
	import './layout.css';
	import yalc_logo from '$lib/assets/yalc-logo.svg';
	import lisam_logo from '$lib/assets/lisam-logo.png';

	let { children } = $props();
</script>

<svelte:head>
	<link rel="icon" href={yalc_logo} />
</svelte:head>

{@render children()}
