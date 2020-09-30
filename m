Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4F12E27EED7
	for <lists+devicetree@lfdr.de>; Wed, 30 Sep 2020 18:19:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728076AbgI3QTy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Sep 2020 12:19:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50212 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726540AbgI3QTy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Sep 2020 12:19:54 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 164BAC061755
        for <devicetree@vger.kernel.org>; Wed, 30 Sep 2020 09:19:54 -0700 (PDT)
Received: from [2a0a:edc0:0:900:6245:cbff:fea0:1793] (helo=kresse.office.stw.pengutronix.de)
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1kNepY-00031w-K0; Wed, 30 Sep 2020 18:19:49 +0200
Message-ID: <9533c2b81a9866aec45d2604befe7cdda79d0679.camel@pengutronix.de>
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Marek Vasut <marex@denx.de>, Shawn Guo <shawnguo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        patchwork-lst@pengutronix.de, NXP Linux Team <linux-imx@nxp.com>,
        kernel@pengutronix.de, Fabio Estevam <festevam@gmail.com>,
        linux-arm-kernel@lists.infradead.org
Date:   Wed, 30 Sep 2020 18:19:47 +0200
In-Reply-To: <818925c0-b45f-67b4-02a1-8db49ccc491e@denx.de>
References: <20200930155006.535712-1-l.stach@pengutronix.de>
         <20200930155006.535712-5-l.stach@pengutronix.de>
         <818925c0-b45f-67b4-02a1-8db49ccc491e@denx.de>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:6245:cbff:fea0:1793
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
        metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=4.0 tests=AWL,BAYES_00,RDNS_NONE,
        SPF_HELO_NONE,SPF_SOFTFAIL autolearn=no autolearn_force=no
        version=3.4.2
Subject: Re: [PATCH 04/11] soc: imx: gpcv2: wait for ADB400 handshake
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mi, 2020-09-30 at 18:11 +0200, Marek Vasut wrote:
> On 9/30/20 5:49 PM, Lucas Stach wrote:
> 
> [...]
> 
> > @@ -176,9 +180,19 @@ static int imx_pgc_power_up(struct generic_pm_domain *genpd)
> >  			   GPC_PGC_CTRL_PCR, 0);
> >  
> >  	/* request the ADB400 to power up */
> > -	if (domain->bits.hsk)
> > +	if (domain->bits.hskreq) {
> >  		regmap_update_bits(domain->regmap, GPC_PU_PWRHSK,
> > -				   domain->bits.hsk, domain->bits.hsk);
> > +				   domain->bits.hskreq, domain->bits.hskreq);
> > +
> > +		ret = regmap_read_poll_timeout(domain->regmap, GPC_PU_PWRHSK,
> > +					       reg_val,
> > +					       (reg_val & domain->bits.hskack),
> > +					       0, USEC_PER_MSEC);
> > +		if (ret) {
> > +			dev_err(domain->dev, "failed to power up ADB400\n");
> 
> The ADB400 is a bus bridge, so the bus is being attached here, not
> powered up, right ?

The bits in the PWRHSK register are called "power down" bits, so I kept
this nomenclature. Also I think the ADB400 is mostly isolating the bus
in the power domains from the rest of the NoC, "attaching" of the bus
is really disabling the isolation.

As there are multiple valid naming choices I kept the naming from the
RM.

Regards,
Lucas

