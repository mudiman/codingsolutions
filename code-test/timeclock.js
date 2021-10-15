function timeConversion(str) {
    let [h,m,st] = str.split(/:/);
    const re = /(AM|PM)/;
    const s = st.slice(0,2);
    const am = st.slice(2);
    if (am == 'PM') {
        h = parseInt(h) + 12;
    } else if (am == 'AM' && h == '12') {
        h = '00';
    }
    return ([h,m,s].join(':'));

}