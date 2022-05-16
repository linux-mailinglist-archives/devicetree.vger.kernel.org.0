Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 32B26528B99
	for <lists+devicetree@lfdr.de>; Mon, 16 May 2022 19:08:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242953AbiEPRIt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 May 2022 13:08:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34790 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233953AbiEPRIs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 May 2022 13:08:48 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7FC302B24C
        for <devicetree@vger.kernel.org>; Mon, 16 May 2022 10:08:44 -0700 (PDT)
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1nqeD4-0005c8-R7; Mon, 16 May 2022 19:08:42 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1nqeD2-0004CX-Bh; Mon, 16 May 2022 19:08:40 +0200
Date:   Mon, 16 May 2022 19:08:40 +0200
From:   Sascha Hauer <s.hauer@pengutronix.de>
To:     Rob Herring <robh@kernel.org>
Cc:     devicetree@vger.kernel.org,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Heiko =?iso-8859-15?Q?St=FCbner?= <heiko@sntech.de>,
        Sandy Huang <hjc@rock-chips.com>,
        dri-devel@lists.freedesktop.org,
        linux-rockchip@lists.infradead.org,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Peter Geis <pgwipeout@gmail.com>,
        Andy Yan <andy.yan@rock-chips.com>, kernel@pengutronix.de,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 1/3] dt-bindings: display: rockchip: make reg-names
 mandatory for VOP2
Message-ID: <20220516170840.GO25578@pengutronix.de>
References: <20220511082109.1110043-1-s.hauer@pengutronix.de>
 <20220511082109.1110043-2-s.hauer@pengutronix.de>
 <20220516151226.GA2653888-robh@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220516151226.GA2653888-robh@kernel.org>
X-Sent-From: Pengutronix Hildesheim
X-URL:  http://www.pengutronix.de/
X-IRC:  #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 19:07:40 up 47 days,  5:37, 74 users,  load average: 0.02, 0.12,
 0.14
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
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

Heiko,

On Mon, May 16, 2022 at 10:12:26AM -0500, Rob Herring wrote:
> On Wed, 11 May 2022 10:21:07 +0200, Sascha Hauer wrote:
> > The VOP2 driver relies on reg-names properties, but these are not
> > documented. Add the missing documentation, make reg-names mandatory
> > and increase minItems to 2 as always both register spaces are needed.

Could you drop the minItems part while applying? That is no longer
correct.

Sascha

> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> > 
> > Notes:
> >     Changes since v1:
> >     - Drop minItems
> >     - Add reg-names properties to example
> > 
> >  .../bindings/display/rockchip/rockchip-vop2.yaml          | 8 +++++++-
> >  1 file changed, 7 insertions(+), 1 deletion(-)
> > 
> 
> Reviewed-by: Rob Herring <robh@kernel.org>
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
