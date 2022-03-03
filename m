Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 83C5C4CB8A0
	for <lists+devicetree@lfdr.de>; Thu,  3 Mar 2022 09:21:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231294AbiCCIWK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Mar 2022 03:22:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57390 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231298AbiCCIWI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Mar 2022 03:22:08 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 087A3171ED3
        for <devicetree@vger.kernel.org>; Thu,  3 Mar 2022 00:21:21 -0800 (PST)
Received: from gallifrey.ext.pengutronix.de ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1nPgi5-0004aM-SH; Thu, 03 Mar 2022 09:21:17 +0100
Message-ID: <a1240c0263be8372ccad42552db635a384deee4d.camel@pengutronix.de>
Subject: Re: [PATCH 1/9] dt-bindings: mxsfb: Add compatible for i.MX8MP
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Marek Vasut <marex@denx.de>, Adam Ford <aford173@gmail.com>
Cc:     Liu Ying <victor.liu@oss.nxp.com>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        devicetree <devicetree@vger.kernel.org>,
        Peng Fan <peng.fan@nxp.com>,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        Rob Herring <robh+dt@kernel.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Sam Ravnborg <sam@ravnborg.org>, Robby Cai <robby.cai@nxp.com>
Date:   Thu, 03 Mar 2022 09:21:16 +0100
In-Reply-To: <430de480-5a7a-6ed0-eecd-4105f5940aba@denx.de>
References: <20220228004605.367040-1-marex@denx.de>
         <35b981d0d9d763525c427491ca0e25b6e4c03d0f.camel@oss.nxp.com>
         <8eac8a2c-bc6d-0c79-c727-bdaa2cd9abee@denx.de>
         <a3ab4ec2dd0c7b87698bc7902509a4de6950dd25.camel@oss.nxp.com>
         <33207e88-da9b-96d7-0fef-461cb4496c88@denx.de>
         <284d65f53dffb6085bde6ef6ecd398f10d4c6c80.camel@oss.nxp.com>
         <8950434843ff7bbd1a527b0c799d9a74a75ee36d.camel@pengutronix.de>
         <7aeed693-dfb7-950f-fdf0-3c90de285392@denx.de>
         <8bf0b5a1c9ab9faee28077436cdfd49c0cd08792.camel@pengutronix.de>
         <CAHCN7xJ6ypDxZouZV1b1F1EgQFwdTvmY6EEekj+_z-UWbQMD5Q@mail.gmail.com>
         <4253aa4b5dc4a3568e45755678849961468bfd38.camel@pengutronix.de>
         <b655f565-43b2-4e42-953e-d6efa02f0219@denx.de>
         <85af7c5dfa120903a22e5e704e3bddd87830033c.camel@pengutronix.de>
         <430de480-5a7a-6ed0-eecd-4105f5940aba@denx.de>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34) 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
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

Am Donnerstag, dem 03.03.2022 um 04:14 +0100 schrieb Marek Vasut:
> On 3/2/22 10:23, Lucas Stach wrote:
> 
> [...]
> 
> > > > > I tend to agree with Marek on this one.  We have an instance where the
> > > > > blk-ctrl and the GPC driver between 8m, mini, nano, plus are close,
> > > > > but different enough where each SoC has it's own set of tables and
> > > > > some checks.   Lucas created the framework, and others adapted it for
> > > > > various SoC's.  If there really is nearly 50% common code for the
> > > > > LCDIF, why not either leave the driver as one or split the common code
> > > > > into its own driver like lcdif-common and then have smaller drivers
> > > > > that handle their specific variations.
> > > > 
> > > > I don't know exactly how the standalone driver looks like, but I guess
> > > > the overlap is not really in any real HW specific parts, but the common
> > > > DRM boilerplate, so there isn't much point in creating a common lcdif
> > > > driver.
> > > 
> > > The mxsfb currently has 1280 LoC as of patch 8/9 of this series. Of
> > > that, there is some 400 LoC which are specific to old LCDIF and this
> > > patch adds 380 LoC for the new LCDIF. So that's 800 LoC or ~60% of
> > > shared boilerplate that would be duplicated .
> > 
> > That is probably ignoring the fact that the 8MP LCDIF does not support
> > any overlays, so it could use the drm_simple_display_pipe
> > infrastructure to reduce the needed boilerplate.
> 
> It seems the IMXRT1070 LCDIF v2 (heh ...) does support overlays, so no, 
> the mxsfb and hypothetical lcdif drivers would look really very similar.
> 
> > > > As you brought up the blk-ctrl as an example: I'm all for supporting
> > > > slightly different hardware in the same driver, as long as the HW
> > > > interface is close enough. But then I also opted for a separate 8MP
> > > > blk-ctrl driver for those blk-ctrls that differ significantly from the
> > > > others, as I think it would make the common driver unmaintainable
> > > > trying to support all the different variants in one driver.
> > > 
> > > But then you also need to maintain two sets of boilerplate, they
> > > diverge, and that is not good.
> > 
> > I don't think that there is much chance for bugs going unfixed due to
> > divergence in the boilerplate, especially if you use the simple pipe
> > framework to handle most of that stuff for you, which gives you a lot
> > of code sharing with other simple DRM drivers.
> 
> But I can not use the simple pipe because overlays, see imxrt1070 .
> 
> [...]
> 
> We can always split the drivers later if this becomes unmaintainable 
> too, no ?

Not if you want to keep the same userspace running. As userspace has
some ties to the DRM driver name, e.g. for finding the right GBM
implementation, splitting the driver later on would be a UABI break.

Regards,
Lucas

