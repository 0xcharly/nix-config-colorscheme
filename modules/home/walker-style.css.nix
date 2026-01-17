theme: ''
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
    background: ${theme.surface_red};
    color: ${theme.text_red};
    margin-top: 20px;
    padding: 8px;
  }

  #window {
    color: ${theme.text};
  }

  #box {
    border-radius: 12px;
    background: ${theme.surface};
    padding: 4px;
    border: 1px solid lighter(${theme.surface});
  }

  #search {
    color: ${theme.text_blue};
    background: ${theme.surface_blue};
    border: 1px solid lighter(${theme.surface_blue});
    padding: 16px 8px;
    border-radius: 8px;
  }

  #prompt {
    margin-left: 4px;
    margin-right: 12px;
    color: ${theme.text};
    font-size: 1.2em;
  }

  #clear {
    color: ${theme.text};
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
    color: ${theme.text};
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
    color: ${theme.text_purple};
    background: ${theme.surface_purple};
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
    color: ${theme.text};
    opacity: 0.8;
    font-weight: 400;
    font-size: 0.8em;
  }

  #activationlabel {
    color: ${theme.text};
    opacity: 0.6;
  }

  child:selected #activationlabel,
  child:selected #sub,
  child:hover #activationlabel,
  child:hover #sub {
    color: ${theme.text_purple};
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
    color: ${theme.text};
    background: ${theme.surface};
  }

  .aiItem.user {
    padding-left: 0;
    padding-right: 0;
  }

  .aiItem.assistant {
    background: lighter(${theme.surface});
  }
''
