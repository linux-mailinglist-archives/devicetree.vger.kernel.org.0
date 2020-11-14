Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B19E62B310B
	for <lists+devicetree@lfdr.de>; Sat, 14 Nov 2020 22:42:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726248AbgKNVmW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 14 Nov 2020 16:42:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37506 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726189AbgKNVmW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 14 Nov 2020 16:42:22 -0500
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk [IPv6:2001:4d48:ad52:32c8:5054:ff:fe00:142])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4BD87C0613D1
        for <devicetree@vger.kernel.org>; Sat, 14 Nov 2020 13:42:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
        Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
        Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
        Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
         bh=bktvrz1nvUKhpB1DYQLDXpxlK42/U3Mh7kj6eaDLm/A=; b=q7tcxMX7Fhc4POHHRvYQpH6HA
        ehCgszcXv/1FI2YExDsNIafP4R/0Jc+WQD5XJnfmxTY9xgtSqaKswx2Cm2nAh+KNwofHLqgMouu5N
        95iyBV0Hx4WdoPjRXQxBivoBBy09R4aZrYAi5KFRnQhDyVXX7odSWkMDcOoMFOUU7LhuxqhkmChia
        t4px9xi3Iff1mhatCwB6lpHx0bHwewTu5WRkh6ZvnSwJIg1xV1zWIh6pjkhZUorZGR8krdW/mrc+A
        Wz82v1qy1QmvlLfHIhOYF3E4E7eE0i1JBpGDN9znb4rDKyB2K5MxSndHZxKgo3XiYV2WYsT3/Vqxp
        y+HmOFg6A==;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:59716)
        by pandora.armlinux.org.uk with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <linux@armlinux.org.uk>)
        id 1ke3J8-000666-6B; Sat, 14 Nov 2020 21:42:06 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
        (envelope-from <linux@shell.armlinux.org.uk>)
        id 1ke3J6-0005mb-WC; Sat, 14 Nov 2020 21:42:05 +0000
Date:   Sat, 14 Nov 2020 21:42:04 +0000
From:   Russell King - ARM Linux admin <linux@armlinux.org.uk>
To:     Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>
Cc:     Marek =?iso-8859-1?Q?Beh=FAn?= <kabel@kernel.org>,
        Gregory CLEMENT <gregory.clement@bootlin.com>, arm@kernel.org,
        Andrew Lunn <andrew@lunn.ch>,
        Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <uwe@kleine-koenig.org>,
        Jason Cooper <jason@lakedaemon.net>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH mvebu-dt v2 4/6] ARM: dts: turris-omnia: add SFP node
Message-ID: <20201114214204.GE1551@shell.armlinux.org.uk>
References: <20201114183217.1352-1-kabel@kernel.org>
 <20201114183217.1352-5-kabel@kernel.org>
 <972cde9c-9e4a-0e43-c9c3-9528581d8738@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <972cde9c-9e4a-0e43-c9c3-9528581d8738@suse.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Nov 14, 2020 at 10:36:09PM +0100, Andreas Färber wrote:
> Hi Marek,
> 
> On 14.11.20 19:32, Marek Behún wrote:
> > Turris Omnia has a SFP cage that, together with WAN PHY is connected to
> 
> "an SFP"
> Comma missing after PHY (or drop before together).
> 
> > eth2 SerDes via a SerDes multiplexor. Describe the SFP cage, but leave
> > it disabled. Until phylink has support for such multiplexor we will
> > leave it to U-Boot to enable SFP and disable WAN PHY at boot time
> > depending on whether a SFP module is present.
> 
> multiplexor vs. multiplexer may be a British thing? Thunderbird
> underlines it fwiw.

Why doesn't someone who has a Turris Omnia come up with the support
needed for this board, such as sending a patch to add support for
this multiplexer?

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 40Mbps down 10Mbps up. Decent connectivity at last!
