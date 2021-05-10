Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 64BB53792DD
	for <lists+devicetree@lfdr.de>; Mon, 10 May 2021 17:37:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233020AbhEJPit (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 May 2021 11:38:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50440 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237416AbhEJPhj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 May 2021 11:37:39 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B67A1C06134E
        for <devicetree@vger.kernel.org>; Mon, 10 May 2021 08:36:08 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id o127so9439917wmo.4
        for <devicetree@vger.kernel.org>; Mon, 10 May 2021 08:36:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=DCpPKQQtVHN6Q0vpt3tKbixt7PhCNgy2etbsKBukc1I=;
        b=ZMkLyMX3rDPOkgqMB9fjeXWZoXQZTa0ifibSohT7pRqUnr5gM6xNdYct19XVX6U5Zh
         0Hmbck/4PR97bWYuag4XHtYdg7G/oYgATi+JiOkZdyzmIj8/B9G1ukqIedDhuf87BPEj
         8r4zm8zSEhVEt/C1xFYk3dR2sIrWsOq6FS7osS37N9f6P6iH2vPyFG3Z/FjlX2a0BYZI
         Kq6lysbfD1zDrc2eO2uBn0zES02brjhsN0J1ebtCz+JHYNu+iBJbXDXZm+FmN/bllgvs
         4XZQIP6bmxf82M7D0In8Os9+fVHQ14xvUGSFqKEJxqr49EmnetuJq43ozlWJHYyKVzc4
         oMFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=DCpPKQQtVHN6Q0vpt3tKbixt7PhCNgy2etbsKBukc1I=;
        b=YXXTB+FkUcctzEqTpxqI2BP+hNuK9b8zMm5RomOlAY/07D0cRq9AmaIDqGjkloZxDt
         KIGBh7a9uc6LZ7bvIt8mnE639vxNGv8fPNN+woPMe3wshQabH+mFDqXNoONkUYsKHERh
         pzKdogc20Zl7wyX+VgRCp02hTuLpo2UFhSrYKIMG98M0Eb5nGsUFvlaEr9RpRJzNufkc
         D5m1d5af4E9b86Q19rjU7HZNmgkDoX37H+xcLm6g9TFi08SnCo0m90kWhaStGtwgrhHh
         clBlXkk4yzVmIk2AG25zITAIzTH5tBQcYLBQXhKuiBSHDL7jqpyaNQ8AMhXKDsr/22tu
         MgsQ==
X-Gm-Message-State: AOAM5311OxdSF0fv6KtyOd3N0Pv3JGrx9GpR014HcHDCWt9HGhsweLSu
        yBDmnC3XXm5KUOJ1Gpz2M0g=
X-Google-Smtp-Source: ABdhPJzSMGmiZQyruI0eV3oQIEAih/1uVxrR2C0KRp8YEToZyRG5D/Phewxe6KUT38eW7WN+QRa11w==
X-Received: by 2002:a7b:c34a:: with SMTP id l10mr27225340wmj.46.1620660967515;
        Mon, 10 May 2021 08:36:07 -0700 (PDT)
Received: from kista.localnet (cpe-86-58-17-133.cable.triera.net. [86.58.17.133])
        by smtp.gmail.com with ESMTPSA id l14sm24202080wrv.94.2021.05.10.08.36.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 May 2021 08:36:07 -0700 (PDT)
From:   Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To:     Rob Herring <robh@kernel.org>, Maxime Ripard <mripard@kernel.org>,
        Chen-Yu Tsai <wens@csie.org>,
        Andre Przywara <andre.przywara@arm.com>
Cc:     Icenowy Zheng <icenowy@aosc.io>,
        Samuel Holland <samuel@sholland.org>,
        Corentin Labbe <clabbe@baylibre.com>,
        =?ISO-8859-1?Q?Cl=E9ment_P=E9ron?= <peron.clem@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-sunxi@googlegroups.com, linux-sunxi@lists.linux.dev
Subject: Re: Re: [PATCH] arm64: dts: allwinner: Pine H64: Enable USB 3.0 port
Date:   Mon, 10 May 2021 17:36:05 +0200
Message-ID: <5404798.YEtBip1y79@kista>
In-Reply-To: <2288435.7XXmsQVVxE@kista>
References: <20210510130119.6534-1-andre.przywara@arm.com> <2288435.7XXmsQVVxE@kista>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Dne ponedeljek, 10. maj 2021 ob 17:30:44 CEST je Jernej =C5=A0krabec napisa=
l(a):
> Hi Andre!
>=20
> Dne ponedeljek, 10. maj 2021 ob 15:01:19 CEST je Andre Przywara napisal(a=
):
> > The Pine H64 board features an USB 3.0 type A port, which works just
> > fine.
> >=20
> > Enable the controller and USB PHY in the .dts to make it usable.
> >=20
> > Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> > ---
> >  arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts | 9 +++++++++
> >  1 file changed, 9 insertions(+)
> >=20
> > diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts b/arc=
h/
> arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts
> > index 1ffd68f43f87..9061c9913f4c 100644
> > --- a/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts
> > +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts
> > @@ -89,6 +89,10 @@
> >  	status =3D "okay";
> >  };
> > =20
> > +&dwc3 {
> > +	status =3D "okay";
> > +};
> > +
> >  &ehci0 {
> >  	status =3D "okay";
> >  };
> > @@ -332,3 +336,8 @@
> >  	usb3_vbus-supply =3D <&reg_usb_vbus>;
> >  	status =3D "okay";
> >  };
> > +
> > +&usb3phy {
> > +	phy-supply =3D <&reg_usb_vbus>;
> > +	status =3D "okay";
> > +};
> > --=20
> > 2.17.5
> >=20
>=20
> Exactly the same patch was already proposed by Icenowy. In short, PHY is=
=20
> powered by internal power and doesn't need phy-supply property. It's=20
connector=20
> that needs power supply. One of her latest attempts can be found here:=20
> https://lore.kernel.org/patchwork/cover/1058917/

P.S: Maybe wait on outcome of https://lore.kernel.org/linux-sunxi/
20210430031912.42252-1-samuel@sholland.org/T/#t which may change USB3 node=
=20
form.
=20
 Best regards,
 Jernej


