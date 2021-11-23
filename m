Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9FC8D45A250
	for <lists+devicetree@lfdr.de>; Tue, 23 Nov 2021 13:15:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233037AbhKWMTB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Nov 2021 07:19:01 -0500
Received: from mail.kernel.org ([198.145.29.99]:46482 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229939AbhKWMTB (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 23 Nov 2021 07:19:01 -0500
Received: by mail.kernel.org (Postfix) with ESMTPSA id E833060D42;
        Tue, 23 Nov 2021 12:15:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1637669753;
        bh=Wth+sVh8/S9qyJ1WmYUOoJConkOt2+OKnDqTUqF3+TM=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=taZdQFiKY6D5YoSeRRKtmnUXpRH7zerEchH0JrDI6O8n5Vpdrj2nW3TyDAASMb6R4
         cmgtCrR6xT+iBTTBfeGrouf6g60btywqMiweYd/6P2lc+Melxpun5D1GxshE08T86q
         Ry89FoA6i/xtStHanW65HuDC46UQPSMLRqX98Oujr2J0WiGdJ8eoEMsS42wgEx9H0X
         wTfTkoCymNwVvrt0JTEdWzF4rPK24Eiw7GV4FnlsKitJOAFIHqGh6cB+0ZJB3UBktj
         ikH9HlFInEbuqrIzCanDqAUBzW2PU16wWIc+j9Pi8AVUfgnSEXUz1punx97h6JKiRe
         MviERss5MlAmw==
Date:   Tue, 23 Nov 2021 20:15:47 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Peng Fan <peng.fan@nxp.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: (EXT) Re: [PATCH v2 1/1] arm64: dts: imx8qm: Add fsl,
 imx7ulp-lpuart compatible to lpuart
Message-ID: <20211123121547.GC4216@dragon>
References: <20211116125814.2674343-1-alexander.stein@ew.tq-group.com>
 <20211122014314.GV31998@dragon>
 <c5c16bb09ed704b16e531fd83cf24f140dc2f529.camel@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c5c16bb09ed704b16e531fd83cf24f140dc2f529.camel@ew.tq-group.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Nov 22, 2021 at 08:38:28AM +0100, Alexander Stein wrote:
> Am Montag, dem 22.11.2021 um 09:43 +0800 schrieb Shawn Guo:
> > On Tue, Nov 16, 2021 at 01:58:14PM +0100, Alexander Stein wrote:
> > > After commit b4b844930f27 ("tty: serial: fsl_lpuart: drop earlycon
> > > entry
> > > for i.MX8QXP") earlycon support was essentially removed from
> > > imx8qm/imx8qxp due to missing compatible.
> > > The commit message says "i.MX8QXP lpuart is compatible with
> > > i.MX7ULP" so
> > > adding a fallback compatible should be fine.
> > > With this change earlycon is supported again on imx8qm/imx8qxp.
> > > 
> > > Signed-off-by: Alexander Stein <
> > > alexander.stein@ew.tq-group.com
> > > >
> > > Reviewed-by: Peng Fan <
> > > peng.fan@nxp.com
> > > >
> > > ---
> > > Changes in v2:
> > > * Fix typo in commit message: 'early' -> 'earlycon'
> > > 
> > >  arch/arm64/boot/dts/freescale/imx8qm-ss-dma.dtsi | 8 ++++----
> > >  1 file changed, 4 insertions(+), 4 deletions(-)
> > > 
> > > diff --git a/arch/arm64/boot/dts/freescale/imx8qm-ss-dma.dtsi
> > > b/arch/arm64/boot/dts/freescale/imx8qm-ss-dma.dtsi
> > > index bbe5f5ecfb92..3486b99ab6eb 100644
> > > --- a/arch/arm64/boot/dts/freescale/imx8qm-ss-dma.dtsi
> > > +++ b/arch/arm64/boot/dts/freescale/imx8qm-ss-dma.dtsi
> > > @@ -19,19 +19,19 @@ uart4_lpcg: clock-controller@5a4a0000 {
> > >  };
> > >  
> > >  &lpuart0 {
> > > -	compatible = "fsl,imx8qm-lpuart", "fsl,imx8qxp-lpuart";
> > > +	compatible = "fsl,imx8qm-lpuart", "fsl,imx8qxp-lpuart",
> > > "fsl,imx7ulp-lpuart";
> > 
> > Then fsl,imx8qxp-lpuart should be dropped?
> 
> If you drop fsl,imx8qxp-lpuart in the compatible list, fsl_lpuart.c
> needs a new lpuart_soc_data for imx8qm in order to work. "fsl,imx7ulp-
> lpuart" is not enough for imx8qm, as (among other things) "baud" clk is
> mising in imx7. IMHO there are 2 ways:
> 
> 1st
> Add both fsl,imx8qxp-lpuart and fsl,imx7ulp-lpuart to the compatible
> list to get both regular serial support (fsl,imx8qxp-lpuart) as well as
> earlycon (fsl,imx7ulp-lpuart). In this case the bindings need to get
> fixed as well, see [1]
> 
> 2nd
> Remove fsl,imx8qxp-lpuart compatible for imx8qm. But in this case
> everything done for imx8qxp in fsl_lpuart.c has to be duplicated.
> fsl,imx7ulp-lpuart is still required for earlycon support.
> 
> If you want to get rid of fsl,imx7ulp-lpuart compatible for
> imx8qm/imx8qxp in either case, you need to revert b4b844930f27 ("tty:
> serial: fsl_lpuart: drop earlycon entry for i.MX8QXP").

It looks to me that commit b4b844930f27 caused a regression for imx8qm,
so should be reverted.

Shawn
