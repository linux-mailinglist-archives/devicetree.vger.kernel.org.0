Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DB1404C8A48
	for <lists+devicetree@lfdr.de>; Tue,  1 Mar 2022 12:05:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233117AbiCALGQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Mar 2022 06:06:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35912 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229670AbiCALGM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Mar 2022 06:06:12 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 508C57C166
        for <devicetree@vger.kernel.org>; Tue,  1 Mar 2022 03:05:31 -0800 (PST)
Received: from gallifrey.ext.pengutronix.de ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1nP0Js-0000Q2-W4; Tue, 01 Mar 2022 12:05:29 +0100
Message-ID: <8bf0b5a1c9ab9faee28077436cdfd49c0cd08792.camel@pengutronix.de>
Subject: Re: [PATCH 1/9] dt-bindings: mxsfb: Add compatible for i.MX8MP
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Marek Vasut <marex@denx.de>, Liu Ying <victor.liu@oss.nxp.com>,
        dri-devel@lists.freedesktop.org
Cc:     devicetree@vger.kernel.org, Peng Fan <peng.fan@nxp.com>,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        Rob Herring <robh+dt@kernel.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Sam Ravnborg <sam@ravnborg.org>, Robby Cai <robby.cai@nxp.com>
Date:   Tue, 01 Mar 2022 12:05:27 +0100
In-Reply-To: <7aeed693-dfb7-950f-fdf0-3c90de285392@denx.de>
References: <20220228004605.367040-1-marex@denx.de>
         <35b981d0d9d763525c427491ca0e25b6e4c03d0f.camel@oss.nxp.com>
         <8eac8a2c-bc6d-0c79-c727-bdaa2cd9abee@denx.de>
         <a3ab4ec2dd0c7b87698bc7902509a4de6950dd25.camel@oss.nxp.com>
         <33207e88-da9b-96d7-0fef-461cb4496c88@denx.de>
         <284d65f53dffb6085bde6ef6ecd398f10d4c6c80.camel@oss.nxp.com>
         <8950434843ff7bbd1a527b0c799d9a74a75ee36d.camel@pengutronix.de>
         <7aeed693-dfb7-950f-fdf0-3c90de285392@denx.de>
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

Am Dienstag, dem 01.03.2022 um 11:19 +0100 schrieb Marek Vasut:
> On 3/1/22 11:04, Lucas Stach wrote:
> 
> Hi,
> 
> [...]
> 
> > > Given the two totally different IPs, I don't see bugs of IP control
> > > logics should be fixed for both drivers. Naturally, the two would
> > > diverge due to different HWs. Looking at Patch 9/9, it basically
> > > squashes code to control LCDIFv3 into the mxsfb drm driver with
> > > 'if/else' checks(barely no common control code), which is hard to
> > > maintain and not able to achieve good scalability for both 'LCDIFv3'
> > > and 'LCDIF'.
> > 
> > I tend to agree with Liu here. Writing a DRM driver isn't that much
> > boilerplate anymore with all the helpers we have available in the
> > framework today.
> 
> I did write a separate driver for this IP before I spent time merging 
> them into single driver, that's when I realized a single driver is much 
> better and discarded the separate driver idea.
> 
> > The IP is so different from the currently supported LCDIF controllers
> > that I think trying to support this one in the existing driver actually
> > increases the chances to break something when modifying the driver in
> > the future. Not everyone is able to test all LCDIF versions. My vote is
> > on having a separate driver for the i.MX8MP LCDIF.
> 
> If you look at both controllers, it is clear it is still the LCDIF 
> behind, even the CSC that is bolted on would suggest that.

Yes, but from a driver PoV what you care about is not really the
hardware blocks used to implement something, but the programming model,
i.e. the register interface exposed to software.

> 
> I am also not happy when I look at the amount of duplication a separate 
> driver would create, it will be some 50% of the code that would be just 
> duplicated.
> 
Yea, the duplicated code is still significant, as the HW itself is so
simple. However, if you find yourself in the situation where basically
every actual register access in the driver ends up being in a "if (some
HW rev) ... " clause, i still think it would be better to have a
separate driver, as the programming interface is just different.

Regards,
Lucas


