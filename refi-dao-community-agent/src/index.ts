import { logger, type IAgentRuntime, type Project, type ProjectAgent } from '@elizaos/core';
import starterPlugin from './plugin.ts';
import { refiKnowledgeAgent } from './refiKnowledgeAgent.ts';

const initCharacter = ({ runtime }: { runtime: IAgentRuntime }) => {
  logger.info('Initializing ReF[AI] DAO Community Agent');
  logger.info('Name: ', refiKnowledgeAgent.name);
};

export const projectAgent: ProjectAgent = {
  character: refiKnowledgeAgent,
  init: async (runtime: IAgentRuntime) => await initCharacter({ runtime }),
  // plugins: [starterPlugin], <-- Import custom plugins here
};
const project: Project = {
  agents: [projectAgent],
};

// Export test suites for the test runner
export { testSuites } from './__tests__/e2e';
export { refiKnowledgeAgent as character } from './refiKnowledgeAgent.ts';

export default project;
