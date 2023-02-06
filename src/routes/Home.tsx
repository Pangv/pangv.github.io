import React from "react";

function Home() {
  return (
    <div className="mb-40 text-5xl md:mx-40 md:text-6xl lg:mx-96 ">
      <div className="font-sans flex-col uppercase text-white">
        <div className="line flex flex-wrap justify-between">
          <p className="peer mb-4 underline underline-offset-8"> @sopaetzel</p>
          <div className="hidden peer-hover:block">Sven-Oliver Pätzel</div>
        </div>
        <div className="line flex flex-wrap justify-between">
          <p>Software</p>
          <p>Developer</p>
        </div>
        <div className="line flex flex-wrap justify-between">
          <p>Java</p>
          <p>JS&amp;TS</p>
          <p>React</p>
        </div>
      </div>
    </div>
  );
}

export default Home;
