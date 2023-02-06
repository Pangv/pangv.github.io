import { MarkGithubIcon, OrganizationIcon } from "@primer/octicons-react";

export default function About() {
  return (
    <div className="text-white">
      <h1 className="text-4xl">Where you can find me.</h1>
      <div className="flex flex-col flex-wrap">
        <a href="https://github.com/pangv">
          <MarkGithubIcon /> GitHub
        </a>
        <a href="https://www.linkedin.com/in/sop/">
          <OrganizationIcon /> LinkedIn
        </a>
      </div>
    </div>
  );
}
