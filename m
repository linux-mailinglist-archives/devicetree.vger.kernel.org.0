Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1556C760C1E
	for <lists+devicetree@lfdr.de>; Tue, 25 Jul 2023 09:41:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232717AbjGYHlO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Jul 2023 03:41:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54710 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232760AbjGYHkz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Jul 2023 03:40:55 -0400
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com [IPv6:2607:f8b0:4864:20::1030])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 603281BE7
        for <devicetree@vger.kernel.org>; Tue, 25 Jul 2023 00:39:30 -0700 (PDT)
Received: by mail-pj1-x1030.google.com with SMTP id 98e67ed59e1d1-2681223aaacso1309149a91.0
        for <devicetree@vger.kernel.org>; Tue, 25 Jul 2023 00:39:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lessconfused.com; s=lessconfused; t=1690270770; x=1690875570;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xy8OcOIyM25HJffc3iM+MHwhzBjN4KoyNKIe4W8cYC4=;
        b=Qpzrc8y88iB8rcDjaw/QW172NzZdV/q4oifO8GJUr5piHN8AekTfLQF2J05Gs2986n
         /BRCopHVq6PlBZt8r2jKrGnYEnbTLWOtFK84BCUf5se+z6tdyt75Q1shY1+yt+l27jyD
         O3xFvYCfwRfmNbojFQ9TI+MXYMooI5VSwk09c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690270770; x=1690875570;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xy8OcOIyM25HJffc3iM+MHwhzBjN4KoyNKIe4W8cYC4=;
        b=ifV4GX8CZ6zky2wnNx9lH4KHSzC21luFJ5Qlq5fud+wJpQ19NTFgeN/+TLGRrZpxV7
         63RbfI1kRNFfGMWmrheFNzOy0fXQnR/ibyefrJiieeqaiE6DMVrKJ701H/h1jacRN6y1
         AVuCiNi8CCqk7DqqqMFE/cmY8tpnlMcpZROcZ9lKSsms4gZdms3mexQJt4d08lVmDzKC
         cil25BW8sWSRmXRzuldsYQPF1iMPzUig8GCBFUu/E2dQtVtUz76DMm8AQH7WxmHUnMMp
         0mKDESqquHlzfd0B/+MyoSkJYBXh8fVmuz+8mGLmjfEuT3zNQrAX8vBm9SlHO+sy7KFb
         Q3Rw==
X-Gm-Message-State: ABy/qLad0dL2GeNONLxNaUT0KIhchjPvZzui7TfgNMpBQt5Q4kIWbnfl
        wov8xao/oU0kViC6KhEfwEqxnMxs+RyQT1wueWALNg==
X-Google-Smtp-Source: APBJJlGjbWO2mFsMyVaK8S3VqHry3/clQYdFOi/SJupj6WR+NW5T3GtVZ18Ioo9pCpRuhmJKgdjlUUXzwLQ5peKjkWo=
X-Received: by 2002:a17:90a:5290:b0:260:a8da:536c with SMTP id
 w16-20020a17090a529000b00260a8da536cmr2180262pjh.23.1690270769759; Tue, 25
 Jul 2023 00:39:29 -0700 (PDT)
MIME-Version: 1.0
References: <20230719122123.3702588-1-jagan@amarulasolutions.com> <51af40e5fa8e22411b654bbb894bb0fee19be8f9.camel@collabora.com>
In-Reply-To: <51af40e5fa8e22411b654bbb894bb0fee19be8f9.camel@collabora.com>
From:   Da Xue <da@lessconfused.com>
Date:   Tue, 25 Jul 2023 03:39:18 -0400
Message-ID: <CACdvmAia49_YiKpVvT=yeLWF+YGm+2vFK3rdwRB9XOAH5mm=-w@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Enable TYPE-C PD for ROC-RK3399-PC
To:     Christopher Obbard <chris.obbard@collabora.com>
Cc:     Jagan Teki <jagan@amarulasolutions.com>,
        Heiko Stuebner <heiko@sntech.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Corentin Labbe <clabbe@baylibre.com>,
        kernel <kernel@collabora.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jul 24, 2023 at 9:55=E2=80=AFAM Christopher Obbard
<chris.obbard@collabora.com> wrote:
>
> On Wed, 2023-07-19 at 17:51 +0530, Jagan Teki wrote:
> > The power supply circuit in ROC-RK3399-PC is
> >
> > Power Supply (or PPS) =3D> FUSB =3D> MP8859
> >
> > VUBS pin of FUSB and IN pin of MP8859 is supplied via TYPEC_IN.
> >
> > The MP8859 operated with 2.8V to 22V supply voltage and typical
> > applications this supply can be 12V.
> >
> > This patch is trying to support the PD by changing the FUSB VBUS supply
> > to 12V and tune the I2C7 timings from downstream kernel.
> >
> > Tested with PD3.0 PPS with supply voltages of 12V/3A and 20V/5A.
>
> Hi Jagan,
>
> This series works fine with a "dumb" (no PD negotiation) 5.1V Raspberry P=
i PSU.
>
> It also works fine with a Dell 45W USB-C Laptop Power Supply (model AA45N=
M170) which provides 5V@3A,9V@3A,15V@3A,20V@2.25A, where Linux master fails=
 and just tells the USB-PD PSU to power-off.

I think this depends on the recent Rockchip TCPM changes. FUSB302 has
been a pain in the USB or else this platform would have launched a lot
longer ago.

>
> It doesn't work with a Lenovo 65W PSU (model ADLX65YLC3D) which provides =
5V@2A,9V@2A,15V@3A,20V@3.25A, after negotiation the driver turns the PD PSU=
 off and on again, resetting the board.
