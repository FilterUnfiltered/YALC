import type { PageLoad } from './$types';

export const load: PageLoad = async ({ params, parent }) => {
  const { courses } = await parent();
  return {
    code: params.code,
    course: {
      code: params.code,
      ...courses[params.code]
    }
  };
};
