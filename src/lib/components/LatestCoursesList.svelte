<script lang="ts">
  type Course = {
    code: string;
    name: string;
  };
  import yaml from 'js-yaml';
  import coursesYamlString from '$lib/assets/courses.yaml?raw';
  const courses = yaml.load(coursesYamlString) as Course[];

  import { GraduationCap } from '@lucide/svelte';
</script>

<div class="inline-grid grid-cols-[auto_auto] items-stretch border-b border-[#03787c] bg-[#f0f9fa]">
  {#each courses as course}
    <!-- FIXME: use type-safe/corrected href? -->
    <a
      class="truncate border-t border-[#03787c] p-4 font-semibold whitespace-nowrap"
      href={course.code}
    >
      {course.code} - {course.name}
    </a>
    <svg
      width="2em"
      height="2em"
      viewBox="0 0 32 32"
      class="box-content border-t border-[#03787c] p-4 text-[#03787c]"
      ><title>Student</title><g
        stroke-width="1.5"
        fill="none"
        fill-rule="evenodd"
        stroke-linecap="round"
        stroke-linejoin="round"
        ><path
          d="M24.5 14.614v4.957C24.5 21.465 20.694 23 16 23s-8.5-1.535-8.5-3.43v-4.956l8.5 3.391 8.5-3.391zM2 12.418L16 18l14-5.582L16 8 2 12.418z"
          stroke="#FFF"
          fill="currentColor"
        ></path><path stroke="currentColor" d="M16 12l11 .962V22"></path></g
      ></svg
    >
  {/each}
</div>
