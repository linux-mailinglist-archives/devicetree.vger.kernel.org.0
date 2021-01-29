Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C499130863E
	for <lists+devicetree@lfdr.de>; Fri, 29 Jan 2021 08:13:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232091AbhA2HIe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 29 Jan 2021 02:08:34 -0500
Received: from mail.kernel.org ([198.145.29.99]:39584 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S232017AbhA2HIc (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 29 Jan 2021 02:08:32 -0500
Received: by mail.kernel.org (Postfix) with ESMTPSA id 95C1564DFD;
        Fri, 29 Jan 2021 07:07:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1611904072;
        bh=fDfqZ73Kb/fY+9+rr8VqYQjSFT6GtB+I9YhcNaY3Z3k=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=KZ9jlHB5oYe0mRA1dw9NCUOcnwoxowDKiBVSOvWsw+R2OTCu+2INhmqA8nUxBdbnV
         duKpouSomG+AtK960r3fjUXbQL5Bbki1dU6VBiFiLocTSB3KInh1r2BbpA9CgeoPSU
         aP0bEI9rVonwRQUjAj/zn9Bp3dTL4M6ZCYwUo5/MFQAVEYWDBWB5t0oN6uGH1Ao4i0
         Gm1yMo8AD6Q5SOSvnpovknukx4bmKWGEcloMnE/uyuTOwBeliLZueYaw/tcLSkok/S
         o/Io7NEdRdz1L+xo1ewjH70bYMLxrvwmevtmupFyjAJHrw2n6v7ArXF9+aqzNynXGl
         jEXWBsIZ2sllQ==
Date:   Fri, 29 Jan 2021 15:07:46 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Russell King <rmk+kernel@armlinux.org.uk>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] ARM: dts: imx6-sr-som: increase at8035 PHY gigabit Tw
 parameter
Message-ID: <20210129070745.GG4356@dragon>
References: <E1l0Ye4-0002pq-CQ@rmk-PC.armlinux.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <E1l0Ye4-0002pq-CQ@rmk-PC.armlinux.org.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jan 15, 2021 at 11:36:44PM +0000, Russell King wrote:
> Increase the SmartEEE Tw parameter for Atheros PHYs to stop gigabit
> links from sporadically dropping. Jon Nettleton found that a value
> of 23 was the minimum to give a stable link, but testing with the
> Com Express 7 module shows 24 is the minimum - so 23 may still be on
> the margins. Use 24 instead for consistency across SolidRun platforms.
> 
> Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>

Applied, thanks.
