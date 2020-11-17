Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 88F482B6729
	for <lists+devicetree@lfdr.de>; Tue, 17 Nov 2020 15:13:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728255AbgKQOMf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Nov 2020 09:12:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39010 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729682AbgKQOLh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Nov 2020 09:11:37 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AC0C7C0613CF
        for <devicetree@vger.kernel.org>; Tue, 17 Nov 2020 06:11:37 -0800 (PST)
Received: from gallifrey.ext.pengutronix.de ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=localhost)
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1kf1hi-00032j-Aq; Tue, 17 Nov 2020 15:11:30 +0100
Message-ID: <5b6c97dc74ccb38107a50972427d091cdb114209.camel@pengutronix.de>
Subject: Re: [PATCH v2 08/13] dt-bindings: imx: gpcv2: add support for
 optional resets
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Rob Herring <robh@kernel.org>
Cc:     Shawn Guo <shawnguo@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        Marek Vasut <marex@denx.de>, Adam Ford <aford173@gmail.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        NXP Linux Team <linux-imx@nxp.com>, kernel@pengutronix.de,
        patchwork-lst@pengutronix.de, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Date:   Tue, 17 Nov 2020 15:11:28 +0100
In-Reply-To: <20201109201557.GA1690230@bogus>
References: <20201105174434.1817539-1-l.stach@pengutronix.de>
         <20201105174434.1817539-9-l.stach@pengutronix.de>
         <20201109201557.GA1690230@bogus>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.5 (3.36.5-1.fc32) 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Am Montag, den 09.11.2020, 14:15 -0600 schrieb Rob Herring:
> On Thu, Nov 05, 2020 at 06:44:29PM +0100, Lucas Stach wrote:
> > For some domains the resets of the devices in the domain are not
> > automatically triggered. Add an optional resets property to allow
> > the GPC driver to trigger those resets explicitly.
> > 
> > Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> > ---
> >  Documentation/devicetree/bindings/power/fsl,imx-gpcv2.yaml | 7 +++++++
> >  1 file changed, 7 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/power/fsl,imx-gpcv2.yaml b/Documentation/devicetree/bindings/power/fsl,imx-gpcv2.yaml
> > index a96e6dbf1858..4330c73a2c30 100644
> > --- a/Documentation/devicetree/bindings/power/fsl,imx-gpcv2.yaml
> > +++ b/Documentation/devicetree/bindings/power/fsl,imx-gpcv2.yaml
> > @@ -66,6 +66,13 @@ properties:
> >  
> >            power-supply: true
> >  
> > +          resets:
> > +            description: |
> > +              A number of phandles to resets that need to be asserted during
> > +              power-up sequencing of the domain.
> > +            minItems: 1
> > +            maxItems: 4
> 
> You need to define what each reset is.

I can't. The resets belong to devices located inside the power domain,
which need to be held in reset across the power-up sequence. So I have
no means to specify what each reset is in a generic power-domain
binding. Same situation as with the clocks in this binding actually.

Regards,
Lucas

