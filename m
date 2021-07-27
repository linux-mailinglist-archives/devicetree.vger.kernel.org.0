Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 934E63D7F7C
	for <lists+devicetree@lfdr.de>; Tue, 27 Jul 2021 22:49:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232208AbhG0Utj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Jul 2021 16:49:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51890 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232133AbhG0Utj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Jul 2021 16:49:39 -0400
Received: from mail-io1-xd36.google.com (mail-io1-xd36.google.com [IPv6:2607:f8b0:4864:20::d36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1B6B6C061757
        for <devicetree@vger.kernel.org>; Tue, 27 Jul 2021 13:49:39 -0700 (PDT)
Received: by mail-io1-xd36.google.com with SMTP id f11so335186ioj.3
        for <devicetree@vger.kernel.org>; Tue, 27 Jul 2021 13:49:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=engleder-embedded-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=64tNPGucwZBu9cEJcgaC2pBbTlgtzE/y1Q1KvB08ytA=;
        b=IdGN52UmTF1b0dKE/DwwfwWVY0ALlk16Cl+YXbIzE2iWthfEQaKtZ5aUMXKt/6ETmE
         /nux9Q5iPxerbE11u4zDnPA+lFzHEiGGbxhaeXxn5cJnhWPV/PM/v39KpMui2t1PcbVa
         wx2Kg2NSm5J7JudzswT0nb0WykvPNC15TkK0aBMTLKNCx7aW8eH5kEZ2xbNtiiEYH7os
         Sc++SOQlIGyC9tCAgJ9LPeuwuE7QVxiw35lOAi+huU8IMFL7Yayn77kjv1Zu4VXKwsB3
         oGxl2VSTa5x7E6zVoSysEhylZgprynD2J/P8y/7Q2lJcAcqpCuLGQWHbmLrOPmWfp5D+
         HUmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=64tNPGucwZBu9cEJcgaC2pBbTlgtzE/y1Q1KvB08ytA=;
        b=kShJ3CRRxNIsP57IXM9kRXW7c12hVz7aTsqhRonn/Zf00m50+DCD9J1AgltXi87Cxg
         /nw/+oa7vwj4xJZxDXIeJxML3KEBawihQHRp8/cyjjCCY3cb1C2LT3Q3oAQVKDwR0AGC
         Oa/xzjFT5nPBn90PVY7nnaffnvNQe0Cg8PzLz6ey7uysJt30e8Ef3qmnbfE9FT5+6Mzq
         6bPHyYWaa64Kx5uFTNMXFIQFyEVwlveVCAT1SNid4Wd2dh7DDq9XIn6m+olLwo89y7zv
         3OYkvN0J8DYmzugWudltnMdqyVjzuXcOInqJLOP+PW1Qq9+zJjWQOyPOuWBDNVKTg9vW
         f6ig==
X-Gm-Message-State: AOAM533dFrj+Cjzfz1js7kTFdLDHxgQAXkewDDN+62DOT7WoXJwmMnRa
        GyF58Hofz/0fu49tzbfvWXumNXX+8dA66TtP/fzfVj8YsbfGRIdQHOSg9A==
X-Google-Smtp-Source: ABdhPJzr+kjWb75ibDmQA0bhH6DcFg215f5lkpfWA45ZPPGKvzYMzXTwddcEO0toK39m6cpENiwgU9mfdLv9Ythzan0=
X-Received: by 2002:a05:6638:41a7:: with SMTP id az39mr23015848jab.52.1627418978515;
 Tue, 27 Jul 2021 13:49:38 -0700 (PDT)
MIME-Version: 1.0
References: <20210726194603.14671-1-gerhard@engleder-embedded.com>
 <20210726194603.14671-5-gerhard@engleder-embedded.com> <YP8l6cWaQU/2NoIA@lunn.ch>
In-Reply-To: <YP8l6cWaQU/2NoIA@lunn.ch>
From:   Gerhard Engleder <gerhard@engleder-embedded.com>
Date:   Tue, 27 Jul 2021 22:49:27 +0200
Message-ID: <CANr-f5xOn1VcKZQNfb+iunHjq+8uUkxNQb0F1_gkjqd4CxGKDQ@mail.gmail.com>
Subject: Re: [PATCH net-next 4/5] tsnep: Add TSN endpoint Ethernet MAC driver
To:     Andrew Lunn <andrew@lunn.ch>
Cc:     David Miller <davem@davemloft.net>,
        Jakub Kicinski <kuba@kernel.org>,
        netdev <netdev@vger.kernel.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jul 26, 2021 at 11:15 PM Andrew Lunn <andrew@lunn.ch> wrote:
> > +static int tsnep_mdiobus_read(struct mii_bus *bus, int addr, int regnum)
> > +{
> > +     struct tsnep_adapter *adapter = bus->priv;
> > +     u16 data;
> > +     int retval;
> > +
> > +     if (adapter->loopback)
> > +             return 0;
> > +
> > +     retval = tsnep_read_md(adapter, addr, regnum, &data);
> > +     if (retval != 0)
> > +             return retval;
>
> It appears your MDIO bus can only do C22. Please add a test for C45 and return -EOPNOTSUPP.

You are right. I will add that check.

> > +static void tsnep_phy_link_status_change(struct net_device *netdev)
> > +{
> > +     struct tsnep_adapter *adapter = netdev_priv(netdev);
> > +     struct phy_device *phydev = netdev->phydev;
> > +
> > +     if (adapter->loopback)
> > +             return;
> > +
> > +     if (adapter->gmii2rgmii) {
> > +             u16 val;
> > +
> > +             if (phydev->link && phydev->speed == 1000)
> > +                     val = BMCR_SPEED1000;
> > +             else
> > +                     val = BMCR_SPEED100;
> > +             tsnep_write_md(adapter, ECM_GMII2RGMII_ADDR,
> > +                            ECM_GMII2RGMII_BMCR, val);
> > +     }
>
> I _think_ this is wrong. They way the PHYs are chained means you
> should not need to do this, the xgmiitorgmii_read_status() does it.
> Maybe you have the chaining setup wrong?

I will try to use xgmiitorgmii.

> > +static int tsnep_phy_open(struct tsnep_adapter *adapter)
> > +{
> > +     __ETHTOOL_DECLARE_LINK_MODE_MASK(mask);
> > +     struct ethtool_eee ethtool_eee;
> > +     int retval;
> > +
> > +     retval = phy_connect_direct(adapter->netdev, adapter->phydev,
> > +                                 tsnep_phy_link_status_change,
> > +                                 adapter->phy_mode);
> > +     if (retval)
> > +             return -EIO;
>
> phy_connect_direct() returns an error code. Use it, rather than
> changing it to something else. This applies everywhere. You must have
> a good reason to change error codes, and then it is wise to put a
> comment why you change it.

I will fix it.

> > +
> > +     /* MAC supports only 100Mbps|1000Mbps full duplex
> > +      * SPE (Single Pair Ethernet) is also an option but not implemented yet
> > +      */
> > +     linkmode_zero(mask);
> > +     linkmode_set_bit(ETHTOOL_LINK_MODE_Autoneg_BIT, mask);
> > +     linkmode_set_bit(ETHTOOL_LINK_MODE_100baseT_Full_BIT, mask);
> > +     linkmode_set_bit(ETHTOOL_LINK_MODE_1000baseT_Full_BIT, mask);
> > +     linkmode_and(mask, adapter->phydev->supported, mask);
> > +     linkmode_copy(adapter->phydev->supported, mask);
> > +     linkmode_copy(adapter->phydev->advertising, mask);
>
> You should not be accessing the phydev directly. Use
> phy_remove_link_mode(phydev, ETHTOOL_LINK_MODE_1000baseT_Half_BIT),
> etc.I will try to use xgmiitorgmii.

I will use phy_remove_link_mode().

> > +static int tsnep_phy_init(struct tsnep_adapter *adapter)
> > +{
> > +     struct device_node *dn;
> > +     u16 val;
> > +     u32 id;
> > +     int retval;
> > +
> > +     retval = of_get_phy_mode(adapter->pdev->dev.of_node,
> > +                              &adapter->phy_mode);
> > +     if (retval)
> > +             adapter->phy_mode = PHY_INTERFACE_MODE_GMII;
> > +
> > +     dn = of_parse_phandle(adapter->pdev->dev.of_node, "phy-handle", 0);
> > +     adapter->phydev = of_phy_find_device(dn);
> > +     if (!adapter->phydev)
> > +             adapter->phydev = phy_find_first(adapter->mdiobus);
> > +     if (!adapter->phydev)
> > +             return -EIO;
> > +
> > +     /* detect optional GMII2RGMII */I will try to use xgmiitorgmii.
> > +     retval = tsnep_read_md(adapter, ECM_GMII2RGMII_ADDR, MII_PHYSID1, &val);
> > +     if (retval)
> > +             return retval;
> > +     id = val << 16;
> > +     retval = tsnep_read_md(adapter, ECM_GMII2RGMII_ADDR, MII_PHYSID2, &val);
> > +     if (retval)
> > +             return retval;
> > +     id |= val;
> > +     if (id == 0)
> > +             adapter->gmii2rgmii = true;
>
> This is where i think GMII2RGMII goes wrong. MAC phy-handle should
> point to the GMII2RGMII device in DT. The GMII2RGMII should have a
> phy-handle which points to the PHY.

As mentioned above, I will try to use xgmiitorgmii.

> > +     /* reset PHY */
> > +     retval = tsnep_write_md(adapter, adapter->phydev->mdio.addr, MII_BMCR,
> > +                             BMCR_RESET);
> > +     if (retval)
> > +             return retval;
> > +
> > +     /* reset GMII2RGMII */
> > +     if (adapter->gmii2rgmii) {
> > +             retval = tsnep_write_md(adapter, ECM_GMII2RGMII_ADDR,
> > +                                     ECM_GMII2RGMII_BMCR, BMCR_RESET);
> > +             if (retval)
> > +                     return retval;
> > +             retval = tsnep_write_md(adapter, ECM_GMII2RGMII_ADDR,
> > +                                     ECM_GMII2RGMII_BMCR, BMCR_SPEED100);
> > +             if (retval)
> > +                     return retval;
> > +     }
>
> The PHY driver is in control of the PHY, not the MAC. Please remove.

Ok, I will do that.

Gerhard
