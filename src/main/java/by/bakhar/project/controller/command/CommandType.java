package by.bakhar.project.controller.command;

import by.bakhar.project.controller.command.impl.FormCommand;
import by.bakhar.project.controller.command.impl.RegisterCommand;

public enum CommandType {
    REGISTRATION(new RegisterCommand()),
    FORM(new FormCommand());
    private Command command;

    CommandType(Command command) {
        this.command = command;
    }

    public Command getCommand() {
        return command;
    }
}
