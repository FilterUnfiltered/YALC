<script lang="ts">
  import './layout.css';
  import sharepoint_icon from '$lib/assets/sharepoint.ico';
  import yalc_sharepoint from '$lib/assets/yalc-sharepoint.svg';
  import liu_primar_vit from '$lib/assets/LiU_primar_vit.svg';
  import Sidebar from '$lib/components/Sidebar.svelte';
  import Header from '$lib/components/Header.svelte';
  import SubHeader from '$lib/components/SubHeader.svelte';
  import { theme, LISAM_MODE_STORAGE_KEY } from '$lib/theme.svelte';
  import DifferingSpeedLink from '$lib/components/DifferingSpeedLink.svelte';
  import { browser } from '$app/environment';

  let { children } = $props();

  // Sync theme state with localStorage
  if (browser) {
    const stored = localStorage.getItem(LISAM_MODE_STORAGE_KEY);
    if (stored !== null) {
      theme.light = stored === 'true';
    }
  }

  let favicon = $derived(theme.light ? sharepoint_icon : yalc_sharepoint);
</script>

<svelte:head>
  <link rel="icon" href={favicon} />
</svelte:head>

<Header />

<section class="flex flex-1">
  <Sidebar />

  <article class="flex flex-1 flex-col">
    <SubHeader />
    <main class="px-8 py-4">
      {@render children()}
    </main>
  </article>
</section>

<footer class="flex justify-between gap-4 bg-[#03787c] p-4 text-white">
  <div>
    <img width="200" src={liu_primar_vit} alt="liu logo" />
    No rights reservd!!!
  </div>

  <div>
    For support, call us at <br />
    <DifferingSpeedLink to="tel:+46702994441" class="underline">+46 070 299 4441</DifferingSpeedLink
    > or at
    <br />
    <DifferingSpeedLink to="tel:+46768999579" class="underline">+46 076 899 9579</DifferingSpeedLink
    >
    <br />
    or you can simply just go
    <br />
    and FUCK YOURSELF
  </div>
</footer>
