Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AE7F0641A15
	for <lists+devicetree@lfdr.de>; Sun,  4 Dec 2022 01:16:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229450AbiLDAP7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 3 Dec 2022 19:15:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50992 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229630AbiLDAP6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 3 Dec 2022 19:15:58 -0500
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 15C8519C1D
        for <devicetree@vger.kernel.org>; Sat,  3 Dec 2022 16:15:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
        s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
        References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
        Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
        Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
        bh=OBWPLep1w5PFRb0P2FYX8wJv6iZR5z+0Kum/cOq6HXA=; b=1nD2TxGm4cIFIjKfVl0WpKXrft
        qEY12YvUMhTJCMOdGOC2+CEPsFK009K6ljGtQajjXViitZHVP3Xkivjvx6n5OgkOn7rolPnx27f95
        OqKcqLeeS5aEA7cx7pNpZDzxBsF3akj0/6Lw8lwgnyTbsxH3xoJs6+/sqftmH/ohjpN0=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
        (envelope-from <andrew@lunn.ch>)
        id 1p1ceu-004IJv-8I; Sun, 04 Dec 2022 01:15:04 +0100
Date:   Sun, 4 Dec 2022 01:15:04 +0100
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
Message-ID: <Y4vmiEQcGZCawcuL@lunn.ch>
References: <20221201003109.448693-1-tharvey@gateworks.com>
 <CAOMZO5Ba6Kmt-a7FMxj-gN5rEyMJJ=9CFRkS0vQkPf_-72rR2w@mail.gmail.com>
 <Y4n41iL6cG9FsndI@lunn.ch>
 <CAJ+vNU0kAoVFFmoFfiOhtErxqAkB3MmP3Q2dNCZP4xm_AaWhcA@mail.gmail.com>
 <Y4o2TFGH6DK3tRcH@lunn.ch>
 <CAJ+vNU1NDggHF4Wn_kg120uPZ=LPCQf2fZ+x6ii6tEMf7DzxFQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAJ+vNU1NDggHF4Wn_kg120uPZ=LPCQf2fZ+x6ii6tEMf7DzxFQ@mail.gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> mv88e6085 2188000.ethernet-1:00: Skipping phylink registration for CPU port 5
> mv88e6085 2188000.ethernet-1:00 lan4 (uninitialized): PHY
> [mv88e6xxx-1:00] driver [Generic PHY] (irq=POLL)
> mv88e6085 2188000.ethernet-1:00 lan3 (uninitialized): PHY
> [mv88e6xxx-1:01] driver [Generic PHY] (irq=POLL)
> mv88e6085 2188000.ethernet-1:00 lan2 (uninitialized): PHY
> [mv88e6xxx-1:02] driver [Generic PHY] (irq=POLL)
> mv88e6085 2188000.ethernet-1:00 lan1 (uninitialized): PHY
> [mv88e6xxx-1:03] driver [Generic PHY] (irq=POLL)

Hi Tim

You are using the generic PHY driver, not the Marvell driver.
I suggest you fix that first. See if that causes the problem to go
away.

	Andrew
