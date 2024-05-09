import { BottomNavigation, Box, Paper, Typography } from "@mui/material";
import Container from "@mui/material/Container";
import ImageCollage from "@/Components/ImageCollage";
import Faq from "@/Components/Faq";
import BookingModal from "@/Components/BookingModal";

export default function Apartment ({apartment}){

    return (
        <Container sx={{paddingY:3, marginBottom:10}}>
            <Box display={"grid"} gap={2}>
                <Typography variant="h3">{apartment.apartment_name}</Typography>
                <Box display="grid" gridTemplateColumns="repeat(12, 1fr)" gap={2}>
                    <Box gridColumn="span 8">
                        <img src={apartment.image} alt={apartment.apartment_name} width="100%" />
                    </Box>
                    <Box gridColumn="span 4">
                        <ImageCollage />
                    </Box>
                </Box>
                <Box sx={{display:"flex", }} mb={3}>                                 
                </Box>
                <Box >
                    <Typography variant="h5">Description</Typography>
                    <Typography variant="body1">{apartment.description}</Typography>
                </Box>
                <Box>
                    <Faq />
                </Box>
                <Paper
                    sx={{
                        position: "fixed",
                        bottom: 0,
                        left: 0,
                        right: 0,                      
                    }}
                    elevation={3}
                >
                    <BottomNavigation>
                        <BookingModal apartment={apartment} />
                    </BottomNavigation>
                </Paper>
            </Box>         
        </Container>
    );
}
