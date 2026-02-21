<script lang="ts">
  import './layout.css';
  import yalc_logo from '$lib/assets/yalc-logo.svg';
  import lisam_logo from '$lib/assets/lisam-logo.png';
  import liu_primar_vit from '$lib/assets/LiU_primar_vit.svg';
  import Sidebar from '$lib/components/Sidebar.svelte';
  import Header from '$lib/components/Header.svelte';
  import SubHeader from '$lib/components/SubHeader.svelte';
  import { getContext } from 'svelte';
  import { theme } from '$lib/theme.svelte';

  let { children } = $props();
  let black = $state<boolean>(getContext<boolean>('lisam-speed'));

  $effect(() => {
    console.log(theme.light);
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
      <h1 class="flex items-center gap-2 text-2xl font-semibold">
        <img src={lisam_logo} alt="Lisam logo" class="h-12 w-12" />
        Lisam
      </h1>
      {@render children()}
    </main>
  </article>
</section>

<footer class="bg-[#03787c] p-4 text-white">
  <img width="200" src={liu_primar_vit} alt="liu logo" />
  No rights reservd!!!
</footer>
