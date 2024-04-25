import React, { useState, useEffect } from 'react';
import Paper from '@mui/material/Paper';
import Grid from '@mui/material/Grid';
import axios from 'axios';
import Box from '@mui/material/Box';
import Rating from '@mui/material/Rating';
import { Typography } from '@mui/material';
import LocationOnIcon from '@mui/icons-material/LocationOn';
import Button from '@mui/material/Button';
import SendIcon from '@mui/icons-material/Send';

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
                            <Typography variant="h6" noWrap>{apartment.apartment_name}</Typography>                           
                            <Grid container mb={3}>    
                            <LocationOnIcon />                          
                            <Typography variant="body2">{apartment.location}</Typography>                                                                                                            
                            </Grid>                              
                            <Rating name="raiting" value={4.5} readOnly precision={0.5} />  
                            <Grid container py={3}>     
                                    <Button fullWidth color="inherit" href={route('apartment.show', apartment.id)}  variant="outlined" startIcon={<SendIcon />}>
                                        Details
                                    </Button>                                        
                            </Grid>
                        </Box>                                                
                    </Paper>
                </Grid>
            ))}
        </Grid>
    );
};

export default ApartmentCards;

