<script lang="ts">
  import { resolve } from '$app/paths';

  const rootRoute = ['Start', 'Lisam'];
</script>

<div
  class="flex h-12 w-full items-center border-b border-gray-300 bg-[#f3f2f1] pl-8 dark:border-gray-700 dark:bg-gray-800"
>
  <nav class="flex h-full w-full items-center gap-2 text-sm text-gray-600 dark:text-gray-400">
    {#each rootRoute as route, index (route)}
      <a href={resolve('/')} class="text-lg text-black hover:underline dark:text-white">{route}</a>
      {#if index < rootRoute.length - 1}
        <span class="text-lg">/</span>
      {/if}
    {/each}
    <a
      href={resolve('/courses')}
      class="ml-auto flex h-full items-center border-l border-gray-300 px-4 text-lg hover:cursor-pointer hover:underline dark:border-gray-700"
    >
      Courses and Programs
    </a>
  </nav>
</div>
