<script lang="ts">
  import yaml from 'yaml';
  import DifferingSpeedLink from './DifferingSpeedLink.svelte';
  import coursesYamlString from '$lib/assets/courses.yaml?raw';
  const courses = yaml.parse(coursesYamlString) as Record<
    string,
    {
      name: string;
      time_and_place: string;
    }
  >;

  import programsYamlString from '$lib/assets/programs.yaml?raw';
  const programs = yaml.parse(programsYamlString) as Record<
    string,
    {
      name: string;
    }
  >;
  const randomlySelectedProgramName =
    Object.entries(programs)[Math.floor(Math.random() * Object.keys(programs).length)][0];
</script>

<ul
  class="w-full items-stretch border-b border-[#03787c] bg-[#f0f9fa] dark:border-gray-700 dark:bg-[#03787c]"
>
  <li class="flex w-full flex-row">
    <DifferingSpeedLink
      class="w-full truncate border-t border-[#03787c] p-4 text-lg font-semibold whitespace-nowrap dark:border-gray-700"
      to={`/programs/${randomlySelectedProgramName}`}
    >
      {randomlySelectedProgramName} - {programs[randomlySelectedProgramName].name}
    </DifferingSpeedLink>
    <svg
      width="2em"
      height="2em"
      viewBox="0 0 32 32"
      class="box-content border-t border-[#03787c] p-4 text-[#03787c] dark:border-gray-700"
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
        ></path><path stroke="currentColor" d="M16 12l11 .962V22"></path>
      </g>
    </svg>
  </li>
  {#each Object.entries(courses) as [code, course] (code)}
    <li class="flex w-full flex-row">
      <!-- FIXME: use type-safe/corrected href? -->
      <DifferingSpeedLink
        class="flex w-full flex-col border-t border-[#03787c] p-4 text-lg font-semibold whitespace-nowrap dark:border-gray-700"
        to={`/courses/${code}`}
      >
        <span class="truncate">{code} - {course.name}</span>
        <span class="text-sm font-normal opacity-80">{course.time_and_place}</span>
      </DifferingSpeedLink>
      <svg
        width="2em"
        height="2em"
        viewBox="0 0 32 32"
        class="box-content w-fit border-t border-[#03787c] p-4 text-[#03787c] dark:border-gray-700"
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
          ></path><path stroke="currentColor" d="M16 12l11 .962V22"></path>
        </g>
      </svg>
    </li>
  {/each}
</ul>
