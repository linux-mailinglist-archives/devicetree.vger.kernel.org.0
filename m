Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C44FF434FFC
	for <lists+devicetree@lfdr.de>; Wed, 20 Oct 2021 18:18:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231176AbhJTQUQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Oct 2021 12:20:16 -0400
Received: from vps0.lunn.ch ([185.16.172.187]:49012 "EHLO vps0.lunn.ch"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S231153AbhJTQUQ (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 20 Oct 2021 12:20:16 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
        s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
        References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
        Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
        Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
        bh=oMbiZn0urVTXMiZ7y6YaJ6G+tgAv7Y4axfABeSMfEh8=; b=smRarVxuh6L3ao56wcsNOaw4O1
        87lV8+DT7KmMeR6PPSKWJJwMziP3gQU3nxy3GtxgalDtZ55uMwEHnMfuF8pZ9SJx8uYq4QxjLiuHk
        SZRC5cGCCYQ1JXEUkcOpJvvN56NZR8AXhM9mvSG58668qX/W2E93wU0JAdmE/N4lfECM=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
        (envelope-from <andrew@lunn.ch>)
        id 1mdEHr-00BCWg-I5; Wed, 20 Oct 2021 18:17:55 +0200
Date:   Wed, 20 Oct 2021 18:17:55 +0200
From:   Andrew Lunn <andrew@lunn.ch>
To:     "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>
Cc:     Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Stefan Agner <stefan@agner.ch>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: vf610-zii-dev-rev-b: correct phy-mode for 6185
 dsa link
Message-ID: <YXBBM/8YAR3ZVsaY@lunn.ch>
References: <E1mdDr3-006f6l-QZ@rmk-PC.armlinux.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <E1mdDr3-006f6l-QZ@rmk-PC.armlinux.org.uk>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Oct 20, 2021 at 04:50:13PM +0100, Russell King (Oracle) wrote:
> DT currently lists the port mode for the 88E6352 switch 1 to 88E6185
> switch 2 as "rgmii-id" but referring to the schematics, it is in fact
> a serdes link. The 88E6352 is configured with P5_MODE=6, S_SEL=1 and
> S_MODE=1, which means port 5 is configured as 1000BASE-X.
> 
> This is confirmed by the value in the 88E6352 port 5 status register,
> 0x4e09, where C_MODE=9 meaning 1000BASE-X. It is also confirmed by
> the 88E6185 port 9 status register, 0x5e8c, where C_MODE=4 meaning
> cross-chip SERDES mode is selected.
> 
> Signed-off-by: Russell King (Oracle) <rmk+kernel@armlinux.org.uk>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew
