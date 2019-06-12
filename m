Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C785041EBF
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2019 10:14:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2436842AbfFLINE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jun 2019 04:13:04 -0400
Received: from mail.kernel.org ([198.145.29.99]:59234 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S2436818AbfFLINE (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 12 Jun 2019 04:13:04 -0400
Received: from dragon (li1264-180.members.linode.com [45.79.165.180])
        (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id D829D20652;
        Wed, 12 Jun 2019 08:13:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1560327184;
        bh=ylQfGdc+VMfHPkhpyVbEgNV3fDavaUzVg7HL1j5C20s=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=c8OSrMwoQfZ0iJMrNS/ax+bjieZwjH3dPP1EhLnWMh32ETykBx+fiaOe/uKfWmJ+x
         Tv0wFxAXY01bQwfQrubGfiH0E7OnkRu6AFxe4uu+YqvFpStjb8lZ/JK4NEo+kzn8LR
         VFMl3Z/Ew6phHzQwCgeMolfSzizMTxBJn1WhrA9Y=
Date:   Wed, 12 Jun 2019 16:12:31 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Rob Herring <robh@kernel.org>
Cc:     Peter Robinson <pbrobinson@gmail.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/3] arm: imx6sx: udoo: Use the correct style for SPDX
 License Identifier
Message-ID: <20190612081230.GC11086@dragon>
References: <20190601070718.26971-1-pbrobinson@gmail.com>
 <20190601070718.26971-2-pbrobinson@gmail.com>
 <20190611224933.GA8624@bogus>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190611224933.GA8624@bogus>
User-Agent: Mutt/1.5.21 (2010-09-15)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jun 11, 2019 at 04:49:33PM -0600, Rob Herring wrote:
> On Sat, Jun 01, 2019 at 08:07:16AM +0100, Peter Robinson wrote:
> > Use the SPDX License Identifier for GPL-2.0+ OR X11
> > 
> > Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
> > ---
> >  arch/arm/boot/dts/imx6sx-udoo-neo-basic.dts   | 39 +------------------
> >  .../arm/boot/dts/imx6sx-udoo-neo-extended.dts | 39 +------------------
> >  arch/arm/boot/dts/imx6sx-udoo-neo-full.dts    | 39 +------------------
> >  arch/arm/boot/dts/imx6sx-udoo-neo.dtsi        | 39 +------------------
> >  4 files changed, 4 insertions(+), 152 deletions(-)
> > 
> > diff --git a/arch/arm/boot/dts/imx6sx-udoo-neo-basic.dts b/arch/arm/boot/dts/imx6sx-udoo-neo-basic.dts
> > index db0feb9b9f5d..b6fbceaf6889 100644
> > --- a/arch/arm/boot/dts/imx6sx-udoo-neo-basic.dts
> > +++ b/arch/arm/boot/dts/imx6sx-udoo-neo-basic.dts
> > @@ -1,43 +1,6 @@
> > +// SPDX-License-Identifier: (GPL-2.0+ OR X11)
> 
> This should actually be MIT, not X11. If you look at X11 SPDX 
> definition, it is for a specifc X Consortium copyright and adds a no 
> advertising clause on top of MIT.

Okay.  I just got it fixed on my branch.

Shawn
