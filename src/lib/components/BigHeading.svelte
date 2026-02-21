<script lang="ts">
  import { cn } from '$lib/utils';
  import type { Snippet } from 'svelte';
  import type { HTMLAttributes } from 'svelte/elements';

  type Props = HTMLAttributes<HTMLHeadingElement> & {
    children: Snippet;
  };
  const { children, class: className, ...rest }: Props = $props();
</script>

<h1 class={cn('flex items-center gap-6 text-2xl font-semibold', className)} {...rest}>
  {@render children()}
</h1>
