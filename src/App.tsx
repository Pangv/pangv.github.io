import { Outlet } from "react-router-dom";
import { Nav } from "./Nav";
import React from "react";
import { Footer } from "./Footer";

function App() {
  return (
    <div className="font- m-8 bg-base sm:w-11/12 ">
      <Nav />
      <Outlet />
      <Footer />
    </div>
  );
}

export default App;
