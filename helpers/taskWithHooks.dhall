let Types = ../types/package.dhall

in    ( λ(taskStep : Types.TaskStep) →
        λ(hooks : Types.StepHooks Types.Step) →
        λ(Step : Type) →
        λ(constructors : Types.StepConstructors Step) →
          constructors.task
            taskStep
            (./translateHooks.dhall Step constructors hooks)
      )
    : Types.TaskStep → Types.StepHooks Types.Step → Types.Step
