import React from "react";
import { PrismicLink } from "@prismicio/react";

function Home() {
  return (
    <div>
      <div className=" flex-col bg-gray-900 font-sans text-6xl uppercase text-white">
        <div className="line  flex flex-grow justify-between">
          <p>Sven-Oliver</p>
          <p>Pätzel!</p>
        </div>
        <div className="line flex justify-between">
          <p>Software</p>
          <p>Developer</p>
        </div>
      </div>
      <div className="mt-auto flex flex-grow-0 justify-end text-gray-100">
        <div className="">
          idea by{" "}
          <PrismicLink href="https://www.nathansmith.design/">
            nathansmith.design
          </PrismicLink>{" "}
          instructions by{" "}
          <PrismicLink href="https://codepen.io/Hyperplexed">
            @hyperplexed
          </PrismicLink>
          , <PrismicLink href="/imprint">imprint</PrismicLink>
        </div>
      </div>
    </div>
  );
}

export default Home;
