Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B1CA34F5C9A
	for <lists+devicetree@lfdr.de>; Wed,  6 Apr 2022 13:56:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229603AbiDFLne (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Apr 2022 07:43:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60174 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230254AbiDFLmo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Apr 2022 07:42:44 -0400
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 131CF563545
        for <devicetree@vger.kernel.org>; Wed,  6 Apr 2022 01:28:38 -0700 (PDT)
Received: from pendragon.ideasonboard.com (unknown [81.247.145.117])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id AFD7F482;
        Wed,  6 Apr 2022 10:28:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1649233715;
        bh=oo3rZajejBQ5uNUw8ZrO1kGNfcbD8VARt+Gdd6/e0ZU=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=pAsQL6b7aLX5kP6HlBJQlcd8bwxxPexExsLDg629faoAa59K9p2et88xM7XNIiwiJ
         0cL9izEgmYpACH0arPQODwytNwnEDZLF5BSDWc9JPH/Q3f4ul4UF7s9ImFBKrx+Fcl
         B0Ol9M14czlG3C+ZlIOsxBVPwE3F3n3vPf6p3LNE=
Date:   Wed, 6 Apr 2022 11:28:23 +0300
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Peng Fan <peng.fan@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        dl-linux-imx <linux-imx@nxp.com>,
        Rob Herring <robh+dt@kernel.org>, Marek Vasut <marex@denx.de>,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        Fabio Estevam <festevam@gmail.com>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "patchwork-lst@pengutronix.de" <patchwork-lst@pengutronix.de>
Subject: Re: [PATCH v4 0/5] i.MX8MP GPC
Message-ID: <Yk1PJ0lxiRUPTRts@pendragon.ideasonboard.com>
References: <20220330104620.3600159-1-l.stach@pengutronix.de>
 <DU0PR04MB9417835E6D343983FF67372988E19@DU0PR04MB9417.eurprd04.prod.outlook.com>
 <DU0PR04MB9417F61F5A0E32E21892391188E79@DU0PR04MB9417.eurprd04.prod.outlook.com>
 <e0a738e1779b9a0efa43cca6fcbe5f19da89f187.camel@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <e0a738e1779b9a0efa43cca6fcbe5f19da89f187.camel@pengutronix.de>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Lucas,

On Wed, Apr 06, 2022 at 09:47:28AM +0200, Lucas Stach wrote:
> Am Mittwoch, dem 06.04.2022 um 07:10 +0000 schrieb Peng Fan:
> > > Subject: RE: [PATCH v4 0/5] i.MX8MP GPC
> > > 
> > > > Subject: [PATCH v4 0/5] i.MX8MP GPC
> > > > 
> > > > Hi Shawn,
> > > > 
> > > > This is mostly a resend with all the reviews, acks and testing tags
> > > > applied. I dropped the HSIO blk-ctrl part from this series, as I
> > > > noticed that this needs some rework to better fit the upcoming HDMI
> > > > blk-ctrl. The GPC part is still complete, so the MEDIA blk-ctrl series
> > > > from Laurent can be applied on top of this v4.
> > > > 
> > > > Regards,
> > > > Lucas
> > > 
> > > Tested-by: Peng Fan <peng.fan@nxp.com>
> > > 
> > > > Lucas Stach (5):
> > > >   soc: imx: gpcv2: add PGC control register indirection
> > > >   dt-bindings: power: add defines for i.MX8MP power domain
> > > >   soc: imx: gpcv2: add support for i.MX8MP power domains
> > > >   arm64: dts: imx8mp: add GPC node with GPU power domains
> > > >   arm64: dts: imx8mp: add GPU nodes
> > 
> > Patch 2 is already in tree, but others still not.
> > 
> > BTW: Do you have plan to resend the HSIO BLK CTRL from your V3 patchset?
>
> Yes, I finally worked through all the issues in the HDMI subsystem and
> I'm ready to send out new HSIO + HDMI blk-ctrl patches today.
> 
> > Laurent's V4 patchset also not apply now:) 
> 
> Right, I noticed this too. By dropping the HSIO DT patch from the
> series, the MEDIA series doesn't apply anymore.
> 
> @Laurent: If you agree, I'll pick up your MEDIA blk-ctrl patches into
> my series, to make it easier for Shawn to apply the whole bunch.

Whatever makes it more likely that the patches get merged in v5.19 is
fine with me. Please do :-)

-- 
Regards,

Laurent Pinchart
