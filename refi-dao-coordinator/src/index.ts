import { logger, type IAgentRuntime, type Project, type ProjectAgent } from '@elizaos/core';
import starterPlugin from './plugin.ts';
import { refiDaoCoordinator } from './refiDaoCoordinator.ts';

const initCharacter = ({ runtime }: { runtime: IAgentRuntime }) => {
  logger.info('Initializing ReFi DAO Coordinator');
  logger.info('Name: ', refiDaoCoordinator.name);
};

export const projectAgent: ProjectAgent = {
  character: refiDaoCoordinator,
  init: async (runtime: IAgentRuntime) => await initCharacter({ runtime }),
  // plugins: [starterPlugin], <-- Import custom plugins here
};
const project: Project = {
  agents: [projectAgent],
};

// Export test suites for the test runner
export { testSuites } from './__tests__/e2e';
export { refiDaoCoordinator as character } from './refiDaoCoordinator.ts';

export default project;
