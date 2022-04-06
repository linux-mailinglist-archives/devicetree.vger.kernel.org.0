Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D080A4F5D83
	for <lists+devicetree@lfdr.de>; Wed,  6 Apr 2022 14:20:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229679AbiDFMIC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Apr 2022 08:08:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33802 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232868AbiDFMHr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Apr 2022 08:07:47 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 921B321404C
        for <devicetree@vger.kernel.org>; Wed,  6 Apr 2022 00:47:40 -0700 (PDT)
Received: from gallifrey.ext.pengutronix.de ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1nc0O2-0008W4-Qy; Wed, 06 Apr 2022 09:47:30 +0200
Message-ID: <e0a738e1779b9a0efa43cca6fcbe5f19da89f187.camel@pengutronix.de>
Subject: Re: [PATCH v4 0/5] i.MX8MP GPC
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Peng Fan <peng.fan@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        dl-linux-imx <linux-imx@nxp.com>,
        Rob Herring <robh+dt@kernel.org>, Marek Vasut <marex@denx.de>,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        Fabio Estevam <festevam@gmail.com>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "patchwork-lst@pengutronix.de" <patchwork-lst@pengutronix.de>
Date:   Wed, 06 Apr 2022 09:47:28 +0200
In-Reply-To: <DU0PR04MB9417F61F5A0E32E21892391188E79@DU0PR04MB9417.eurprd04.prod.outlook.com>
References: <20220330104620.3600159-1-l.stach@pengutronix.de>
         <DU0PR04MB9417835E6D343983FF67372988E19@DU0PR04MB9417.eurprd04.prod.outlook.com>
         <DU0PR04MB9417F61F5A0E32E21892391188E79@DU0PR04MB9417.eurprd04.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34) 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Peng,

Am Mittwoch, dem 06.04.2022 um 07:10 +0000 schrieb Peng Fan:
> > Subject: RE: [PATCH v4 0/5] i.MX8MP GPC
> > 
> > > Subject: [PATCH v4 0/5] i.MX8MP GPC
> > > 
> > > Hi Shawn,
> > > 
> > > This is mostly a resend with all the reviews, acks and testing tags
> > > applied. I dropped the HSIO blk-ctrl part from this series, as I
> > > noticed that this needs some rework to better fit the upcoming HDMI
> > > blk-ctrl. The GPC part is still complete, so the MEDIA blk-ctrl series
> > > from Laurent can be applied on top of this v4.
> > > 
> > > Regards,
> > > Lucas
> > 
> > Tested-by: Peng Fan <peng.fan@nxp.com>
> > 
> > > 
> > > Lucas Stach (5):
> > >   soc: imx: gpcv2: add PGC control register indirection
> > >   dt-bindings: power: add defines for i.MX8MP power domain
> > >   soc: imx: gpcv2: add support for i.MX8MP power domains
> > >   arm64: dts: imx8mp: add GPC node with GPU power domains
> > >   arm64: dts: imx8mp: add GPU nodes
> 
> Patch 2 is already in tree, but others still not.
> 
> BTW: Do you have plan to resend the HSIO BLK CTRL from your V3 patchset?
> 
Yes, I finally worked through all the issues in the HDMI subsystem and
I'm ready to send out new HSIO + HDMI blk-ctrl patches today.

> Laurent's V4 patchset also not apply now:) 

Right, I noticed this too. By dropping the HSIO DT patch from the
series, the MEDIA series doesn't apply anymore.

@Laurent: If you agree, I'll pick up your MEDIA blk-ctrl patches into
my series, to make it easier for Shawn to apply the whole bunch.

Regards,
Lucas


