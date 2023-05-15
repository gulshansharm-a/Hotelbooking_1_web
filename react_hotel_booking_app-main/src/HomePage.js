import React from 'react';
import './HomePage.css';
import findbestStayText from './assets/images/coverPagetext.png';
import easyatra from './assets/images/Easyatra.png';
import coverPage from './assets/images/HomeCoverPage.png';

export default function HomePage() {
  return (
    <>
      <div className='column'>
        <div className='contaier' style={{ paddingLeft: '110px', paddingRight: '110px', paddingTop: '20px', paddingBottom: '20px' }}>
          <NavBar />
        </div>
        <MainBanner />
      </div>
    </>

  );
}

function MainBanner() {
  return (
    <div className='container' style={{
      width: '100%',
      background: '#E1F3FF',
      borderRadius: '30px',
      padding: '50px'
    }}>

      <div className="row">
        <div className="col-md-6">
          <img style={{ width: '100%', height: 'auto' }} src={findbestStayText} alt="image not found" />
        </div>
        <div className="col-md-6">
          <img style={{ width: '100%', height: 'auto' }} src={coverPage} alt="image not found" />
        </div>
      </div>

    </div>

  );
}

function NavBar() {
  return (
    <nav className="navbar navbar-expand-lg bg-light">
      <div className="container-fluid">
        <img src={easyatra} style={{ width: '100px', height: '25px' }} />

      </div>
    </nav>
  );
}