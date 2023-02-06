import { Link } from "react-router-dom";
import React from "react";

export function Footer() {
  return (
    <footer className="absolute bottom-0 right-1 mt-auto flex flex-grow-0 justify-end text-gray-100">
      <Link to="/imprint">imprint + privacy</Link>
    </footer>
  );
}
