import { PrismicLink } from "@prismicio/react";

function App() {
  return (
    <div className="m-4">
      <div className=" flex-col bg-gray-900 font-sans text-8xl uppercase text-white">
        <div className="line flex flex-grow justify-between">
          <p>Sven-Oliver</p>
          <p>Pätzel!</p>
        </div>
        <div className="line flex justify-between">
          <p>Software Developer</p>
          <p>&</p>
        </div>
        <div className="line flex justify-between">
          <p>Currently Into</p>
          <p>Codedocs</p>
        </div>
        <div className="line flex justify-between">
          <p>Side</p>
          <p>Projects</p>
        </div>
        <div className="line flex justify-between">
          <p>Artsy</p>
          <p>Stuff</p>
        </div>
      </div>
      <footer className="mt-auto flex flex-grow-0 justify-end text-gray-100">
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
      </footer>
    </div>
  );
}

export default App;
