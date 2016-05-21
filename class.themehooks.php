<?php

/**
 * Sets config variables on enabling MyThemeName, adds locale data to the view,
 * and adds a respond button to the discussion page.
 */
class MaterialThemeHooks implements Gdn_IPlugin
{
    /**
     * Run any setup code that a plugin requires before it is ready for general use.
     *
     * This method will be called every time a plugin is enabled,
     * so it should check before performing redundant operations like
     * inserting tables or data into the database. If a plugin has no setup to
     * perform, simply declare this method and return TRUE.
     *
     * Returns a boolean value indicating success.
     *
     * @return boolean
     */
    public function setup()
    {
        // Set some config settings for a table layout & mobile theme
        saveToConfig(array(
            'Vanilla.Discussions.Layout' => 'table',
            'Vanilla.Categories.Layout' => 'table',
            'Vanilla.Categories.DoHeadings' => false,
            'Garden.MobileTheme' => 'Material'
        ), null, true);
        return true;
    }
    
    // @todo some custom hooks for pages
}