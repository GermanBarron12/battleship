# Copilot Instructions for Battleship Dart Project

## Project Overview
- **Type:** Dart command-line application (Battleship game logic)
- **Entrypoint:** `bin/battleship.dart`
- **Core logic:** `lib/` directory (e.g., `flotilla.dart`, `jugador.dart`, `nombre.dart`, `partida.dart`)
- **Tests:** `test/` directory (mirrors library structure)

## Key Architectural Patterns
- **Domain Modeling:**
  - Ships (`Barco`) and fleets (`Flotilla`) are modeled as classes in `lib/flotilla.dart`.
  - Enum `TiposBarcos` defines all ship types; a valid `Flotilla` must have exactly one of each type (see constructor checks).
  - Custom error types (e.g., `FlotillaCantidadExcepcion`, `FlotillaTipos`) are used for domain validation.
- **Game Logic:**
  - Game orchestration and player logic are likely in `partida.dart` and `jugador.dart`.
  - Naming and identity logic is in `nombre.dart`.

## Developer Workflows
- **Build:** Use `dart compile exe bin/battleship.dart` to build the executable.
- **Run:** Use `dart run bin/battleship.dart` to run the game.
- **Test:** Use `dart test` to run all tests in the `test/` directory.
- **Dependencies:** Managed via `pubspec.yaml`. Run `dart pub get` after editing dependencies.

## Project-Specific Conventions
- **Flotilla Construction:** Always ensure a `Flotilla` is created with exactly 5 ships, one of each type. Violations throw custom errors.
- **Error Handling:** Use custom error classes for domain-specific validation, not generic exceptions.
- **File Organization:**
  - Each domain concept (fleet, player, game, name) has its own file in `lib/`.
  - Tests are named `{concept}_test.dart` and placed in `test/`.

## Integration Points
- No external APIs or services are integrated; all logic is local and self-contained.
- No UI or web integration; this is a pure CLI logic project.

## Examples
- **Creating a valid fleet:**
  ```dart
  final flotilla = Flotilla([
    Barco(TiposBarcos.bote),
    Barco(TiposBarcos.lancha),
    Barco(TiposBarcos.submarino),
    Barco(TiposBarcos.crucero),
    Barco(TiposBarcos.portaaviones),
  ]);
  ```
- **Running tests:**
  ```shell
  dart test
  ```

## Key Files
- `lib/flotilla.dart`: Fleet and ship domain logic
- `lib/partida.dart`: Game orchestration
- `lib/jugador.dart`: Player logic
- `lib/nombre.dart`: Naming/identity logic
- `test/`: All unit tests

---
If you are an AI agent, follow these conventions and workflows to ensure consistency with the project's structure and logic. If anything is unclear or missing, ask for clarification or examples from the maintainers.
