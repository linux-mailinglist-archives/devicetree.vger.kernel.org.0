Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C854231086D
	for <lists+devicetree@lfdr.de>; Fri,  5 Feb 2021 10:55:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229650AbhBEJxm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 Feb 2021 04:53:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48756 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230063AbhBEJqc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 Feb 2021 04:46:32 -0500
Received: from mail-qk1-x733.google.com (mail-qk1-x733.google.com [IPv6:2607:f8b0:4864:20::733])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 068E1C06121D
        for <devicetree@vger.kernel.org>; Fri,  5 Feb 2021 01:45:45 -0800 (PST)
Received: by mail-qk1-x733.google.com with SMTP id a12so6234000qkh.10
        for <devicetree@vger.kernel.org>; Fri, 05 Feb 2021 01:45:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=semihalf-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=0FlvauPxI82lJp8jNkOhgq79rt6yfGv1K5PxDtLBQRg=;
        b=SJjIEqN+fAXUPvWNb4TqBr1kFjSDVRi9dpOpTeX8ViKkCaRS4TeNiraJModQFugQwc
         bD3tizzNKKTCZcLWTuXiQrzdt1SefwVfayL98KiXujC1Q8YEidcbHDMRrZgdw2vTzBKG
         j0uN4QiPMLMaKUuhvbDZKUNE9ny7GjV5AWsQ1GZR5mmuUDAs/RXQa9Zvg7oR4Go2tL5s
         mLqQlnJTjkhgtOqhTbUZN6G+FTQTwafcaGcEHFEqXrj3289UXbsmSWkAMAOw1umnCfoW
         7k9R2VvnDVb2fvnWBdoAL+RypoPIl+0bbQYU6UVZVv4wH/M63KM3l64GVmOCM0ixlEGf
         lU5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=0FlvauPxI82lJp8jNkOhgq79rt6yfGv1K5PxDtLBQRg=;
        b=C16yfBWINmHffwiQgQ3To2s1Qu1pU6mEfu3PU6baHM+bqxSWFszL0rJcoCpgQQQUmv
         uS/swxgsYabf1ICe028vIv6jUei5029pcaOBcG+U6Cw5TC6tSkLQyQnOSji4wTwO0w9l
         +mlclwmU5AN6HnEdjzPDHd3gBDiM9bSBreilugTFv2OmAEBBIavENHBXia2x2Mqa3P0+
         xYZikreRLmsCKnnSQwG/aXICYrQzYnJ3S9yDesbn0KIp8R/I4TeExL7IAMsa17AwDEWr
         8n+Y2wWDS3BZ3fB9OIcCb+CSvEaFLiturVyR7OrnDcOuy7ktPV26J31UFxVI7tuiw482
         DUPg==
X-Gm-Message-State: AOAM533v9MjzXqHdrH1skIz3XjhBgQo0aKz1IkWrRX15UsIfy/CkEmO8
        hR4mBDepXFW3Ctr2W5J4PSpXp/dTEOAs0BMfkwM9hw==
X-Google-Smtp-Source: ABdhPJxxmATRZtKOwg48ZhqL0MPxHUwiOYl7cBEJUhrGUaD7tMXIx/qXPPY2uuFsJAamMyhJf8dbADxPcXTfTfRciG8=
X-Received: by 2002:a05:620a:f96:: with SMTP id b22mr3257258qkn.295.1612518344222;
 Fri, 05 Feb 2021 01:45:44 -0800 (PST)
MIME-Version: 1.0
References: <20210203133138.10754-1-kostap@marvell.com> <20210203133138.10754-10-kostap@marvell.com>
In-Reply-To: <20210203133138.10754-10-kostap@marvell.com>
From:   Marcin Wojtas <mw@semihalf.com>
Date:   Fri, 5 Feb 2021 10:45:32 +0100
Message-ID: <CAPv3WKcuOXdN4zRSaGm1RnaBaXLsCtuT7CRMBAPDFvnBL76oEw@mail.gmail.com>
Subject: Re: [PATCH 09/11] dts: a3700: enable dma coherence for PCIE interface
To:     Kostya Porotchkin <kostap@marvell.com>
Cc:     Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Russell King - ARM Linux <linux@armlinux.org.uk>,
        Rob Herring <robh+dt@kernel.org>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        =?UTF-8?Q?Gr=C3=A9gory_Clement?= <gregory.clement@bootlin.com>,
        Andrew Lunn <andrew@lunn.ch>,
        Grzegorz Jaszczyk <jaz@semihalf.com>, nadavh@marvell.com,
        Stefan Chulski <stefanc@marvell.com>,
        =?UTF-8?B?QmVuIFBlbGVkICjXkdefINek15zXkyk=?= <bpeled@marvell.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Kosta,

=C5=9Br., 3 lut 2021 o 14:32 <kostap@marvell.com> napisa=C5=82(a):
>
> From: Stefan Chulski <stefanc@marvell.com>
>
> Enavble PCIe dma coherence for A3700 platform
>

While at it, can we also add:

--- a/arch/arm64/boot/dts/marvell/armada-37xx.dtsi
+++ b/arch/arm64/boot/dts/marvell/armada-37xx.dtsi
@@ -71,6 +71,7 @@ soc {
                compatible =3D "simple-bus";
                #address-cells =3D <2>;
                #size-cells =3D <2>;
+               dma-coherent;
                ranges;

                internal-regs@d0000000 {

so that to enable it for all bus-attached interfaces? This safe and
will boost IO performance.

Thanks,
Marcin

> Signed-off-by: Stefan Chulski <stefanc@marvell.com>
> Signed-off-by: Konstantin Porotchkin <kostap@marvell.com>
> ---
>  arch/arm64/boot/dts/marvell/armada-37xx.dtsi | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/arch/arm64/boot/dts/marvell/armada-37xx.dtsi b/arch/arm64/bo=
ot/dts/marvell/armada-37xx.dtsi
> index d5b6c0a1c54a..5c0df06bc707 100644
> --- a/arch/arm64/boot/dts/marvell/armada-37xx.dtsi
> +++ b/arch/arm64/boot/dts/marvell/armada-37xx.dtsi
> @@ -486,6 +486,7 @@
>                         #interrupt-cells =3D <1>;
>                         msi-parent =3D <&pcie0>;
>                         msi-controller;
> +                       dma-coherent;
>                         ranges =3D <0x82000000 0 0xe8000000   0 0xe800000=
0 0 0x1000000 /* Port 0 MEM */
>                                   0x81000000 0 0xe9000000   0 0xe9000000 =
0 0x10000>; /* Port 0 IO*/
>                         interrupt-map-mask =3D <0 0 0 7>;
> --
> 2.17.1
>
