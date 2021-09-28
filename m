Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 80B4F41B370
	for <lists+devicetree@lfdr.de>; Tue, 28 Sep 2021 18:02:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241714AbhI1QEM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Sep 2021 12:04:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46064 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241712AbhI1QEM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Sep 2021 12:04:12 -0400
Received: from mail-il1-x130.google.com (mail-il1-x130.google.com [IPv6:2607:f8b0:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CE1A7C061746
        for <devicetree@vger.kernel.org>; Tue, 28 Sep 2021 09:02:30 -0700 (PDT)
Received: by mail-il1-x130.google.com with SMTP id q6so9942520ilm.3
        for <devicetree@vger.kernel.org>; Tue, 28 Sep 2021 09:02:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura-hr.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=U11ngjts53zxER0WZlZD0u0fXcv4N4xoFMWBCY+nI74=;
        b=v2h0ZYn/VO6zo/w/bealWNmsGlFmtizUgT5qtdDc+QpdepDbt6p3XLGTle5waTQB5o
         oPR49+r47pAj0u18GkTNolAcd2nkAoTAsO+zrjB9cwv+K3i4jKelkcNZUIOgxL8Msicr
         HIjbHL5sqObSuB0fdQRjLjQstfHe3tAABUb2yR+FKJF/dnXZfv736ReME+YrZ6QFQ6uq
         F1ZCBc2cu0gf5Ppztb7tg6C/+PuIcGtkNsY2/Fn5Z89rN8q3DnjxzAX9ybTiIfnQ6D/8
         COSMsKgF1gje1q5FI3w1HRom/lxzUS3oJc3X8RLof/vMuwnhjrIqi9BU9pz1tjU9+iJs
         ID6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=U11ngjts53zxER0WZlZD0u0fXcv4N4xoFMWBCY+nI74=;
        b=R7qotoj/n0IfTX6+RWr/bSJW0OyKbs3RHPX4xcDhEN7fwoUMZJRAEhKsJH1BMSmuYI
         T55L8uHWEE2l8+mXB3svXf/ywCjdbkLxokVnZGWI26JpRiJyzHLZuV8y2Ufz+4V2nNQa
         uyqr9Foh8Il5qFbs4nrqw0OLnqNtkWcxUPk7D6mpKzCFN1oUIyeGq2CY4kSvP7oL2gZj
         MHyRfJQr85NF3O1rIXFCDHoyXLoY4Wo6p+Fq/vGqrE214qaqO/ccLGywVP+0o39BSVOJ
         CZ9jPgFoP/HGiYcLfBrqy7AQ/xlFKqvEsBdyR/fFnTqoH6qJ27oky0Et1oFUnVPz5umY
         mbUQ==
X-Gm-Message-State: AOAM531R8VEn+hs4zY5y5mzFlBzri0R3kVU9ksUKk/rXFKkJz8QVDrkt
        zQweGKPqmgomSNLQ0O3Of8d6ITAMmhzYrc82tXOZMw==
X-Google-Smtp-Source: ABdhPJwvfX9k9Egrt+99brWCm71BS5LjYmmE/V6OqeHxY29IrPTHnLyLf9UKaX8FzSQWUQR3RSpkZRIlmzqMMi/J85A=
X-Received: by 2002:a05:6e02:1b0c:: with SMTP id i12mr4879867ilv.27.1632844949947;
 Tue, 28 Sep 2021 09:02:29 -0700 (PDT)
MIME-Version: 1.0
References: <20210927154159.2168500-1-robert.marko@sartura.hr>
 <20210927154159.2168500-3-robert.marko@sartura.hr> <20210928153251.ogmtnpg3slhp4lb7@pali>
In-Reply-To: <20210928153251.ogmtnpg3slhp4lb7@pali>
From:   Robert Marko <robert.marko@sartura.hr>
Date:   Tue, 28 Sep 2021 18:02:19 +0200
Message-ID: <CA+HBbNEhfSo-sb28j3A7MOM6wDFurGaeoU+3mmVmZbducoQ-Eg@mail.gmail.com>
Subject: Re: [PATCH 3/4] arm64: dts: marvell: espressobin-ultra: add PHY and
 switch reset pins
To:     =?UTF-8?Q?Pali_Roh=C3=A1r?= <pali@kernel.org>
Cc:     Andrew Lunn <andrew@lunn.ch>, gregory.clement@bootlin.com,
        sebastian.hesselbarth@gmail.com, Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        devicetree <devicetree@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Sep 28, 2021 at 5:32 PM Pali Roh=C3=A1r <pali@kernel.org> wrote:
>
> On Monday 27 September 2021 17:41:58 Robert Marko wrote:
> > Both the Topaz switch and 88E1512 PHY have their reset and interrupts
> > connected to the SoC.
> >
> > So, define the Topaz and 88E1512 reset pins in the DTS.
>
> Are reset pins connected only on ultra variant? Or on all espressobin
> variants? Because if they are on all variants then definitions should go
> into common dtsi file.
>
> I see that "gpionb 2" is on v7 variant connected to LED2. So I'm not
> sure if this one gpio is also shared or not.

As far as I know only Ultra has the reset pins connected, on the v5 and v7 =
Topaz
reset is tied to the system reset so it's not controllable.
I checked both the v5 and v7 schematics and it's like that.
>
> > Defining the interrupt pins wont work as both the 88E1512 and the
> > Topaz switch uses active LOW IRQ signals but the A37xx GPIO controller
> > only supports edge triggers.
> > 88E1512 would require special setup anyway as its INT pin is shared wit=
h
> > the LED2 and you first need to configure it as INT.
>
> Do you plan to finish also this additional setup?

Yes as the MOCHAbin board that I have sent the DTS for also has it connecte=
d
so I can use it as Armada 7040 supports level triggers, unlike the A3720.
It's in the queue but as a low priority, so I don't know when will I get to=
 it.

Regards,
Robert
>
> > Signed-off-by: Robert Marko <robert.marko@sartura.hr>
> > ---
> >  arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dts | 4 ++++
> >  1 file changed, 4 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.=
dts b/arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dts
> > index 8a700afd0570..96855a10b4a0 100644
> > --- a/arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dts
> > +++ b/arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dts
> > @@ -118,12 +118,16 @@ &usb3 {
> >  &mdio {
> >       extphy: ethernet-phy@1 {
> >               reg =3D <1>;
> > +
> > +             reset-gpios =3D <&gpionb 2 GPIO_ACTIVE_LOW>;
> >       };
> >  };
> >
> >  &switch0 {
> >       reg =3D <3>;
> >
> > +     reset-gpios =3D <&gpiosb 23 GPIO_ACTIVE_LOW>;
> > +
> >       ports {
> >               switch0port1: port@1 {
> >                       reg =3D <1>;
> > --
> > 2.31.1
> >



--=20
Robert Marko
Staff Embedded Linux Engineer
Sartura Ltd.
Lendavska ulica 16a
10000 Zagreb, Croatia
Email: robert.marko@sartura.hr
Web: www.sartura.hr
