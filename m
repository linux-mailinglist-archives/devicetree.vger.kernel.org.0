Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 003A23F6F68
	for <lists+devicetree@lfdr.de>; Wed, 25 Aug 2021 08:22:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238739AbhHYGWv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 25 Aug 2021 02:22:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40364 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238139AbhHYGWv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 25 Aug 2021 02:22:51 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2F5A3C061757
        for <devicetree@vger.kernel.org>; Tue, 24 Aug 2021 23:22:06 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id h9so49281635ejs.4
        for <devicetree@vger.kernel.org>; Tue, 24 Aug 2021 23:22:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=XTWhmsKgwbDFsVJhts9Qh7GBwT3/hbH2uX+PR+DVBu8=;
        b=lKOkexaTXaucGOHXzmEynjn5hUr74w+ENkl2G+KxGNXThWrbM2MyiCbrZ3BuJp0Uay
         lcozOkcclK0s1YlIu1e/mo4YxnxH76YSJloh94L0WiflsaFM4RdbGkBmL7oDOyhxML9d
         G2ljW7ZSubJ4lDnvrtFlLz/8TZYrR+X2opHUFGOhTQXHCxFHx+k869yTQcqDDtf4WstP
         Lb4IUt4UU4h8us/k+1EnUXN84ZBe9p2yPyRePeuhBIPCnnmes0G0FTsNyiu/Wh89aTqQ
         MzYzNM9sxFtVnfodtaIlnJ6XGaoJ6zvdrORlsrVWUjdXh4/C81ShNZ5KJV6h2iZm8tuT
         cFwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=XTWhmsKgwbDFsVJhts9Qh7GBwT3/hbH2uX+PR+DVBu8=;
        b=NYm8XAxu8h9K2WaQ82gA3ez3IG87WvAW/2yiqhTtDRZ5naatZ7SakNE95N0wy1ttWh
         cs0+Uc29n+sflDusa5rvGEYL2EYWy55W7q9CPkZ8um3ijs+Rhdub7HjK9pyaMoUaJ5jE
         O1caZ7zS11sG2CJhwdmxjJkBvS/GU3uRSLTwgmtCt6GPXvBwmFpiUPnNqn2uqPdnuiEs
         9VdFIysK01efsxt42wLfD0JvF8dtbsL6o8bns64LEZbmgRB4X661t0odnFhLErpjE1QR
         soTh8nh361TFEf27NmkJTWgPZyaItEKGcsfp4g1lSgXk94SyRCkgfc1KovbrXg/aKmEp
         tC/w==
X-Gm-Message-State: AOAM532GeNKTpE6sTsjD0mwVBWdluC8rME745RKSewlTtRxMNiqK2or7
        3gWGrKLvfQI2L6DstDlpyJkK7Cq4xXg5SbcWskBTww==
X-Google-Smtp-Source: ABdhPJwFakTRrrBQO6AZDqGsGJCmtdAWT6x8a95rhHSe35Ks+xJsxJzdV1rbOyqb4MvvF6r6gdrmEjwEUdejK7/pxjY=
X-Received: by 2002:a17:906:d04f:: with SMTP id bo15mr43914505ejb.309.1629872524751;
 Tue, 24 Aug 2021 23:22:04 -0700 (PDT)
MIME-Version: 1.0
References: <839d833133318feeb2755c4431204b0ef4788cce.1628244299.git.michal.simek@xilinx.com>
In-Reply-To: <839d833133318feeb2755c4431204b0ef4788cce.1628244299.git.michal.simek@xilinx.com>
From:   Michal Simek <monstr@monstr.eu>
Date:   Wed, 25 Aug 2021 08:21:54 +0200
Message-ID: <CAHTX3d+Tan44uNNzbwfc7gYxhagAioms+qVRFD62weS=cHDB4Q@mail.gmail.com>
Subject: Re: [PATCH] arm64: zynqmp: Enable gpio and qspi for zc1275-revA
To:     LKML <linux-kernel@vger.kernel.org>,
        Michal Simek <monstr@monstr.eu>, git <git@xilinx.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        linux-arm <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

p=C3=A1 6. 8. 2021 v 12:05 odes=C3=ADlatel Michal Simek <michal.simek@xilin=
x.com> napsal:
>
> Add missing gpio and qspio for zc1275-revA board.
>
> Signed-off-by: Michal Simek <michal.simek@xilinx.com>
> ---
>
>  .../boot/dts/xilinx/zynqmp-zc1275-revA.dts     | 18 +++++++++++++++++-
>  1 file changed, 17 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zc1275-revA.dts b/arch/arm=
64/boot/dts/xilinx/zynqmp-zc1275-revA.dts
> index 66a90483b004..e971ba8c1418 100644
> --- a/arch/arm64/boot/dts/xilinx/zynqmp-zc1275-revA.dts
> +++ b/arch/arm64/boot/dts/xilinx/zynqmp-zc1275-revA.dts
> @@ -2,7 +2,7 @@
>  /*
>   * dts file for Xilinx ZynqMP ZC1275
>   *
> - * (C) Copyright 2017 - 2019, Xilinx, Inc.
> + * (C) Copyright 2017 - 2021, Xilinx, Inc.
>   *
>   * Michal Simek <michal.simek@xilinx.com>
>   * Siva Durga Prasad Paladugu <sivadur@xilinx.com>
> @@ -20,6 +20,7 @@ / {
>         aliases {
>                 serial0 =3D &uart0;
>                 serial1 =3D &dcc;
> +               spi0 =3D &qspi;
>         };
>
>         chosen {
> @@ -37,6 +38,21 @@ &dcc {
>         status =3D "okay";
>  };
>
> +&gpio {
> +       status =3D "okay";
> +};
> +
> +&qspi {
> +       status =3D "okay";
> +       flash@0 {
> +               compatible =3D "m25p80", "jedec,spi-nor";
> +               reg =3D <0x0>;
> +               spi-tx-bus-width =3D <1>;
> +               spi-rx-bus-width =3D <4>;
> +               spi-max-frequency =3D <108000000>;
> +       };
> +};
> +
>  &uart0 {
>         status =3D "okay";
>  };
> --
> 2.32.0
>

Applied.
M

--=20
Michal Simek, Ing. (M.Eng), OpenPGP -> KeyID: FE3D1F91
w: www.monstr.eu p: +42-0-721842854
Maintainer of Linux kernel - Xilinx Microblaze
Maintainer of Linux kernel - Xilinx Zynq ARM and ZynqMP ARM64 SoCs
U-Boot custodian - Xilinx Microblaze/Zynq/ZynqMP/Versal SoCs
