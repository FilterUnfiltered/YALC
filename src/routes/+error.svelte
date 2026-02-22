<script lang="ts">
  export let error: Error | null = null;
  export let status: number | null = null;

  import jonas from '$lib/assets/jonas-waifu.png';
</script>

<svelte:head>
  <title>{status ?? 'Error'} — YALC</title>
</svelte:head>

<main class="flex min-h-screen items-center justify-center gap-8 bg-gray-50 dark:bg-gray-900">
  <img src={jonas} alt="Jonas Kvarnström" class="mx-0 mt-6 h-48 w-48 rounded-full object-cover" />
  <div class="mx-4 max-w-xl rounded-lg bg-white p-8 text-center shadow dark:bg-gray-900">
    <h1 class="text-6xl font-extrabold text-slate-900 dark:text-slate-100">
      {status ?? 'Owoopsie'}
    </h1>
    <h2 class="mt-4 text-2xl font-semibold text-slate-700 dark:text-slate-200">
      {status === 404 ? 'Page not found' : "We couldn't find the page you were looking for >.<"}
    </h2>
    {#if status === 404}
      <p class="mt-2 text-slate-600 dark:text-slate-400">
        UwU, we couldn't find the page you were looking for.
      </p>
    {:else}
      <p class="mt-2 text-slate-600 dark:text-slate-400">
        Wait, I think I found it! Just click <a
          href="https://www.youtube.com/watch?v=dQw4w9WgXcQ"
          class="text-sky-600 hover:underline">here</a
        >
        here to go to the page!
      </p>

      <!-- move this to the right? not sure what tailwind class would do that -->
      <p class="mt-2 text-slate-600 dark:text-slate-400">- Jonas Kvarnström</p>

      {#if error}
        <pre
          class="mt-4 max-h-40 overflow-auto rounded bg-red-50 p-2 text-left text-sm text-red-700 dark:bg-red-900/30">{error.message}</pre>
      {/if}
    {/if}
  </div>
</main>
