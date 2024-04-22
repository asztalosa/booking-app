import React, { useState, useEffect } from 'react';
import Paper from '@mui/material/Paper';
import Grid from '@mui/material/Grid';
import axios from 'axios';
import AirlineSeatFlatRoundedIcon from '@mui/icons-material/AirlineSeatFlatRounded';
import Box from '@mui/material/Box';
import AmenitiesIcon from './Partials/AmenitiesIcon';
import Rating from '@mui/material/Rating';

const ApartmentCards = () => {

    const [apartments, setApartments] = useState([]);
    const [value, setValue] = React.useState(2);

    useEffect(() => {
        const fetchApartments = async () => {
            const response = await axios.get('/api/apartments');
            setApartments(response.data);
        };

        fetchApartments();
    }, []);

    return (
        <Grid container spacing={2}>
            {apartments.map((apartment, index) => (
                <Grid item key={index} xs= {12} sm={6} md={4} lg={3}>
                    <Paper>
                        <img className="aps-card-img" src={apartment.image} alt={apartment.apartment_name} />
                        <Box m={2}>
                            <h1>{apartment.apartment_name}</h1>
                            <Grid container>
                                <AirlineSeatFlatRoundedIcon />
                                <Box ml={1}>
                                    <p>{apartment.number_of_bedrooms}</p>                                  
                                </Box>    
                            </Grid>   
                            <p> Amenities</p>    
                            <Box>
                            <AmenitiesIcon apartment={apartment} />   
                            </Box>
                            <Rating name="raiting" value={4} readOnly />  
                        </Box>                                                
                    </Paper>
                </Grid>
            ))}
        </Grid>
    );
};

export default ApartmentCards;

