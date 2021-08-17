import * as React from 'react';
import { observer } from 'mobx-react-lite';
import { useState } from 'react';
import store from '../../store';
import { ThemeProvider } from 'styled-components';
import { Wrapper, Content, IconItem, Menu, Image, RightBar } from './style';
import { TopSites } from '../TopSites';
import { News } from '../News';
import { Preferences } from '../Preferences';
import {
  ICON_TUNE,
  ICON_SETTINGS,
  ICON_HISTORY,
  ICON_BOOKMARKS,
  ICON_DOWNLOAD,
  ICON_EXTENSIONS,
} from '~/renderer/constants/icons';
import { WebUIStyle } from '~/renderer/mixins/default-styles';
import { getWebUIURL } from '~/common/webui';



window.addEventListener('mousedown', () => {
  store.dashboardSettingsVisible = false;
});

const onIconClick = (name: string) => () => {
  window.location.href = getWebUIURL(name);
};

const onTuneClick = () => {
  store.dashboardSettingsVisible = !store.dashboardSettingsVisible;
};

const onRefreshClick = () => {
  store.image = 'D:/Windows/Web/Wallpaper/Windows/img0.jpg';
  setTimeout(() => {
    localStorage.setItem('imageDate', '');
    store.loadImage();
  }, 50);
};



export default observer(() => {
  return (
    <ThemeProvider theme={{ ...store.theme }} fullSize={store.fullSizeImage}>
    
    <Image src={store.imageVisible ? store.image : ''}></Image>
      <script src="http://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
      <div>
        <WebUIStyle />
        
          <Content>
            
            <h3 style = {{ color:'white' }}> TIP : Report Bugs in  <a href="https://docs.google.com/forms/d/e/1FAIpQLScAKXmjP3MURLoVbzRi67kNP5BWeLhdI1FnB-Kuws41wGzvaA/viewform?usp=sf_link" style={{ backgroundColor : 'white' , color:'black' , margin:'10px'}}>Click here</a></h3> 
          </Content>
         
        <Preferences />
        
        <Wrapper fullSize={store.fullSizeImage}>
          {/* <h1>Welcome to PBrowse</h1> */}
          <Image src={store.imageVisible ? store.image : ''}></Image>
         
        <Content>{store.topSitesVisible && <TopSites></TopSites>}</Content>
          
          <RightBar>
            <IconItem
              imageSet={store.imageVisible}
              title="Dashboard settings"
              icon={ICON_TUNE}
              onMouseDown={(e) => e.stopPropagation()}
              onClick={onTuneClick}
            ></IconItem>
          </RightBar>
          {store.quickMenuVisible && (
            <Menu>
              <IconItem
                imageSet={store.imageVisible}
                title="Settings"
                icon={ICON_SETTINGS}
                onClick={onIconClick('settings')}
              ></IconItem>
              <IconItem
                imageSet={store.imageVisible}
                title="History"
                icon={ICON_HISTORY}
                onClick={onIconClick('history')}
              ></IconItem>
              <IconItem
                imageSet={store.imageVisible}
                title="Bookmarks"
                icon={ICON_BOOKMARKS}
                onClick={onIconClick('bookmarks')}
              ></IconItem>
              {/* * <IconItem
                imageSet={store.imageVisible}
                title="Downloads"
                icon={ICON_DOWNLOAD}
                onClick={onIconClick('downloads')}
              ></IconItem>
              <IconItem
                imageSet={store.imageVisible}
                title="Extensions"
                icon={ICON_EXTENSIONS}
                onClick={onIconClick('extensions')}
              ></IconItem> */}
            </Menu>
          )}
        </Wrapper>
         
        
       
      </div>
    </ThemeProvider>
  );
});
