Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 20255BB8CC
	for <lists+devicetree@lfdr.de>; Mon, 23 Sep 2019 18:00:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732709AbfIWQAS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Sep 2019 12:00:18 -0400
Received: from mail-oi1-f196.google.com ([209.85.167.196]:42435 "EHLO
        mail-oi1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728464AbfIWQAS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Sep 2019 12:00:18 -0400
Received: by mail-oi1-f196.google.com with SMTP id i185so8010388oif.9
        for <devicetree@vger.kernel.org>; Mon, 23 Sep 2019 09:00:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=fMf30JzA7hKObE9R0byNtMQ8HAHmHVRxMKBzO0OruG4=;
        b=uNIDskcLkzBp+Nh3z+C/2S8s97a7/9r/xvxf1ssKrcGO5LN6FKa8zp7aJxtbGIXqxw
         m/C/2XMCbW5VsaQ1ahH+uVsj1zRGYETa1prn1S8gL6xYjpYYGfIPIVwInffSwuTeD9Oh
         scPsZD5Dp7+SeA7kTANxdhq/LP0a1AYyXtJhf4hVwXiJWXIkHfgaqQgeBrrkA/66VzQL
         WcPk8ODuxZvOipwRTMYcccQ7G61WjniWwoP7KU1LzZvKf0A3Aht2MTGF4GLI8190kaKy
         MHg5uuKXPhRiAo/J4m8IR4SCqM+pdDq3diKo55CHlpnTiuPyJ9oqbb/np64/crfPc3eC
         TVVA==
X-Gm-Message-State: APjAAAUlswXMPW2SVABDFOdmHaUXYvWUbmOVJm6To048lasr6c9dz1e0
        q7ifHYGUYDMisfxcEjjUhtHvHcY/Sas=
X-Google-Smtp-Source: APXvYqwG6VZNk5gs8me+XTWxpyUGLZixqWnTV/cUhWJgRdFRXZCEB9S6Ar6SNZwqrJMl/bEzyJTAnQ==
X-Received: by 2002:aca:5b84:: with SMTP id p126mr726048oib.4.1569254416989;
        Mon, 23 Sep 2019 09:00:16 -0700 (PDT)
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com. [209.85.210.49])
        by smtp.gmail.com with ESMTPSA id t30sm4121571otj.40.2019.09.23.09.00.15
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Sep 2019 09:00:16 -0700 (PDT)
Received: by mail-ot1-f49.google.com with SMTP id c10so12553244otd.9
        for <devicetree@vger.kernel.org>; Mon, 23 Sep 2019 09:00:15 -0700 (PDT)
X-Received: by 2002:a05:6830:454:: with SMTP id d20mr471097otc.63.1569254415765;
 Mon, 23 Sep 2019 09:00:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190922102341.GO25745@shell.armlinux.org.uk> <E1iBz55-0008Mj-CX@rmk-PC.armlinux.org.uk>
In-Reply-To: <E1iBz55-0008Mj-CX@rmk-PC.armlinux.org.uk>
From:   Li Yang <leoyang.li@nxp.com>
Date:   Mon, 23 Sep 2019 11:00:07 -0500
X-Gmail-Original-Message-ID: <CADRPPNT-hKbO_8Y0PKg-FLsJ_GKE2nbZob6BGagpATMyYPdNsw@mail.gmail.com>
Message-ID: <CADRPPNT-hKbO_8Y0PKg-FLsJ_GKE2nbZob6BGagpATMyYPdNsw@mail.gmail.com>
Subject: Re: [PATCH 3/3] arm64: dts: mark lx2160a esdhc controllers dma coherent
To:     Russell King <rmk+kernel@armlinux.org.uk>
Cc:     Robin Murphy <robin.murphy@arm.com>,
        dann frazier <dann.frazier@canonical.com>,
        Will Deacon <will.deacon@arm.com>,
        Nicolin Chen <nicoleotsuka@gmail.com>,
        "Y.b. Lu" <yangbo.lu@nxp.com>, Christoph Hellwig <hch@lst.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Sep 22, 2019 at 2:26 PM Russell King <rmk+kernel@armlinux.org.uk> wrote:
>
> The LX2160A esdhc controllers are setup by the driver to be DMA
> coherent, but without marking them as such in DT, Linux thinks they
> are not.  This can lead to random sporadic DMA errors, even to the
> extent of preventing boot, such as:
>
> mmc0: ADMA error
> mmc0: sdhci: ============ SDHCI REGISTER DUMP ===========
> mmc0: sdhci: Sys addr:  0x00000000 | Version:  0x00002202
> mmc0: sdhci: Blk size:  0x00000008 | Blk cnt:  0x00000001
> mmc0: sdhci: Argument:  0x00000000 | Trn mode: 0x00000013
> mmc0: sdhci: Present:   0x01f50008 | Host ctl: 0x00000038
> mmc0: sdhci: Power:     0x00000003 | Blk gap:  0x00000000
> mmc0: sdhci: Wake-up:   0x00000000 | Clock:    0x000040d8
> mmc0: sdhci: Timeout:   0x00000003 | Int stat: 0x00000001
> mmc0: sdhci: Int enab:  0x037f108f | Sig enab: 0x037f108b
> mmc0: sdhci: ACmd stat: 0x00000000 | Slot int: 0x00002202
> mmc0: sdhci: Caps:      0x35fa0000 | Caps_1:   0x0000af00
> mmc0: sdhci: Cmd:       0x0000333a | Max curr: 0x00000000
> mmc0: sdhci: Resp[0]:   0x00000920 | Resp[1]:  0x001d8a33
> mmc0: sdhci: Resp[2]:   0x325b5900 | Resp[3]:  0x3f400e00
> mmc0: sdhci: Host ctl2: 0x00000000
> mmc0: sdhci: ADMA Err:  0x00000009 | ADMA Ptr: 0x000000236d43820c
> mmc0: sdhci: ============================================
> mmc0: error -5 whilst initialising SD card
>
> These are caused by the device's descriptor fetch hitting speculatively
> loaded CPU cache lines that the CPU does not see through the normal,
> non-cacheable DMA coherent mapping that it uses for non-coherent
> devices.
>
> DT and the device must agree wrt whether the device is DMA coherent or
> not.
>
> Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>

Acked-by: Li Yang <leoyang.li@nxp.com>

> ---
>  arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
> index 36b153e3da47..508af23edef0 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
> +++ b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
> @@ -593,6 +593,7 @@
>                         reg = <0x0 0x2140000 0x0 0x10000>;
>                         interrupts = <0 28 0x4>; /* Level high type */
>                         clocks = <&clockgen 4 1>;
> +                       dma-coherent;
>                         voltage-ranges = <1800 1800 3300 3300>;
>                         sdhci,auto-cmd12;
>                         little-endian;
> @@ -605,6 +606,7 @@
>                         reg = <0x0 0x2150000 0x0 0x10000>;
>                         interrupts = <0 63 0x4>; /* Level high type */
>                         clocks = <&clockgen 4 1>;
> +                       dma-coherent;
>                         voltage-ranges = <1800 1800 3300 3300>;
>                         sdhci,auto-cmd12;
>                         broken-cd;
> --
> 2.7.4
>
