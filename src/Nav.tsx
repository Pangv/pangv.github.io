import { Link } from "react-router-dom";

export function Nav() {
  return (
    <nav className="my-10">
      <ul className="flex flex-wrap justify-end gap-y-10 ">
        <li>
          <Link
            className="rounded-full border border-slate-100 border-opacity-5 bg-slate-200 bg-opacity-5 p-3 text-white"
            to="/"
          >
            @sopaetzel
          </Link>
        </li>
        {/*<li>*/}
        {/*  <Link*/}
        {/*    className="rounded-r-full border border-slate-100 border-opacity-5 bg-slate-200 bg-opacity-5 p-3 text-white"*/}
        {/*    to="projects"*/}
        {/*  >*/}
        {/*    Side Projects*/}
        {/*  </Link>*/}
        {/*</li>*/}
        {/*<li>*/}
        {/*  <Link*/}
        {/*    className="rounded-full bg-slate-200 bg-opacity-5 p-3 text-white"*/}
        {/*    to="art"*/}
        {/*  >*/}
        {/*    Artsy Stuff*/}
        {/*  </Link>*/}
        {/*</li>*/}
        {/*<li>*/}
        {/*  <Link*/}
        {/*    className="rounded-full bg-slate-200 bg-opacity-5 p-3 text-white"*/}
        {/*    to="about"*/}
        {/*  >*/}
        {/*    About*/}
        {/*  </Link>*/}
        {/*</li>*/}
      </ul>
    </nav>
  );
}
