Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 11BAC27C2EE
	for <lists+devicetree@lfdr.de>; Tue, 29 Sep 2020 12:56:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727805AbgI2K4S (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Sep 2020 06:56:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59788 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727650AbgI2K4S (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Sep 2020 06:56:18 -0400
Received: from mail-ej1-x643.google.com (mail-ej1-x643.google.com [IPv6:2a00:1450:4864:20::643])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4903EC061755
        for <devicetree@vger.kernel.org>; Tue, 29 Sep 2020 03:56:18 -0700 (PDT)
Received: by mail-ej1-x643.google.com with SMTP id j11so14397326ejk.0
        for <devicetree@vger.kernel.org>; Tue, 29 Sep 2020 03:56:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=Z2Vyi6859atB4dYO6brHpxNiRhMmXBV/4g45BzJSh9M=;
        b=LeBWnXxjITAnHgdjGeTnzPfccTT+yPZUAB/+/e4PScWpvephwStvWmN/zCEcnGX6y0
         cuqfj55fNJiU7WPIdLWLNsLsb7iAEcA+6BJ1ck4XRQTPJdgBgfm74TBHz2DgWzR+DBoD
         a87zmNrLE9Ywr4CfScko3Ob+bj99nM6DcjFUmqEjVnZu7SZKyxrr2NXRVChkBBw1xpLR
         WY0v+Ehgi9yuAF0dZYiAL3sWbobBn9BEjHXs7qbMWRMLEniHDt8u/r/yMV75yn1WGo0D
         ntC3K4YSKIbcjeY1T83EqWp1p9xggBc+YfdmrczaShbuwre1BGhYHw6PYmXMU74Ks9/y
         8DcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=Z2Vyi6859atB4dYO6brHpxNiRhMmXBV/4g45BzJSh9M=;
        b=cX4E+m2P6r8SA3R0psQtOP3o2ISt1sPMEznQG4KytAdHJwReifr2eYTxqzzlK5w3wR
         D3riCowWhHoiEckoqV07IOJnU+IfrMsni9QA/p2Dy6YC3qjDFtTrpmgPASptakWm1EP3
         k8b/3xv6eOfJ/z5EIAjycHj6HrgjAHJnjwAxYbYBnJX0YawTeHrpbuE4jwDc/c8IXqoY
         Y6rSqiir5YeVXuDwnyuygjy06BnFws3wfx4nVm3pAFvjnfD418BT1X0XXsH23LZnSF13
         D6CzAssPpiJ6eKNwAdq9Pcv3QhMixxD/e/tRhL4YD/Cj5MzoMyqCexorIEfRiQNu0kPo
         pl0Q==
X-Gm-Message-State: AOAM533weM9gJUmBF4p8icZMx2bUkrrYM9bb/slRaNBj3TivzAh1PTiL
        2pWwt3TEZ60d3/v87MtHQ0JV7RFAm4VS40+MFqVtpQ==
X-Google-Smtp-Source: ABdhPJzOeNPblBxTNeJKT3nQJy9oYxE7lrbohxQ3PiScPQO5eTBenohjRKiBsX8zBIMpp7cSKNh4vk3m4WnqfHQR9rM=
X-Received: by 2002:a17:906:3f95:: with SMTP id b21mr3128842ejj.93.1601376976903;
 Tue, 29 Sep 2020 03:56:16 -0700 (PDT)
MIME-Version: 1.0
References: <8ba339425b9c9f319bdedce7741367055a30713c.1598257720.git.michal.simek@xilinx.com>
In-Reply-To: <8ba339425b9c9f319bdedce7741367055a30713c.1598257720.git.michal.simek@xilinx.com>
From:   Michal Simek <monstr@monstr.eu>
Date:   Tue, 29 Sep 2020 12:56:05 +0200
Message-ID: <CAHTX3dK3D+8MD=fPmooyUisjXqfd+3mmLJKLSzh3c3w_9v-OoA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: zynqmp: Remove undocumented u-boot properties
To:     LKML <linux-kernel@vger.kernel.org>,
        Michal Simek <monstr@monstr.eu>, git <git@xilinx.com>
Cc:     Krzysztof Kozlowski <krzk@kernel.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Manish Narani <manish.narani@xilinx.com>,
        Michael Tretter <m.tretter@pengutronix.de>,
        Nava kishore Manne <nava.manne@xilinx.com>,
        Rajan Vaja <rajan.vaja@xilinx.com>,
        Rob Herring <robh+dt@kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        linux-arm <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

po 24. 8. 2020 v 10:28 odes=C3=ADlatel Michal Simek <michal.simek@xilinx.co=
m> napsal:
>
> u-boot, DT properties are not documented anywhere in Linux DT binding
> that's why remove them.
>
> Signed-off-by: Michal Simek <michal.simek@xilinx.com>
> ---
>
>  arch/arm64/boot/dts/xilinx/zynqmp-clk-ccf.dtsi | 5 -----
>  arch/arm64/boot/dts/xilinx/zynqmp.dtsi         | 1 -
>  2 files changed, 6 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-clk-ccf.dtsi b/arch/arm64/=
boot/dts/xilinx/zynqmp-clk-ccf.dtsi
> index 9868ca15dfc5..c94c3bb67edc 100644
> --- a/arch/arm64/boot/dts/xilinx/zynqmp-clk-ccf.dtsi
> +++ b/arch/arm64/boot/dts/xilinx/zynqmp-clk-ccf.dtsi
> @@ -10,35 +10,30 @@
>  #include <dt-bindings/clock/xlnx-zynqmp-clk.h>
>  / {
>         pss_ref_clk: pss_ref_clk {
> -               u-boot,dm-pre-reloc;
>                 compatible =3D "fixed-clock";
>                 #clock-cells =3D <0>;
>                 clock-frequency =3D <33333333>;
>         };
>
>         video_clk: video_clk {
> -               u-boot,dm-pre-reloc;
>                 compatible =3D "fixed-clock";
>                 #clock-cells =3D <0>;
>                 clock-frequency =3D <27000000>;
>         };
>
>         pss_alt_ref_clk: pss_alt_ref_clk {
> -               u-boot,dm-pre-reloc;
>                 compatible =3D "fixed-clock";
>                 #clock-cells =3D <0>;
>                 clock-frequency =3D <0>;
>         };
>
>         gt_crx_ref_clk: gt_crx_ref_clk {
> -               u-boot,dm-pre-reloc;
>                 compatible =3D "fixed-clock";
>                 #clock-cells =3D <0>;
>                 clock-frequency =3D <108000000>;
>         };
>
>         aux_ref_clk: aux_ref_clk {
> -               u-boot,dm-pre-reloc;
>                 compatible =3D "fixed-clock";
>                 #clock-cells =3D <0>;
>                 clock-frequency =3D <27000000>;
> diff --git a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi b/arch/arm64/boot/dts=
/xilinx/zynqmp.dtsi
> index d1e9a5eb4f70..6a8ff4bcc09b 100644
> --- a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
> +++ b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
> @@ -131,7 +131,6 @@ zynqmp_power: zynqmp-power {
>                         };
>
>                         zynqmp_clk: clock-controller {
> -                               u-boot,dm-pre-reloc;
>                                 #clock-cells =3D <1>;
>                                 compatible =3D "xlnx,zynqmp-clk";
>                                 clocks =3D <&pss_ref_clk>,
> --
> 2.28.0
>

Applied.
M

--=20
Michal Simek, Ing. (M.Eng), OpenPGP -> KeyID: FE3D1F91
w: www.monstr.eu p: +42-0-721842854
Maintainer of Linux kernel - Xilinx Microblaze
Maintainer of Linux kernel - Xilinx Zynq ARM and ZynqMP ARM64 SoCs
U-Boot custodian - Xilinx Microblaze/Zynq/ZynqMP/Versal SoCs
