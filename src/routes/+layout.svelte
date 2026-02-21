<script lang="ts">
  import './layout.css';
  import yalc_sharepoint from '$lib/assets/yalc-sharepoint.svg';
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
  <link rel="icon" href={yalc_sharepoint} />
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
    <a href="tel:+46702994441" class="underline">+46 070 299 4441</a> or at
    <br />
    <a href="tel:+46768999579" class="underline">+46 076 899 9579</a>
    <br />
    or you can simply just go
    <br/>
    and FUCK YOURSELF
  </div>
</footer>
