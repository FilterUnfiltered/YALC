<script lang="ts">
  import './layout.css';
  import yalc_logo from '$lib/assets/yalc-logo.svg';
  import liu_primar_vit from '$lib/assets/LiU_primar_vit.svg';
  import Sidebar from '$lib/components/Sidebar.svelte';
  import Header from '$lib/components/Header.svelte';
  import SubHeader from '$lib/components/SubHeader.svelte';
  import { theme } from '$lib/theme.svelte';

  let { children } = $props();

  $effect(() => {
    if (!theme.light) {
      document.body.classList.add('dark');
    } else {
      document.body.classList.remove('dark');
    }
  });
</script>

<svelte:head>
  <link rel="icon" href={yalc_logo} />
</svelte:head>

<Header />

<section class="flex flex-1">
  <Sidebar />

  <article class="flex flex-1 flex-col">
    <SubHeader />
    <main class="p-8">
      {@render children()}
    </main>
  </article>
</section>

<footer class="bg-[#03787c] p-4 text-white">
  <img width="200" src={liu_primar_vit} alt="liu logo" />
  No rights reservd!!!
</footer>
