Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 099B95B15DD
	for <lists+devicetree@lfdr.de>; Thu,  8 Sep 2022 09:44:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229669AbiIHHoA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Sep 2022 03:44:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38982 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229656AbiIHHn7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Sep 2022 03:43:59 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA5F4D51CC
        for <devicetree@vger.kernel.org>; Thu,  8 Sep 2022 00:43:58 -0700 (PDT)
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1oWCCb-0003Dn-0X; Thu, 08 Sep 2022 09:43:57 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1oWCCa-00088W-Kj; Thu, 08 Sep 2022 09:43:56 +0200
Date:   Thu, 8 Sep 2022 09:43:56 +0200
From:   Sascha Hauer <s.hauer@pengutronix.de>
To:     Rob Herring <robh@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        kernel@pengutronix.de
Subject: Re: [PATCH 1/3] dt-bindings: vendor-prefixes: Add prefix for Innocom
Message-ID: <20220908074356.GZ24324@pengutronix.de>
References: <20220901112040.1471879-1-s.hauer@pengutronix.de>
 <20220901112040.1471879-2-s.hauer@pengutronix.de>
 <20220907203113.GA230820-robh@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220907203113.GA230820-robh@kernel.org>
X-Sent-From: Pengutronix Hildesheim
X-URL:  http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
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

On Wed, Sep 07, 2022 at 03:31:13PM -0500, Rob Herring wrote:
> On Thu, Sep 01, 2022 at 01:20:38PM +0200, Sascha Hauer wrote:
> > This adds a vendor prefix for InnoComm Mobile Technology Corp.,
> > see https://www.innocomm.com/.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
> >  1 file changed, 2 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> > index 2f0151e9f6bef..631a9a7b0cfa1 100644
> > --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> > +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> > @@ -601,6 +601,8 @@ patternProperties:
> >      description: Ingenic Semiconductor
> >    "^injoinic,.*":
> >      description: Injoinic Technology Corp.
> > +  "^innocom,.*":
> 
> Should be 2 'm': innocomm

Ouch, indeed. Will fix for v2.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
