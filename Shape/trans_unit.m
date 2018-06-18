unit1 = input('에너지의 양 ');
unit2 = input('바꾸기전 단위 ' ,'s');
unit3 = input('바꾼후 단위 ' ,'s');

switch unit2
    case 'J'
        switch unit3
            case 'ft-lb'
                unit1 * 0.738
            case 'cal'
                unit1 * 0.239
            case 'eV'
                unit1 * 6.24 * 1018
            otherwise
                error('잘못된 단위입니다.')    
        end
        
    case 'ft-lb'
        switch unit3
            case 'J'
                unit1 / 0.738
            case 'cal'
                unit1 / 3.088
            case 'eV'
                unit1 * 8607.480
            otherwise
                error('잘못된 단위입니다.')    
        end
                
    case 'cal'
        switch unit3
            case 'J'
                unit1 / 0.239
            case 'ft-lb'
                unit1 * 3.088
            case 'eV'
                unit1 * 26578.745
            otherwise
                error('잘못된 단위입니다.')    
        end
        
    case 'eV'
        switch unit3
            case 'J'
                unit1 / (6.24 * 1018)
            case 'ft-lb'
                unit1 / 8607.480
            case 'cal'
                unit1 / 26578.745
            otherwise
                error('잘못된 단위입니다.')    
        end
end

