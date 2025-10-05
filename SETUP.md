# Impactor-2025 Simulator - Setup Guide

## Quick Start (Windows)

### Option 1: Use the Batch Files (Easiest)

1. **Start the Backend:**
   - Double-click `start-backend.bat`
   - Wait for "Running on http://127.0.0.1:5000" message
   - Keep this terminal window open

2. **Start the Frontend:**
   - Open a new terminal/command prompt
   - Double-click `start-frontend.bat`
   - Wait for the development server to start
   - Open your browser to `http://localhost:3000`

### Option 2: Manual Setup

#### Backend Setup

1. **Install Python** (if not already installed):
   - Download from https://python.org
   - Make sure to check "Add Python to PATH" during installation

2. **Open Command Prompt** and navigate to the project:
```cmd
cd impactor-2025-simulator\backend
```

3. **Create virtual environment:**
```cmd
python -m venv venv
```

4. **Activate virtual environment:**
```cmd
venv\Scripts\activate
```

5. **Install dependencies:**
```cmd
pip install -r requirements.txt
```

6. **Set NASA API key (optional):**
```cmd
set NASA_API_KEY=your_api_key_here
```
   - Get a free API key from https://api.nasa.gov
   - If you don't set this, the app will use demo data

7. **Start the backend:**
```cmd
python app.py
```

#### Frontend Setup

1. **Install Node.js** (if not already installed):
   - Download from https://nodejs.org
   - Choose the LTS version

2. **Open a new Command Prompt** and navigate to the frontend:
```cmd
cd impactor-2025-simulator\frontend
```

3. **Install dependencies:**
```cmd
npm install
```

4. **Start the development server:**
```cmd
npm run dev
```

5. **Open your browser** to `http://localhost:3000`

## Troubleshooting

### Backend Issues

**"python is not recognized":**
- Install Python from https://python.org
- Make sure to check "Add Python to PATH" during installation

**"pip is not recognized":**
- Try using `python -m pip` instead of `pip`
- Or reinstall Python with the PATH option

**"Module not found":**
- Make sure you activated the virtual environment: `venv\Scripts\activate`
- Reinstall requirements: `pip install -r requirements.txt`

**"Port 5000 already in use":**
- Close other applications using port 5000
- Or change the port in `app.py` (last line)

### Frontend Issues

**"npm is not recognized":**
- Install Node.js from https://nodejs.org
- Restart your command prompt after installation

**"Module not found":**
- Delete `node_modules` folder and `package-lock.json`
- Run `npm install` again

**"Port 3000 already in use":**
- Close other applications using port 3000
- Or the Vite dev server will automatically use the next available port

### API Connection Issues

**"Failed to load asteroid data":**
- Make sure the backend is running on port 5000
- Check that you can access `http://localhost:5000/health` in your browser
- The app will show a warning and use demo data if the API fails

## Features to Try

1. **View the 3D Globe**: See the asteroid's orbital path around Earth
2. **Adjust Parameters**: Use the sliders to change asteroid size and speed
3. **Test Deflection**: Click "Launch Deflector" to see how deflection affects impact
4. **Explore the Map**: See the impact zone and tsunami risk areas
5. **Read the Tooltips**: Learn about impact physics and consequences

## Getting a NASA API Key

1. Go to https://api.nasa.gov
2. Fill out the simple form
3. You'll get a free API key immediately
4. Set it as an environment variable or in the code

## Next Steps

- Try different asteroid parameters
- Test various deflection strategies
- Explore the educational content
- Share with others interested in space science!

## Support

If you encounter issues:
1. Check that both servers are running
2. Verify your browser can access both localhost:3000 and localhost:5000
3. Check the console for error messages
4. Make sure all dependencies are installed correctly

