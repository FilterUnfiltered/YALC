<script lang="ts">
  import BigHeading from '$lib/components/BigHeading.svelte';
  import DifferingSpeedLink from '$lib/components/DifferingSpeedLink.svelte';

  const { data } = $props();
</script>

<BigHeading>Courses and programs</BigHeading>

<ul>
  {#each Object.entries(data.courses) as [code, course] (code)}
    <li>
      <DifferingSpeedLink to={`/courses/${code}`}>
        {code} - {course.name}
      </DifferingSpeedLink>
    </li>
  {/each}
</ul>
