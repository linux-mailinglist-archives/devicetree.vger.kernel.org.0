Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4E8E82B43D0
	for <lists+devicetree@lfdr.de>; Mon, 16 Nov 2020 13:35:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729515AbgKPMfQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Nov 2020 07:35:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55044 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728329AbgKPMfQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Nov 2020 07:35:16 -0500
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk [IPv6:2001:4d48:ad52:32c8:5054:ff:fe00:142])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A51D4C0613CF
        for <devicetree@vger.kernel.org>; Mon, 16 Nov 2020 04:35:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
        Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
        Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
        Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
         bh=8O3kvJpI7KdjSrm/CbOy7Jwa9oC+EDHFLiYRVleFgHQ=; b=PET60rhPq945Yj7dDV6/fV2O6
        kUD+6uPlXLJaRlQPgJUo28vNv763Ai7HmtSm/fr2extD0nsCdXgbzGO76RHe4lAM+QGnTD5hDlJt4
        oi4J7iUkdtMDedFAe+UwVva3ZKhB6/xso7jEPDKSBJ/YX/lP7bNCgjTdPQhaDZ0QoVKS75gSOheHV
        qPb7lLiVmuh1CbnIbZuGtn9DRQyuhH2a5C1ohbrVGC+g7Wz/yIE1c5RJIhl2D9fXKo69pbxT8QQYh
        gcllgeT5PMEXb27FQb5GpuDz7OAqYvgPvacio9sAC+7MbfZPSLh8j6FFERMcikaP1osiNpwBAQP//
        Ky+tHFgog==;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:60398)
        by pandora.armlinux.org.uk with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <linux@armlinux.org.uk>)
        id 1kedij-0007HW-SG; Mon, 16 Nov 2020 12:34:57 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
        (envelope-from <linux@shell.armlinux.org.uk>)
        id 1kedii-0007SO-9S; Mon, 16 Nov 2020 12:34:56 +0000
Date:   Mon, 16 Nov 2020 12:34:56 +0000
From:   Russell King - ARM Linux admin <linux@armlinux.org.uk>
To:     Marek =?iso-8859-1?Q?Beh=FAn?= <kabel@kernel.org>
Cc:     Gregory CLEMENT <gregory.clement@bootlin.com>, arm@kernel.org,
        Andrew Lunn <andrew@lunn.ch>,
        linux-arm-kernel@lists.infradead.org,
        Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <uwe@kleine-koenig.org>,
        Jason Cooper <jason@lakedaemon.net>,
        Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH mvebu-dt v3.1 4/7] ARM: dts: turris-omnia: add SFP node
Message-ID: <20201116123456.GJ1551@shell.armlinux.org.uk>
References: <20201115135923.11523-5-kabel@kernel.org>
 <20201116122422.6840-1-kabel@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20201116122422.6840-1-kabel@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Nov 16, 2020 at 01:24:22PM +0100, Marek Behún wrote:
> Describe the SFP cage, but leave it disabled. Until phylink has support
> for such configuration, we are leaving it to U-Boot to enable SFP and
> disable WAN PHY at boot time depending on whether a SFP module is
> present.

Let's be clear: this is _not_ something I have any plans to be working
on adding; this is for others to get involved with.

I am not going to ack or review your patch to hack around this either.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 40Mbps down 10Mbps up. Decent connectivity at last!
