import { join } from "node:path";
import { getScripts } from "@ogre/ext";

export default getScripts(async (workspacePath: string) => {
  const { scripts: npmScripts } = await import(join(workspacePath, "package.json"));
  return npmScripts;
});
