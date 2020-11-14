Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D46D12B2F25
	for <lists+devicetree@lfdr.de>; Sat, 14 Nov 2020 18:42:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726070AbgKNRm1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 14 Nov 2020 12:42:27 -0500
Received: from mail.kernel.org ([198.145.29.99]:39700 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726088AbgKNRm1 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 14 Nov 2020 12:42:27 -0500
Received: from localhost (otava-0257.koleje.cuni.cz [78.128.181.4])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 2D02F2222C;
        Sat, 14 Nov 2020 17:42:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1605375746;
        bh=tmOHDtqwX1mqdiPILnvO/BND4vMYxKO3WQ5b/8ldZE4=;
        h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
        b=wns8gZ2xhj0OfXUDTPktQ043Socjjpa2/wzu9ZrlS5VKS3LOqPDA422nK1vhTVQAi
         Ub2g5oLF2J8GEqTJXWuGmg6gkLjIENAld0s8oShEi9QUO3BCHaN19jYc/p3hTgK//b
         JzKOqVZdkFD2SAaEcMFb9b5PMbzIQhRR8bNjNu+k=
Date:   Sat, 14 Nov 2020 18:42:21 +0100
From:   Marek =?UTF-8?B?QmVow7pu?= <kabel@kernel.org>
To:     Andrew Lunn <andrew@lunn.ch>
Cc:     Gregory CLEMENT <gregory.clement@bootlin.com>, arm@kernel.org,
        Uwe =?UTF-8?B?S2xlaW5lLUvDtm5pZw==?= <uwe@kleine-koenig.org>,
        Jason Cooper <jason@lakedaemon.net>,
        Andreas =?UTF-8?B?RsOkcmJlcg==?= <afaerber@suse.de>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH mvebu-dt 3/6] ARM: dts: turris-omnia: describe
 ethernet-phy interrupt
Message-ID: <20201114184221.1f74de86@kernel.org>
In-Reply-To: <20201114171639.GO1456319@lunn.ch>
References: <20201114160409.19670-1-kabel@kernel.org>
        <20201114160409.19670-4-kabel@kernel.org>
        <20201114174928.5ab4f8ae@kernel.org>
        <20201114171639.GO1456319@lunn.ch>
X-Mailer: Claws Mail 3.17.6 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 14 Nov 2020 18:16:39 +0100
Andrew Lunn <andrew@lunn.ch> wrote:

> On Sat, Nov 14, 2020 at 05:49:28PM +0100, Marek Beh=C3=BAn wrote:
> > On Sat, 14 Nov 2020 17:04:06 +0100
> > Marek Beh=C3=BAn <kabel@kernel.org> wrote:
> >  =20
> > > +		interrupt-parent =3D <&pcawan>;
> > > +		interrupt =3D <7 IRQ_TYPE_LEVEL_LOW>; =20
> >=20
> > Also we need to use IRQ_TYPE_EDGE_FALLING. The gpio-pca953x driver does
> > not support IRQ_TYPE_LEVEL_LOW... =20
>=20
> Please check the datasheet for the PHY. I expect you will find it is
> level triggering, not edge. So you can miss interrupts, and have the
> wrong state.
>=20
> I've also had bad experiences with pca953x and interrupt storms. I
> hope you are using one with the extended registers including the
> interrupt mask.
>=20
> 	  Andrew

Andrew, the PHY is a 88E1514, which triggers on level. We can set
either active-low or active-high, but not edge. Default is active-low.

The expander is a PCA9538 (in schematics called PCA9538PWR). The driver
does not support level interrupts:
	if (!(type & IRQ_TYPE_EDGE_BOTH)) {
		dev_err(&chip->client->dev, "irq %d: unsupported type %d\n",
			d->irq, type);
		return -EINVAL;
	}

It seems that for PCA9538 the interrupts are read from input. Some of
the chips supported by this driver can latch interrupt status into
special register, but this chip does not...

On interrupt the driver looks at the input register, compares it with
cached state and looks which bits changed. So theoretically level
support could be implemented in this driver, but currently it is not.

Do you think we should just poll for interrupts with the PHY?

Marek
