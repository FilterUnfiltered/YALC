<script lang="ts">
  import liu_logo from '$lib/assets/LiU-Black_Liu_noText.svg';
  import { Globe, Newspaper, File, TableProperties, Puzzle, CirclePlus } from '@lucide/svelte';
  import { resolve } from 'path';
</script>

<ul class="flex min-h-full w-12 flex-col items-center bg-gray-100">
  <li class="flex h-12 w-12 items-center justify-center hover:cursor-pointer hover:bg-gray-500">
    <a href={resolve('/')}>
      <img src={liu_logo} alt="LiU logo" class="h-8 w-8" />
    </a>
  </li>
  <li class="flex h-12 w-12 items-center justify-center hover:cursor-pointer hover:bg-gray-500">
    <a href={resolve('/courses')}>
      <Globe class="h-4 w-4" />
    </a>
  </li>
  <li class="flex h-12 w-12 items-center justify-center hover:cursor-pointer hover:bg-gray-500">
    <a href={resolve('/news')}>
      <Newspaper class="h-4 w-4" />
    </a>
  </li>
  <li class="flex h-12 w-12 items-center justify-center hover:cursor-pointer hover:bg-gray-500">
    <a href={resolve('/files')}>
      <File class="h-4 w-4" />
    </a>
  </li>
  <li class="flex h-12 w-12 items-center justify-center hover:cursor-pointer hover:bg-gray-500">
    <a href={resolve('/lists')}>
      <TableProperties class="h-4 w-4" />
    </a>
  </li>
  <li class="flex h-12 w-12 items-center justify-center hover:cursor-pointer hover:bg-gray-500">
    <a href={resolve('/connections')}>
      <Puzzle class="h-4 w-4" />
    </a>
  </li>
  <li class="flex h-12 w-12 items-center justify-center hover:cursor-pointer hover:bg-gray-500">
    <a href={resolve('/create')}>
      <CirclePlus class="h-4 w-4" />
    </a>
  </li>
</ul>
