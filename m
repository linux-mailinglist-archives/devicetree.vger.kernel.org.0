Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B50242D4108
	for <lists+devicetree@lfdr.de>; Wed,  9 Dec 2020 12:25:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730738AbgLILYu convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Wed, 9 Dec 2020 06:24:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36138 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730603AbgLILYr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Dec 2020 06:24:47 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0AA0AC0613CF
        for <devicetree@vger.kernel.org>; Wed,  9 Dec 2020 03:24:07 -0800 (PST)
Received: from lupine.hi.pengutronix.de ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <p.zabel@pengutronix.de>)
        id 1kmxZk-0003qM-VZ; Wed, 09 Dec 2020 12:24:04 +0100
Received: from pza by lupine with local (Exim 4.92)
        (envelope-from <p.zabel@pengutronix.de>)
        id 1kmxZk-0000v8-G1; Wed, 09 Dec 2020 12:24:04 +0100
Message-ID: <3a42f4638ce6b2916eea07adf5822b06e2d1ca02.camel@pengutronix.de>
Subject: Re: [PATCH V2 2/2] reset: brcm-pmb: add driver for Broadcom's PMB
From:   Philipp Zabel <p.zabel@pengutronix.de>
To:     Florian Fainelli <f.fainelli@gmail.com>,
        =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>
Date:   Wed, 09 Dec 2020 12:24:04 +0100
In-Reply-To: <4eeb0a1c-75e4-94ad-8fbb-aeb347aea5d0@gmail.com>
References: <20201119125600.8559-1-zajec5@gmail.com>
         <20201119125600.8559-3-zajec5@gmail.com>
         <d5162eae806f21f583c6dbdf7bb79384a3d9d5cf.camel@pengutronix.de>
         <4eeb0a1c-75e4-94ad-8fbb-aeb347aea5d0@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8BIT
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Florian,

On Tue, 2020-12-08 at 12:20 -0800, Florian Fainelli wrote:
> On 12/8/20 3:02 AM, Philipp Zabel wrote:
> > Hi Rafał,
> > 
> > On Thu, 2020-11-19 at 13:56 +0100, Rafał Miłecki wrote:
> > > From: Rafał Miłecki <rafal@milecki.pl>
> > > 
> > > PMB can be found on BCM4908 and many other chipsets (e.g. BCM63138).
> > > It's needed to power on and off SoC blocks like PCIe, SATA, USB.
> > 
> > This sentence, the register names, and
> > the brcm_pmb_power_on/off_device/zone functions below make me worry that
> > this should be a power domain controller (pm_genpd in drivers/soc)
> > instead.
> > Does PM in PMB stand for power management by chance?
> 
> It does, PMB stands for Power Management Bus.
> 
> > If this actually cuts power to the USB and PCIe cores instead of just
> > controlling reset lines, it would be better to implement this
> > differently.
> 
> What is tricky is this is a combined reset/clock/power zones controller.
> You rarely turn off/assert one of those without also turning
> off/asserting the others.

It is common to have power management controllers also control clocks
and resets.
If the PMB controlled clocks and resets are only required for the power
on/off sequences, you should be able to move the current .(de)assert
implementations into a generic_pm_domain's .power_on and .power_off
methods.

regards
Philipp
