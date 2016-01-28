{application,exfswatch,
             [{registered,[]},
              {description,"A file change watcher wrapper based on [fs](https://github.com/synrc/fs)"},
              {vsn,"0.1.1"},
              {modules,['Elixir.ExFSWatch','Elixir.ExFSWatch.Supervisor',
                        'Elixir.ExFSWatch.Worker','Elixir.Monitor']},
              {mod,{'Elixir.ExFSWatch',[]}},
              {applications,[kernel,stdlib,elixir,logger]}]}.