# Impactor-2025 Simulator

An interactive web-based tool that visualizes the potential impact of asteroid "Impactor-2025" using real NASA and USGS data. The simulator allows users to test deflection strategies and see the consequences of asteroid impacts.

## Features

- 🌍 **3D Orbital Visualization**: Interactive Three.js globe showing asteroid trajectory
- 🗺️ **2D Impact Mapping**: Leaflet-based map with tsunami risk zones
- ⚡ **Real-time Physics**: Live calculations of impact energy, crater size, and tsunami radius
- 🚀 **Deflection Simulation**: Test asteroid deflection strategies
- 📊 **Educational Tooltips**: Learn about impact physics and consequences
- 🔄 **Live NASA Data**: Real asteroid data from NASA NEO API

## Tech Stack

- **Frontend**: React + TypeScript + Vite
- **3D Visualization**: Three.js + React Three Fiber
- **2D Mapping**: Leaflet + React Leaflet
- **Backend**: Flask (Python)
- **Data Sources**: NASA NEO API, USGS elevation data

## Quick Start

### Prerequisites

- Node.js (v16 or higher)
- Python 3.8+
- NASA API key (free from https://api.nasa.gov)

### Backend Setup

1. Navigate to the backend directory:
```bash
cd backend
```

2. Create a virtual environment:
```bash
python -m venv venv
# On Windows:
venv\Scripts\activate
# On macOS/Linux:
source venv/bin/activate
```

3. Install dependencies:
```bash
pip install -r requirements.txt
```

4. Set your NASA API key:
```bash
# On Windows:
set NASA_API_KEY=your_api_key_here
# On macOS/Linux:
export NASA_API_KEY=your_api_key_here
```

5. Run the Flask server:
```bash
python app.py
```

The backend will be available at `http://localhost:5000`

### Frontend Setup

1. Navigate to the frontend directory:
```bash
cd frontend
```

2. Install dependencies:
```bash
npm install
```

3. Start the development server:
```bash
npm run dev
```

The frontend will be available at `http://localhost:3000`

## Usage

1. **View Asteroid Data**: The app automatically loads real asteroid data from NASA
2. **Adjust Parameters**: Use sliders to modify asteroid diameter and velocity
3. **Test Deflection**: Click "Launch Deflector" to apply deflection strategies
4. **Explore Impact**: View 3D orbital path and 2D impact zones with tsunami risk
5. **Learn**: Read educational tooltips to understand impact physics

## API Endpoints

- `GET /neo/impactor-2025` - Fetch asteroid data from NASA
- `POST /simulate` - Run impact simulation with custom parameters
- `GET /health` - Health check endpoint

## Deployment

### Backend (Heroku)

1. Create a Heroku app
2. Set environment variables:
```bash
heroku config:set NASA_API_KEY=your_api_key_here
```
3. Deploy:
```bash
git add .
git commit -m "Deploy backend"
git push heroku main
```

### Frontend (Netlify)

1. Build the project:
```bash
npm run build
```
2. Deploy the `dist` folder to Netlify
3. Update the API URL in `src/services/api.ts` to point to your Heroku backend

## Educational Value

This simulator demonstrates:

- **Orbital Mechanics**: How asteroids approach Earth
- **Impact Physics**: Energy calculations and crater formation
- **Tsunami Modeling**: Coastal impact assessment
- **Deflection Strategies**: How small velocity changes affect trajectories
- **Risk Assessment**: Understanding impact consequences

## Data Sources

- **NASA NEO API**: Real asteroid orbital data and physical properties
- **USGS**: Elevation and geographic data for impact modeling
- **Physics Models**: Simplified but scientifically-based impact calculations

## Contributing

This is a hackathon project designed for educational purposes. Feel free to:

- Improve the physics models
- Add more realistic deflection strategies
- Enhance the 3D visualization
- Add more educational content

## License

MIT License - Feel free to use for educational purposes.

## Acknowledgments

- NASA for providing the NEO API
- USGS for elevation data
- The open-source community for Three.js, Leaflet, and React

