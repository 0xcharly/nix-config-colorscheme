{ self, ... }:
let
  theme = self.lib.colorscheme.asHexStrings;
in
{
  flake.homeModules.walker = {
    services.walker.theme = {
      name = "pixel";
      layout = fromTOML (builtins.readFile ./walker-layout.toml);
      style = with theme; ''
        #window,
        #box,
        #aiScroll,
        #aiList,
        #search,
        #password,
        #input,
        #prompt,
        #clear,
        #typeahead,
        #list,
        child,
        scrollbar,
        slider,
        #item,
        #text,
        #label,
        #bar,
        #sub,
        #activationlabel {
          all: unset;
        }

        #cfgerr {
          background: ${surface_red};
          color: ${on_surface_red};
          margin-top: 20px;
          padding: 8px;
        }

        #window {
          color: ${text};
        }

        #box {
          border-radius: 12px;
          background: ${surface};
          padding: 4px;
          border: 1px solid lighter(${surface});
        }

        #search {
          color: ${on_surface_blue};
          background: ${surface_blue};
          border: 1px solid lighter(${surface_blue});
          padding: 16px 8px;
          border-radius: 8px;
        }

        #prompt {
          margin-left: 4px;
          margin-right: 12px;
          color: ${text};
          font-size: 1.2em;
        }

        #clear {
          color: ${text};
          margin-right: 8px;
        }

        #password,
        #input,
        #typeahead {
          border-radius: 2px;
        }

        #input {
          background: none;
        }

        #password {
        }

        #spinner {
          padding: 8px;
        }

        #typeahead {
          color: ${text};
          opacity: 0.8;
        }

        #input placeholder {
        }

        #list {
        }

        child {
          padding: 6px 16px;
          border-radius: 8px;
          min-height: 32px;
        }

        child:selected,
        child:hover {
          color: ${on_surface_violet};
          background: ${surface_violet};
        }

        #item {
        }

        #icon {
          margin-right: 16px;
        }

        #text {
          font-size: 0.9em;
        }

        #label {
          font-weight: 500;
        }

        #sub {
          color: ${text};
          opacity: 0.8;
          font-weight: 400;
          font-size: 0.8em;
        }

        #activationlabel {
          color: ${text};
          opacity: 0.6;
        }

        child:selected #activationlabel,
        child:selected #sub,
        child:hover #activationlabel,
        child:hover #sub {
          color: ${on_surface_violet};
        }

        #bar {
        }

        .barentry {
        }

        .activation #activationlabel {
        }

        .activation #text,
        .activation #icon,
        .activation #search {
          opacity: 0.5;
        }

        .aiItem {
          padding: 10px;
          border-radius: 2px;
          color: ${text};
          background: ${surface};
        }

        .aiItem.user {
          padding-left: 0;
          padding-right: 0;
        }

        .aiItem.assistant {
          background: lighter(${surface});
        }
      '';
    };
  };
}
