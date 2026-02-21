<script lang="ts">
  import liu_notext_black from '$lib/assets/LiU-Black_Liu_noText.svg';

  let { children } = $props();
</script>

<header>
  <nav class="flex items-center gap-4 bg-[#80dcf3]">
    <button class="p-4 hover:bg-gray-300" aria-label="menu-select">
      <svg
        width="24"
        height="24"
        viewBox="0 0 24 24"
        fill="none"
        stroke="currentColor"
        stroke-width="2"
      >
        <circle cx="5" cy="5" r="1" fill="currentColor" />
        <circle cx="12" cy="5" r="1" fill="currentColor" />
        <circle cx="19" cy="5" r="1" fill="currentColor" />
        <circle cx="5" cy="12" r="1" fill="currentColor" />
        <circle cx="12" cy="12" r="1" fill="currentColor" />
        <circle cx="19" cy="12" r="1" fill="currentColor" />
        <circle cx="5" cy="19" r="1" fill="currentColor" />
        <circle cx="12" cy="19" r="1" fill="currentColor" />
        <circle cx="19" cy="19" r="1" fill="currentColor" />
      </svg>
    </button>
    <img class="mr-20" width="30" src={liu_notext_black} alt="YALC logo" />
    <b class="mr-20">Share</b><b>Point</b>
  </nav>
</header>
