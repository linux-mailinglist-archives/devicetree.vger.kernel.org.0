Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9018A4024E7
	for <lists+devicetree@lfdr.de>; Tue,  7 Sep 2021 10:11:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240530AbhIGIMc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Sep 2021 04:12:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40866 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239792AbhIGIMb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Sep 2021 04:12:31 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C213EC061575
        for <devicetree@vger.kernel.org>; Tue,  7 Sep 2021 01:11:25 -0700 (PDT)
Received: from gallifrey.ext.pengutronix.de ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1mNWCM-0005c2-JH; Tue, 07 Sep 2021 10:11:18 +0200
Message-ID: <34ee3657e859a0abaca5021d2afd38f320dd8e69.camel@pengutronix.de>
Subject: Re: [PATCH v3 09/18] dt-bindings: power: imx8mm: add defines for
 VPU blk-ctrl domains
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Frieder Schrempf <frieder.schrempf@kontron.de>,
        Shawn Guo <shawnguo@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Adam Ford <aford173@gmail.com>, Marek Vasut <marex@denx.de>,
        Tim Harvey <tharvey@gateworks.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de,
        patchwork-lst@pengutronix.de
Date:   Tue, 07 Sep 2021 10:11:16 +0200
In-Reply-To: <e5e34d1e-6e5b-4517-2b8b-daf6a966cde4@kontron.de>
References: <20210906184333.1855426-1-l.stach@pengutronix.de>
         <20210906184333.1855426-10-l.stach@pengutronix.de>
         <e5e34d1e-6e5b-4517-2b8b-daf6a966cde4@kontron.de>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34) 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Am Dienstag, dem 07.09.2021 um 09:06 +0200 schrieb Frieder Schrempf:
> On 06.09.21 20:43, Lucas Stach wrote:
> > This adds the defines for the power domains provided by the VPU
> > blk-ctrl.
> > 
> > Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> > ---
> >  include/dt-bindings/power/imx8mm-power.h | 4 ++++
> >  1 file changed, 4 insertions(+)
> > 
> > diff --git a/include/dt-bindings/power/imx8mm-power.h b/include/dt-bindings/power/imx8mm-power.h
> > index fc9c2e16aadc..38b0a56fd7d0 100644
> > --- a/include/dt-bindings/power/imx8mm-power.h
> > +++ b/include/dt-bindings/power/imx8mm-power.h
> > @@ -19,4 +19,8 @@
> >  #define IMX8MM_POWER_DOMAIN_DISPMIX	10
> >  #define IMX8MM_POWER_DOMAIN_MIPI	11
> >  
> > +#define IMX8MM_VPUBLK_PD_G1		0
> > +#define IMX8MM_VPUBLK_PD_G2		1
> > +#define IMX8MM_VPUBLK_PD_H1		2
> 
> I wonder how these defines should be named. Here you have a
> IMX8MM_*BLK_PD_*, but for the DISP BLK-CTRL you only have IMX8MM_*BLK_*
> (without the PD).
> 
> Also in Peng's last approach for this we already have defines for this
> [1] that have been acked by Rob and might be useful as a reference or
> you could even pick up Peng's patch and by that carry over the existing
> R-b/A-b tags.
> 
> Though, in general I like the shorter versions you provided better.

Good point, we should try to be consistent here. I don't want those
names to be overly long, but it should be clear that those are power
domain specifiers. IMO the best option is the *BLK_PD* naming, as used
in the VPUMIX binding.

Regards,
Lucas

