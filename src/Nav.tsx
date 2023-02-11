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
      </ul>
    </nav>
  );
}
