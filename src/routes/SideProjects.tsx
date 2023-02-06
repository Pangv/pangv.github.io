import React, { useEffect, useState } from "react";
import { LinkIcon, MarkGithubIcon } from "@primer/octicons-react";

function SideProjects() {
  const [repositories, setRepositories] = useState([]);
  const [repos, setRepos] = useState([{ owner: { html_url: "" } }]);

  useEffect(() => {
    return () => {
      getAllPublicRepos().then();
    };
  }, [repositories, repos]);

  function formatDate(date: string) {
    let dateObj = new Date(date);

    let day =
      dateObj.getDate().toString().length === 1
        ? "0" + dateObj.getDate()
        : dateObj.getDate();

    let month =
      dateObj.getMonth().toString().length === 1
        ? "0" + dateObj.getMonth()
        : dateObj.getMonth();

    return `${day}.${month}.${dateObj.getFullYear()}`;
  }

  async function getAllPublicRepos() {
    const repos = await fetch(`https://api.github.com/users/pangv/repos`);
    const json = await repos.json();

    const parsedRepos = json.map((obj: any) => {
      return (
        <div key={obj.id} className="w-fit bg-gray-500 md:w-1/4">
          <div className="h-20 bg-orange-400">
            <h1 className="mb-1 w-fit break-all bg-gray-900 px-2 text-xl font-bold uppercase">
              {obj.name}
            </h1>
          </div>
          <div className="h-max p-3 text-sm">
            <div className="break-all pt-2">{obj.description}</div>
            <a className="underline" href={obj.html_url}>
              <LinkIcon />
              {obj.name}
            </a>
            <div>{formatDate(obj.created_at)}</div>
          </div>
        </div>
      );
    });

    setRepos(json);
    setRepositories(parsedRepos);
  }

  return (
    <div className="text-white">
      <h1 className="mb-4 text-2xl">
        Here are my <span className="text-3xl underline">Side-projects</span>,
        there are plenty:
      </h1>
      <a href={repos && repos[0].owner.html_url}>
        <MarkGithubIcon className="mr-1" />
        {repos[0].owner.html_url}
      </a>
      <div className="flex flex-wrap gap-2">{repositories}</div>
    </div>
  );
}

export default SideProjects;
