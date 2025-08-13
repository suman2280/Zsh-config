<h1 align="center" id="title">Zsh Customization</h1>

<p align="center">
  <img src="https://socialify.git.ci/suman2280/Zsh-config/image?description=1&descriptionEditable=Zsh%20configuration%20file%20containing%20a%20quick%20customization%20of%20Zsh&font=Rokkitt&language=1&name=1&owner=1&pattern=Solid&theme=Dark" alt="Zsh Customization">
</p>

<h2>🧐 Features</h2>

Here are some of the project’s best features:

- **Command Auto-suggestion**
- **Command Auto-completion**
- **Historical Search through Commands**
- **Fuzzy Finding Commands**
- **Directory Item Preview while using `cd`**
- **Fuzzy Finding Directories while using `cd`**
- **Syntax Highlighting**

<h2>🧑🏻‍💻 Installation Steps</h2>

Follow these steps to set up your Zsh environment:

**For Arch** :
   ```bash
   yay -S zsh fzf pokego-bin zoxide && sudo chsh -s /bin/zsh $(whoami)
   ```
**For Debian-based systems:**
1. **Install Zsh**:
   ```bash
   sudo apt install zsh -y
   ```
2. **Change your current shell to Zsh:**
   ```bash
   chsh -s /bin/zsh $(whoami)
   ```
3. **Download and Install FZF**:
   ```bash
   https://github.com/junegunn/fzf/releases/
   ```
4. **Download and Install Pokego**:
   ```bash
   https://github.com/rubiin/pokego/releases
   ```
5. **Install Zoxide:**
   ```bash
   curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh
   ```
**Download and add both .zshrc and .zshenv file** to your home directory.

For more details on keybindings, check out the [Zsh Navigation](zsh-navigation.md) guide.