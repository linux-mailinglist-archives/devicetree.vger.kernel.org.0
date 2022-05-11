Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7AAF0522DE7
	for <lists+devicetree@lfdr.de>; Wed, 11 May 2022 10:10:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235263AbiEKIKb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 May 2022 04:10:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37940 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233633AbiEKIKa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 May 2022 04:10:30 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 620C59C2E0
        for <devicetree@vger.kernel.org>; Wed, 11 May 2022 01:10:29 -0700 (PDT)
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1nohQK-0000iA-UW; Wed, 11 May 2022 10:10:20 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1nohQI-0004fS-D0; Wed, 11 May 2022 10:10:18 +0200
Date:   Wed, 11 May 2022 10:10:18 +0200
From:   Sascha Hauer <s.hauer@pengutronix.de>
To:     Rob Herring <robh@kernel.org>
Cc:     dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        Heiko =?iso-8859-15?Q?St=FCbner?= <heiko@sntech.de>,
        Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: display: rockchip: make reg-names
 mandatory for VOP2
Message-ID: <20220511081018.GL4012@pengutronix.de>
References: <20220510070914.2346011-1-s.hauer@pengutronix.de>
 <20220510070914.2346011-2-s.hauer@pengutronix.de>
 <YnqdsbYk+XzkVLe9@robh.at.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YnqdsbYk+XzkVLe9@robh.at.kernel.org>
X-Sent-From: Pengutronix Hildesheim
X-URL:  http://www.pengutronix.de/
X-IRC:  #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:05:32 up 41 days, 20:35, 73 users,  load average: 0.28, 0.34,
 0.27
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, May 10, 2022 at 12:15:29PM -0500, Rob Herring wrote:
> On Tue, May 10, 2022 at 09:09:12AM +0200, Sascha Hauer wrote:
> > The VOP2 driver relies on reg-names properties, but these are not
> > documented. Add the missing documentation, make reg-names mandatory
> > and increase minItems to 2 as always both register spaces are needed.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  .../bindings/display/rockchip/rockchip-vop2.yaml          | 8 +++++++-
> >  1 file changed, 7 insertions(+), 1 deletion(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
> > index 655d9b327f7d3..7238cdec9eb8a 100644
> > --- a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
> > +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
> > @@ -22,7 +22,7 @@ properties:
> >        - rockchip,rk3568-vop
> >  
> >    reg:
> > -    minItems: 1
> > +    minItems: 2
> 
> You ran the dt checks, right?

Well, almost... I did run dtbs_check, but I should have ran
dt_binding_check.

> This should give you a warning. The 
> correct thing is drop minItems if there's always 2 entries.

Indeed this gives me a warning.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
