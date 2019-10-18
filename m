Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 742D1DCD21
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2019 19:56:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2505602AbfJRR4W (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Oct 2019 13:56:22 -0400
Received: from metis.ext.pengutronix.de ([85.220.165.71]:33049 "EHLO
        metis.ext.pengutronix.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2505601AbfJRR4V (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Oct 2019 13:56:21 -0400
Received: from kresse.hi.pengutronix.de ([2001:67c:670:100:1d::2a])
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1iLWTo-00062R-Up; Fri, 18 Oct 2019 19:56:00 +0200
Message-ID: <07f370bfd62425c5472c1e423ae0b21b0789e5f5.camel@pengutronix.de>
Subject: Re: [PATCH v2 2/2] dt-bindings: etnaviv: Add #cooling-cells
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Guido =?ISO-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>,
        Russell King <linux+etnaviv@armlinux.org.uk>,
        Christian Gmeiner <christian.gmeiner@gmail.com>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Abel Vesa <abel.vesa@nxp.com>,
        Anson Huang <Anson.Huang@nxp.com>,
        Carlo Caione <ccaione@baylibre.com>,
        Andrey Smirnov <andrew.smirnov@gmail.com>,
        "Angus Ainslie (Purism)" <angus@akkea.ca>,
        etnaviv@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Date:   Fri, 18 Oct 2019 19:55:56 +0200
In-Reply-To: <20191018135022.GA6728@bogon.m.sigxcpu.org>
References: <cover.1568255903.git.agx@sigxcpu.org>
         <6e9d761598b2361532146f43161fd05f3eee6545.1568255903.git.agx@sigxcpu.org>
         <20191018135022.GA6728@bogon.m.sigxcpu.org>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::2a
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fr, 2019-10-18 at 15:50 +0200, Guido Günther wrote:
> Hi,
> On Wed, Sep 11, 2019 at 07:40:36PM -0700, Guido Günther wrote:
> > Add #cooling-cells for when the gpu acts as a cooling device.
> > 
> > Signed-off-by: Guido Günther <agx@sigxcpu.org>
> > ---
> >  .../devicetree/bindings/display/etnaviv/etnaviv-drm.txt          | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/display/etnaviv/etnaviv-drm.txt b/Documentation/devicetree/bindings/display/etnaviv/etnaviv-drm.txt
> > index 8def11b16a24..640592e8ab2e 100644
> > --- a/Documentation/devicetree/bindings/display/etnaviv/etnaviv-drm.txt
> > +++ b/Documentation/devicetree/bindings/display/etnaviv/etnaviv-drm.txt
> > @@ -21,6 +21,7 @@ Required properties:
> >  Optional properties:
> >  - power-domains: a power domain consumer specifier according to
> >    Documentation/devicetree/bindings/power/power_domain.txt
> > +- #cooling-cells: : If used as a cooling device, must be <2>
> 
> The other patch of the series made it into linux-next already but this
> documentation fixup didn't. Anything i can do to get this applied as
> well so documentation stays in sync?

I've applied and pushed this to my etnaviv/next branch just now, so it
should show up in linux-next pretty soon.

Regards,
Lucas

