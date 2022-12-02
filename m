Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 374CE640C2E
	for <lists+devicetree@lfdr.de>; Fri,  2 Dec 2022 18:31:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234088AbiLBRbR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Dec 2022 12:31:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47190 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232519AbiLBRbQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Dec 2022 12:31:16 -0500
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EDD8A205
        for <devicetree@vger.kernel.org>; Fri,  2 Dec 2022 09:31:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
        s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
        References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
        Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
        Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
        bh=2Gv6bCtKKiCcVWitMkHgLgpTWvqjbeWSixTRqZ0jen0=; b=LaO7ceC1rKIv/hBCf0OdRgayCh
        f5GzZfX8uhxjb+bQhNT5UuuHexSMjXSqxy799Fbi/HHNV4ou/nNAMFtKjr5XroRTh2fl7gdFCP0UB
        2JMUWU0YJo9Nr/S/G+pe/h3s7ksWfTO+bmw71G/l+lBZ8OiFaXSeALH0RNCgZSklYO1A=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
        (envelope-from <andrew@lunn.ch>)
        id 1p19sC-004CTq-Av; Fri, 02 Dec 2022 18:30:52 +0100
Date:   Fri, 2 Dec 2022 18:30:52 +0100
From:   Andrew Lunn <andrew@lunn.ch>
To:     Tim Harvey <tharvey@gateworks.com>
Cc:     Fabio Estevam <festevam@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Vladimir Oltean <vladimir.oltean@nxp.com>
Subject: Re: [PATCH 1/2] ARM: dts: imx6qdl-gw5904: add internal mdio nodes
Message-ID: <Y4o2TFGH6DK3tRcH@lunn.ch>
References: <20221201003109.448693-1-tharvey@gateworks.com>
 <CAOMZO5Ba6Kmt-a7FMxj-gN5rEyMJJ=9CFRkS0vQkPf_-72rR2w@mail.gmail.com>
 <Y4n41iL6cG9FsndI@lunn.ch>
 <CAJ+vNU0kAoVFFmoFfiOhtErxqAkB3MmP3Q2dNCZP4xm_AaWhcA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAJ+vNU0kAoVFFmoFfiOhtErxqAkB3MmP3Q2dNCZP4xm_AaWhcA@mail.gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> > > >                                 port@5 {
> > > >                                         reg = <5>;
> > > >                                         label = "cpu";
> > > >                                         ethernet = <&fec>;
> > > > +                                       phy-mode = "rgmii-id";
> > > > +
> > > > +                                       fixed-link {
> > > > +                                               speed = <1000>;
> > > > +                                               full-duplex;
> > > > +                                       };
> > > >                                 };
> >
> > This part is needed to make a warning go away. Does the SoC network interface
> > have phy-mode = "rgmii"; ?
> 
> No, it looks like this:
> 
> &fec {
>         pinctrl-names = "default";
>         pinctrl-0 = <&pinctrl_enet>;
>         phy-mode = "rgmii-id";
 
> Is something here wrong?

It suggests both ends should insert RGMII delays. So you will end up
with double delays. Have one end say plain "rgmii" and the other
"rgmii-id". I would probably go with the FEC being "rgmii".

    Andrew
