import AcUnitIcon from '@mui/icons-material/AcUnit';
import WifiIcon from '@mui/icons-material/Wifi';
import PoolIcon from '@mui/icons-material/Pool';
import LocalParkingIcon from '@mui/icons-material/LocalParking';
import FitnessCenterIcon from '@mui/icons-material/FitnessCenter';
import DryIcon from '@mui/icons-material/Dry';
import LocalFireDepartmentIcon from '@mui/icons-material/LocalFireDepartment';
import KitchenIcon from '@mui/icons-material/Kitchen';
import LocalLaundryServiceIcon from '@mui/icons-material/LocalLaundryService';
import TvIcon from '@mui/icons-material/Tv';


const AmenitiesIcon = ({apartment}) => {
    switch (apartment.amenities) {
        case 'Air Conditioning':
            return <AcUnitIcon />;
        case 'WiFi':
            return <WifiIcon />;
        case 'Pool':
            return <PoolIcon />;
        case 'Parking':
            return <LocalParkingIcon />;
        case 'Gym':
            return <FitnessCenterIcon />;
        case 'Washer':
            return <LocalLaundryServiceIcon />;
        case 'Kitchen':
            return <KitchenIcon />;
        case 'TV':
            return <TvIcon />;
        case 'Dryer':
            return <DryIcon />;
        case 'Heating':
            return <LocalFireDepartmentIcon />;
        default:
            return null;
    }
};

export default AmenitiesIcon;