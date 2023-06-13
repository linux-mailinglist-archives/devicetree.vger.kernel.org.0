Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C0C6672DA43
	for <lists+devicetree@lfdr.de>; Tue, 13 Jun 2023 08:56:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238845AbjFMG4o (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Jun 2023 02:56:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47214 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240073AbjFMG4l (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Jun 2023 02:56:41 -0400
Received: from relay7-d.mail.gandi.net (relay7-d.mail.gandi.net [217.70.183.200])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F40E3199B
        for <devicetree@vger.kernel.org>; Mon, 12 Jun 2023 23:56:34 -0700 (PDT)
X-GND-Sasl: miquel.raynal@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1686639393;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=YZKzy3DZL34dV/4rckfaL/ei5lbuZ6J/RAunnyrhwJo=;
        b=PyrO7FefkCRxH+UvyRwY6ogpO62qVnrRPUonTwQQkhJewj150SrZ8dgHfieKiIbstGiXEI
        4ztaVnJks+ANaWFKhwbai5EetfKNTx3+6K01gVkqBB2fjo+sBlC4y6/qK+QGLKMbgUgjXA
        dexgrAywnM1+rEZR5SQQeV+qO3wQPiNkAP0X1x0DgcJiNUQbj55VIBcvGkfVVDd3wEUPUB
        qrqF7YfAYrs0pAfZ6+XPT8cl3W682nRRaQ+GH+cjQq95Oxxq4Tb8yIfmH2OkMZZKs6lvjW
        RUvJUz9bU4T6K43BtmPg+ild0j4/BxLjPqtU3wTeRhqUHhgNvgELJ4c7QT2T1A==
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id D115820002;
        Tue, 13 Jun 2023 06:56:31 +0000 (UTC)
Date:   Tue, 13 Jun 2023 08:56:30 +0200
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Michael Riesch <michael.riesch@wolfvision.net>
Cc:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Maxime Ripard <mripard@kernel.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: Re: [PATCH 1/7] drm/panel: sitronix-st7789v: Prevent core spi
 warnings
Message-ID: <20230613085630.4a48fa8b@xps-13>
In-Reply-To: <b4ae6e9c-b548-b1e3-42f9-e24aacaf2b38@wolfvision.net>
References: <20230609145951.853533-1-miquel.raynal@bootlin.com>
        <20230609145951.853533-2-miquel.raynal@bootlin.com>
        <b4ae6e9c-b548-b1e3-42f9-e24aacaf2b38@wolfvision.net>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Michael,

michael.riesch@wolfvision.net wrote on Tue, 13 Jun 2023 08:15:26 +0200:

> Hi Miquel,
>=20
> On 6/9/23 16:59, Miquel Raynal wrote:
> > The spi core warns us about using an of_device_id table without a =20
>=20
> s/spi/SPI ?

Actually both are accepted in the kernel, IIRC it depends whether you
refer to the name of the bus or the Linux subsystem. Same for picking
"a" vs "an" before "spi/SPI". An attempt to use a unique formatting was
actually canceled because both are used equivalently and I believe even
the spi maintainer and the spi-nor maintainer kind of disagreed on the
default :)

> > spi_device_id table aside for module utilities in orter to not rely on =
=20
>=20
> s/in orter to/in order to ?

Yes, sorry for this typo as well as the two others you rightly pointed
out in another patch. I'll fix them.

> > OF modaliases. Just add this table using the device name without the
> > vendor prefix (as it is usually done).
> >
> > Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> > ---
> >  drivers/gpu/drm/panel/panel-sitronix-st7789v.c | 7 +++++++
> >  1 file changed, 7 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/panel/panel-sitronix-st7789v.c =20
> b/drivers/gpu/drm/panel/panel-sitronix-st7789v.c
> > index bbc4569cbcdc..c67b9adb157f 100644
> > --- a/drivers/gpu/drm/panel/panel-sitronix-st7789v.c
> > +++ b/drivers/gpu/drm/panel/panel-sitronix-st7789v.c
> > @@ -400,9 +400,16 @@ static const struct of_device_id =20
> st7789v_of_match[] =3D {
> >  };
> >  MODULE_DEVICE_TABLE(of, st7789v_of_match);
> >
> > +static const struct spi_device_id st7789v_ids[] =3D {
> > +	{ "st7789v", },
> > +	{ /* sentinel */ }
> > +};
> > +MODULE_DEVICE_TABLE(spi, st7789v_ids);
> > +
> >  static struct spi_driver st7789v_driver =3D {
> >  	.probe =3D st7789v_probe,
> >  	.remove =3D st7789v_remove,
> > +	.id_table =3D st7789v_ids,
> >  	.driver =3D {
> >  		.name =3D "st7789v",
> >  		.of_match_table =3D st7789v_of_match, =20
>=20
> May I point to you Sebastian Reichel's series that features a partial
> overlap with your work? [0]

Woow. That driver has been untouched for years and now two
contributions at the same time. Sebastian, what is the current state of
your series? Shall I base my work on top of yours? Or is it still too
premature and we shall instead try to merge both and contribute a new
version of the series bringing support for the two panels?

> For instance, the patch at hand is comparable to [1].
>=20
> Cc: Sebastian to keep him in the loop.

Thanks a lot for pointing this out.

> Best regards,
> Michael
>=20
> [0]
> https://lore.kernel.org/dri-devel/20230422205012.2464933-1-sre@kernel.org/
> [1]
> https://lore.kernel.org/dri-devel/20230422205012.2464933-4-sre@kernel.org/


Thanks,
Miqu=C3=A8l