> So it'd be great to get this fixed, but it seems like the sink-pdos shoul=
d already support this PSU ?

Something to note about USB PD that I read in the TI PD 2.0 paper and
re-spewing based on memory: during transitions, the sink should
self-limit to 500mA. If that is the case, the transition behavior is
up to the source.

>
>
> As a side note for full transparency, another issue is that with Linux ma=
ster or with this patch applied, applying power to the DC_12V header withou=
t a USB-C PSU connected (e.g. powering from the POE
> expansion shield), boot hangs and dumps to an initramfs shell with:
>
>   [    7.411798] random: crng init done
>   [   12.568138] platform fe3a0000.usb: deferred probe pending
>   [   12.568673] platform sdio-pwrseq: deferred probe pending
>   [   12.569162] platform fe3e0000.usb: deferred probe pending
>   [   12.569658] platform adc-keys: deferred probe pending
>   [   12.570123] i2c 7-0022: deferred probe pending
>   [   12.570533] i2c 4-0022: deferred probe pending
>   [   12.570944] platform ff940000.hdmi: deferred probe pending
>   [   12.571448] platform vcc3v0-sd: deferred probe pending
>   [   12.572000] platform vcc1v8-s3: deferred probe pending
>   [   12.572475] platform sys-12v: deferred probe pending
>   [   12.572933] platform vcc3v3-sys: deferred probe pending
>   [   12.573412] platform fe320000.mmc: deferred probe pending
>   [   12.573907] platform vcca-0v9: deferred probe pending
>   [   12.574371] platform vcc5v0-host-regulator: deferred probe pending
>   [   12.574935] platform ff770000.syscon:usb2phy@e450: deferred probe pe=
nding
>   [   12.575552] platform vcc-vbus-typec1: deferred probe pending
>   [   12.576090] platform fe300000.ethernet: deferred probe pending
>   [   12.576623] platform vcc-sys: deferred probe pending
>   [   12.577080] platform ff770000.syscon:usb2phy@e460: deferred probe pe=
nding
>   [   12.577697] platform ff320000.syscon:io-domains: deferred probe pend=
ing
>   [   12.578298] platform ff770000.syscon:io-domains: deferred probe pend=
ing
>   [   12.578901] platform fe800000.usb: deferred probe pending
>   [   12.579395] platform fe900000.usb: deferred probe pending
>   [   12.579904] platform vdd-log: deferred probe pending
>   [   12.580362] i2c 0-001b: deferred probe pending
>   [   12.580772] i2c 0-0040: deferred probe pending
>   [   12.581182] platform cpufreq-dt: deferred probe pending
>   [   12.581663] i2c 0-0041: deferred probe pending
>
>
>
> Thanks,
>
> Chris
>
> >
> > Cc: Corentin Labbe <clabbe@baylibre.com>
> > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > ---
> >  .../boot/dts/rockchip/rk3399-roc-pc.dtsi      | 19 ++++++++++++++++---
> >  1 file changed, 16 insertions(+), 3 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi b/arch/arm=
64/boot/dts/rockchip/rk3399-roc-pc.dtsi
> > index c32913df93c3..8963b3858eae 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
> > @@ -6,6 +6,7 @@
> >  /dts-v1/;
> >  #include <dt-bindings/input/linux-event-codes.h>
> >  #include <dt-bindings/pwm/pwm.h>
> > +#include "dt-bindings/usb/pd.h"
> >  #include "rk3399.dtsi"
> >  #include "rk3399-opp.dtsi"
> >
> > @@ -524,8 +525,9 @@ &i2c3 {
> >  };
> >
> >  &i2c4 {
> > -       i2c-scl-rising-time-ns =3D <600>;
> > -       i2c-scl-falling-time-ns =3D <20>;
> > +       clock-frequency =3D <400000>;
> > +       i2c-scl-rising-time-ns =3D <345>;
> > +       i2c-scl-falling-time-ns =3D <11>;
> >         status =3D "okay";
> >
> >         fusb1: usb-typec@22 {
> > @@ -552,8 +554,19 @@ fusb0: usb-typec@22 {
> >                 interrupts =3D <2 IRQ_TYPE_LEVEL_LOW>;
> >                 pinctrl-names =3D "default";
> >                 pinctrl-0 =3D <&fusb0_int>;
> > -               vbus-supply =3D <&vcc_vbus_typec0>;
> > +               vbus-supply =3D <&dc_12v>;
> >                 status =3D "okay";
> > +
> > +               connector {
> > +                       compatible =3D "usb-c-connector";
> > +                       data-role =3D "dual";
> > +                       label =3D "USB-C";
> > +                       power-role =3D "sink";
> > +                       try-power-role =3D "sink";
> > +                       op-sink-microwatt =3D <10000000>;
> > +                       sink-pdos =3D <PDO_FIXED(5000, 3000, PDO_FIXED_=
USB_COMM)
> > +                                    PDO_VAR(5000, 20000, 5000)>;
> > +               };
> >         };
> >
> >         mp8859: regulator@66 {
>
> --
> Christopher Obbard BEng (Hons) MIET
> Senior Engineer
>
> Collabora Ltd
> Platinum Building, St John's Innovation Park, Cambridge CB4 0DS, UK
> Registered in England & Wales no 5513718.
> This message is intended for the use of only the person(s) ("intended
> recipient") to whom it is addressed.
> It may contain information that is privileged and confidential.
> Accordingly, any dissemination, distribution, copying or other use of
> this message or any of its content by any person other than the
> intended recipient may constitute a breach of civil or criminal law and
> is strictly prohibited.
>
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
