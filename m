Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 02FCE31693A
	for <lists+devicetree@lfdr.de>; Wed, 10 Feb 2021 15:36:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229789AbhBJOgC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Feb 2021 09:36:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42850 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229941AbhBJOgB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Feb 2021 09:36:01 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1B8B1C061574
        for <devicetree@vger.kernel.org>; Wed, 10 Feb 2021 06:35:19 -0800 (PST)
Received: from gallifrey.ext.pengutronix.de ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1l9qaI-00054I-Co; Wed, 10 Feb 2021 15:35:14 +0100
Message-ID: <928adc851c756f27562b0ae1847f08e2c857504d.camel@pengutronix.de>
Subject: Re: [PATCH v2 08/13] dt-bindings: imx: gpcv2: add support for
 optional resets
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Rob Herring <robh@kernel.org>
Cc:     Marek Vasut <marex@denx.de>, devicetree@vger.kernel.org,
        Fabio Estevam <festevam@gmail.com>,
        Adam Ford <aford173@gmail.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        patchwork-lst@pengutronix.de, NXP Linux Team <linux-imx@nxp.com>,
        kernel@pengutronix.de, Shawn Guo <shawnguo@kernel.org>,
        linux-arm-kernel@lists.infradead.org
Date:   Wed, 10 Feb 2021 15:35:12 +0100
In-Reply-To: <f652344c2c1664d541300dc71cc9ccd8aeaee292.camel@pengutronix.de>
References: <20201105174434.1817539-1-l.stach@pengutronix.de>
         <20201105174434.1817539-9-l.stach@pengutronix.de>
         <20201109201557.GA1690230@bogus>
         <5b6c97dc74ccb38107a50972427d091cdb114209.camel@pengutronix.de>
         <f652344c2c1664d541300dc71cc9ccd8aeaee292.camel@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.3 (3.38.3-1.fc33) 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Am Montag, dem 30.11.2020 um 10:57 +0100 schrieb Lucas Stach:
> Hi Rob,
> 
> Am Dienstag, den 17.11.2020, 15:11 +0100 schrieb Lucas Stach:
> Am Montag, den 09.11.2020, 14:15 -0600 schrieb Rob Herring:
> > On Thu, Nov 05, 2020 at 06:44:29PM +0100, Lucas Stach wrote:
> > > For some domains the resets of the devices in the domain are not
> > > automatically triggered. Add an optional resets property to allow
> > > the GPC driver to trigger those resets explicitly.
> > > 
> > > Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> > > ---
> > >  Documentation/devicetree/bindings/power/fsl,imx-gpcv2.yaml | 7
> > > +++++++
> > >  1 file changed, 7 insertions(+)
> > > 
> > > diff --git a/Documentation/devicetree/bindings/power/fsl,imx-
> > > gpcv2.yaml b/Documentation/devicetree/bindings/power/fsl,imx-
> > > gpcv2.yaml
> > > index a96e6dbf1858..4330c73a2c30 100644
> > > --- a/Documentation/devicetree/bindings/power/fsl,imx-gpcv2.yaml
> > > +++ b/Documentation/devicetree/bindings/power/fsl,imx-gpcv2.yaml
> > > @@ -66,6 +66,13 @@ properties:
> > >  
> > >            power-supply: true
> > >  
> > > +          resets:
> > > +            description: |
> > > +              A number of phandles to resets that need to be
> > > asserted during
> > > +              power-up sequencing of the domain.
> > > +            minItems: 1
> > > +            maxItems: 4
> > 
> > You need to define what each reset is.
> 
> I can't. The resets belong to devices located inside the power domain,
> which need to be held in reset across the power-up sequence. So I
> have no means to specify what each reset is in a generic power-domain
> binding. Same situation as with the clocks in this binding actually.
> 
> Do you have any guidance on what do here? Is this binding okay with
> this explanation, or do we need to do something different here?

Any pointers on how we can make some progress with this? It's blocking
quite a bit of functionality of the i.MX8MM SoC being enabled upstream.

Regards,
Lucas

