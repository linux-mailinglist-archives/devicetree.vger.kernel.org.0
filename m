Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B33D94937A2
	for <lists+devicetree@lfdr.de>; Wed, 19 Jan 2022 10:44:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1353095AbiASJop (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Jan 2022 04:44:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36000 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243169AbiASJop (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Jan 2022 04:44:45 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DF4E2C061574
        for <devicetree@vger.kernel.org>; Wed, 19 Jan 2022 01:44:44 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id e9-20020a05600c4e4900b0034d23cae3f0so4653832wmq.2
        for <devicetree@vger.kernel.org>; Wed, 19 Jan 2022 01:44:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=q0gKhHEE/juVsOq00zDO2sWJ+k1H5DmEvtA3qa2adLA=;
        b=Vl9iVCqqC8qgtlO1CiMriF44KHBX4JPExeX8jea2wfU/nSfl2iX9EE1hCrMEEyMKvA
         EkyMjib3NVBPmSuB/RwV5lDjHxL2VUaR5Vi8e5W6zwK1KMYBZNyIGblKjpMQOREGxbmR
         enViGJvOnGz+oEquHZytGWXJfWj2qU4/B6giwEfPdn/poP3qbtjXVlf5rPGGTWLUjSUj
         KI6VMr/P10ZobfdugJOm0a4FTFu33zF2m14IgxAX9bg0eC7QNnnCQ4DXZep/GuYe6IO5
         xsxnw4NVH1mjnzINAXEXcsLBJFshCrP22V5vVE/EAERFKhQscaJINBUPW867rEJvSojt
         6T6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=q0gKhHEE/juVsOq00zDO2sWJ+k1H5DmEvtA3qa2adLA=;
        b=wTmtTi2TDM+q3DGoLVJwlxngZmhbcwgAOTf2K3EuhdjfUVLv15LlVerQERSBgwXHmW
         n+7iI/yqkkp5FB5HJC5a832B0OrqMd2DBPI8F08EmvvnLx2TjBg6VH3I0rOeB76Z3zcD
         6quCEO2v2HgKHrmwUFMHHqcAOsEDuybeE82Mm5Hpj8IMPD2Hds78oRx05q28Bi/jauPt
         MLoQqzmiGUy2bXhYzgAlwOPpsWrwlsprMsyEPx2YxVAruxVsSlekMqLYqh6cyd/U+YtO
         sJh9lsLIJ5VhptvmWKa4w0hEZ0vQ2sR6J34ltaYb9S0+GpC+8lDgEIAqaE6r7cl0iRxe
         cJFw==
X-Gm-Message-State: AOAM533EL8UmSQZoWXBsWrtzlWI/yxhczQeFTopxG2YkCbhbQPfPFPFQ
        rDuLB7zjn4b+QbQz4gxIJico4/xXIpS1UOLi3f/w1A==
X-Google-Smtp-Source: ABdhPJxuZ2fwkgetxncS/2LnTwl3WiQ+7JGl5mm3d+GGP2IRlY6wIkaGb4Q82UFogwFwar38ZnkTX+kC5wSqHGqBUzY=
X-Received: by 2002:a05:6000:15ca:: with SMTP id y10mr11571163wry.261.1642585483036;
 Wed, 19 Jan 2022 01:44:43 -0800 (PST)
MIME-Version: 1.0
References: <20211231115109.94626-1-uwe@kleine-koenig.org> <2540edbe-084e-802f-3533-0aa66ddc20ec@ideasonboard.com>
 <397bf7c2-da9f-a993-f8bb-5d6cbc6e87eb@gmail.com> <YecnebByrBplFEsU@pendragon.ideasonboard.com>
 <41d2ff4a-79eb-5071-3a35-efa8cccec074@kleine-koenig.org> <YedGVE6Ow+VLpaoS@pendragon.ideasonboard.com>
In-Reply-To: <YedGVE6Ow+VLpaoS@pendragon.ideasonboard.com>
From:   Dave Stevenson <dave.stevenson@raspberrypi.com>
Date:   Wed, 19 Jan 2022 09:44:27 +0000
Message-ID: <CAPY8ntBzd+JTOfKOT1_65XbHgKBCRPqc2=fPm-2WFFM8vsYJWQ@mail.gmail.com>
Subject: Re: [PATCH v3] ARM: dts: bcm2711-rpi-cm4-io: Add rtc on a
 pinctrl-muxed i2c bus
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <uwe@kleine-koenig.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Jean-Michel Hautbois <jeanmichel.hautbois@ideasonboard.com>,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        Stefan Wahren <stefan.wahren@i2se.com>,
        Cyril Brulebois <kibi@debian.org>,
        Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Laurent and Uwe.

On Tue, 18 Jan 2022 at 22:59, Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> Hi Uwe,
>
> On Tue, Jan 18, 2022 at 11:41:19PM +0100, Uwe Kleine-K=C3=B6nig wrote:
> > On 1/18/22 21:47, Laurent Pinchart wrote:
> > > On Tue, Jan 18, 2022 at 12:00:50PM -0800, Florian Fainelli wrote:
> > >> On 1/18/22 11:45 AM, Jean-Michel Hautbois wrote:
> > >>> This is also needed for camera and display support.
> > >>> I tested it successfully with imx219 + unicam on mainline.
> > >>
> > >> Thanks for testing, can you reply with a Tested-by tag so it could b=
e
> > >> applied to the commit message when this gets picked up?
> > >
> > > Well, this also points out that there's an issue: if the mux is neede=
d
> > > for other devices, it shouldn't be in bcm2711-rpi-cm4-io.dts :-) We
> > > could move it to bcm2711-rpi.dtsi (so far all bcm2711-based boards us=
e
> > > either I/O pins 0+1 or 44+45)
> >
> > If I understand correctly it's not used on rpi-4-b, so bcm2711-rpi.dtsi
> > would be wrong.
>
> rpi-4-b muxes I2C0 on pins 0+1 and 44+45. The latter is wired to the
> camera connector, and used for the camera sensor. Same thing on rpi-cm4.
> rpi-400 has no camera connector, but I believe the display I2C bus is
> also on pins 44+45 (at least according to the downstream DT sources,
> rpi-400 muxes I2C0 on 0+1 and 44+45 too).

Minor correction - Pi 400 has no camera or display connector.
I'm double checking with the hardware folk, but AFAIK 44&45 aren't
used for any other purpose, so leaving the i2c0mux defined to them
doesn't cause any issues.

Camera and DSI display connectors on all Raspberry Pi regular boards
share the same I2C GPIOs muxing. (The original Pi model A & B didn't
route I2C to the display).
On a CMIO board, CAM0 & DISP0 connectors share an I2C muxing (normally
0&1), and CAM1 & DISP1 connectors share a muxing (either 28&29, or
44&45).

> > > , or move it to per-board files.
> >
> > It is in an board file now?! So I don't understand your suggestion here=
.
>
> Sorry, I meant have it in per-board files, not more it there.
>
> > > In the
> > > latter case, instead of duplicating the same block everywhere, it cou=
ld
> > > be moved to a .dtsi included in those board files. This is what the
> > > downstream kernel does.
> >
> > How does it call the dtsi file? I wonder if that is sensible expecting
> > that the devices on the bus are different for different boards?!
>
> Downstream has a bcm283x-rpi-i2c0mux_0_44.dtsi that just contains
>
> &i2c0mux {
>         pinctrl-0 =3D <&i2c0_gpio0>;
>         pinctrl-1 =3D <&i2c0_gpio44>;
> };
>
> with i2c0mux defined in bcm283x.dtsi as
>
>         i2c0mux: i2c0mux {
>                 compatible =3D "i2c-mux-pinctrl";
>                 #address-cells =3D <1>;
>                 #size-cells =3D <0>;
>
>                 i2c-parent =3D <&i2c0if>;
>
>                 pinctrl-names =3D "i2c0", "i2c_csi_dsi";
>
>                 status =3D "disabled";
>
>                 i2c0: i2c@0 {
>                         reg =3D <0>;
>                         #address-cells =3D <1>;
>                         #size-cells =3D <0>;
>                 };
>
>                 i2c_csi_dsi: i2c@1 {
>                         reg =3D <1>;
>                         #address-cells =3D <1>;
>                         #size-cells =3D <0>;
>                 };
>         };
>
> The following board files #include "bcm283x-rpi-i2c0mux_0_44.dtsi":
>
> - bcm2710-rpi-3-b.dts
> - bcm2710-rpi-3-b-plus.dts
> - bcm2710-rpi-zero-2-w.dts
> - bcm2711-rpi-400.dts
> - bcm2711-rpi-4-b.dts
> - bcm2711-rpi-4-b.dts.orig
> - bcm2711-rpi-cm4.dts

For completeness, the earlier boards use a
bcm283x-rpi-i2c0mux_0_28.dtsi file as they use GPIOs 28&29 for the
camera & display I2C. If my memory serves correctly, it had to move to
allow connecting the SDIO interface to the Wifi chip on the boards you
list above.
The one awkward one is the very original rev1 256MB Model B (and 128MB
model A?) which routed GPIOs 2&3 and BSC1 to the camera connector.
Life's never easy!

  Dave

> We don't have to replicate the exact same mechanism and use the same
> names, but for rpi-4-b and rpi-cm4, to enable camera support (which
> we're working on, Jean-Michel has posted a driver for the Unicam CSI-2
> receiver to the linux-media mailing list, the ISP will follow), we need
> the mux. Given that those two boards have a camera connector, I think it
> makes sense to define the mux in a different file than
> bcm2711-rpi-cm4-io.dts. The RTC node can stay in bcm2711-rpi-cm4-io.dts.
>
> --
> Regards,
>
> Laurent Pinchart
