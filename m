Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 41E2564077F
	for <lists+devicetree@lfdr.de>; Fri,  2 Dec 2022 14:09:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232651AbiLBNJ0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Dec 2022 08:09:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42874 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233717AbiLBNJR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Dec 2022 08:09:17 -0500
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DA73AB0A1C
        for <devicetree@vger.kernel.org>; Fri,  2 Dec 2022 05:09:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
        s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
        References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
        Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
        Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
        bh=LoFowH61SmY8vTQrd3MPZqzoBl8jG/gdtPUUk/v8Al4=; b=T4U5Om7iQCpOXCjq/QS/TLC3Ih
        a+5rEUAr1FpfcoWsFsUvYe+MH9rX3QtmgYYNx8GP6cQPN+mx1tk4a6oO86rUalkPXv6Fkdaaz7Nvn
        K6/4+HkUHZORVphbfN9mgL5gCrIHTd5uw+caVNYgIcHpqj5/rAntw7CeDW5MfMh3RTsY=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
        (envelope-from <andrew@lunn.ch>)
        id 1p15mQ-004AxZ-7C; Fri, 02 Dec 2022 14:08:38 +0100
Date:   Fri, 2 Dec 2022 14:08:38 +0100
From:   Andrew Lunn <andrew@lunn.ch>
To:     Fabio Estevam <festevam@gmail.com>
Cc:     Tim Harvey <tharvey@gateworks.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Vladimir Oltean <vladimir.oltean@nxp.com>
Subject: Re: [PATCH 1/2] ARM: dts: imx6qdl-gw5904: add internal mdio nodes
Message-ID: <Y4n41iL6cG9FsndI@lunn.ch>
References: <20221201003109.448693-1-tharvey@gateworks.com>
 <CAOMZO5Ba6Kmt-a7FMxj-gN5rEyMJJ=9CFRkS0vQkPf_-72rR2w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAOMZO5Ba6Kmt-a7FMxj-gN5rEyMJJ=9CFRkS0vQkPf_-72rR2w@mail.gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Dec 01, 2022 at 10:02:08PM -0300, Fabio Estevam wrote:
> Hi Tim,
> 
> [Adding Andrew]

It is not wrong, but it should also mostly not be needed. The switch
driver can link internal PHYs to ports.

> >                                 port@5 {
> >                                         reg = <5>;
> >                                         label = "cpu";
> >                                         ethernet = <&fec>;
> > +                                       phy-mode = "rgmii-id";
> > +
> > +                                       fixed-link {
> > +                                               speed = <1000>;
> > +                                               full-duplex;
> > +                                       };
> >                                 };

This part is needed to make a warning go away. Does the SoC network interface 
have phy-mode = "rgmii"; ?

     Andrew
