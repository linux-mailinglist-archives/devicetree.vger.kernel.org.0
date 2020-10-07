Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 61A46285AB2
	for <lists+devicetree@lfdr.de>; Wed,  7 Oct 2020 10:43:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727014AbgJGIna (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Oct 2020 04:43:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34618 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726181AbgJGIna (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Oct 2020 04:43:30 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0F004C061755
        for <devicetree@vger.kernel.org>; Wed,  7 Oct 2020 01:43:30 -0700 (PDT)
Received: from [2a0a:edc0:0:900:6245:cbff:fea0:1793] (helo=kresse.office.stw.pengutronix.de)
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1kQ52k-0007tg-Os; Wed, 07 Oct 2020 10:43:27 +0200
Message-ID: <bef04042ebd7dc1c744b51ab2b1c614a2f04084f.camel@pengutronix.de>
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Marek Vasut <marex@denx.de>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        dri-devel@lists.freedesktop.org
Cc:     devicetree@vger.kernel.org,
        Guido =?ISO-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>,
        Stefan Agner <stefan@agner.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        linux-arm-kernel@lists.infradead.org
Date:   Wed, 07 Oct 2020 10:43:25 +0200
In-Reply-To: <daabffc8-24e9-4963-58a9-6c62724e7a11@denx.de>
References: <20201007012438.27970-1-laurent.pinchart@ideasonboard.com>
         <20201007012438.27970-2-laurent.pinchart@ideasonboard.com>
         <daabffc8-24e9-4963-58a9-6c62724e7a11@denx.de>
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
Subject: Re: [PATCH v2 1/7] dt-bindings: display: mxsfb: Convert binding to
 YAML
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mi, 2020-10-07 at 10:32 +0200, Marek Vasut wrote:
> On 10/7/20 3:24 AM, Laurent Pinchart wrote:
> [...]
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - fsl,imx23-lcdif
> > +      - fsl,imx28-lcdif
> > +      - fsl,imx6sx-lcdif
> > +      - fsl,imx8mq-lcdif
> 
> There is no fsl,imx8mq-lcdif in drivers/gpu/drm/mxsfb/mxsfb_drv.c,
> so the DT must specify compatible = "fsl,imx8mq-lcdif",
> "fsl,imx28-lcdif" (since imx28 is the oldest SoC with LCDIF V4).
> 
> Should the compatible be added to drivers/gpu/drm/mxsfb/mxsfb_drv.c or
> dropped from the YAML file or neither ?

Neither. As far as we know the block is compatible, so the DT should
claim that it's compatible to "fsl,imx28-lcdif". However we don't know
if there are any surprises, so we add the SoC specific compatible to be
able to change the driver matching later without changing the DT if the
need arises. For the DT validation to pass the SoC specific compatible 
needs to be documented, even if it currently unused by the driver.

Regards,
Lucas

