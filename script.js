document.addEventListener('DOMContentLoaded', () => {
    const fractalTimeline = document.querySelector('.fractal-timeline');

    // Fractal sequence and cumulative time points
    const fractalSequence = [1, 3, 9, 27, 81, 243];
    let cumulativeTime = 0;
    const totalTime = fractalSequence.reduce((sum, val) => sum + val, 0);

    // Calculate equilibrium point (square root of 5)
    const equilibriumTime = Math.sqrt(5);
    const equilibriumPositionPercent = (equilibriumTime / totalTime) * 100;

    // Create equilibrium marker
    const equilibriumMarker = document.createElement('div');
    equilibriumMarker.classList.add('equilibrium-marker');
    equilibriumMarker.style.left = `${equilibriumPositionPercent}%`;

    // Add interactivity to the equilibrium marker
    equilibriumMarker.addEventListener('click', () => {
        // Logic to navigate to the equilibrium point
        console.log('Navigated to Equilibrium Point');
        // Implement the navigation logic here
    });

    // Append the equilibrium marker to the timeline
    fractalTimeline.appendChild(equilibriumMarker);

    // Generate markers for each point in the sequence
    fractalSequence.forEach((interval, index) => {
        cumulativeTime += interval;

        const marker = document.createElement('div');
        marker.classList.add('fractal-marker', `scale-${interval}`);

        // Calculate position percentage along the timeline
        const positionPercent = (cumulativeTime / totalTime) * 100;
        marker.style.left = `${positionPercent}%`;

        // Create tooltip
        const tooltip = document.createElement('div');
        tooltip.classList.add('marker-tooltip');
        tooltip.textContent = `T + ${cumulativeTime} units`;
        marker.appendChild(tooltip);

        // Add interactivity (e.g., clicking the marker)
        marker.addEventListener('click', () => {
            // Functionality to navigate to the specific time point
            console.log(`Navigated to time: T + ${cumulativeTime}`);
            // Implement the navigation logic here
        });

        // Append marker to the timeline
        fractalTimeline.appendChild(marker);
    });
});
