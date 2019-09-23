Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1D1D8BBDDF
	for <lists+devicetree@lfdr.de>; Mon, 23 Sep 2019 23:27:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390111AbfIWV1M (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Sep 2019 17:27:12 -0400
Received: from mail-vs1-f68.google.com ([209.85.217.68]:43572 "EHLO
        mail-vs1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732345AbfIWV1M (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Sep 2019 17:27:12 -0400
Received: by mail-vs1-f68.google.com with SMTP id b1so10459331vsr.10
        for <devicetree@vger.kernel.org>; Mon, 23 Sep 2019 14:27:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=vHhoKNkWQVSufR3socq4cNGUkfXrLe9oTzZQhchj07M=;
        b=oJ7mFrs+CX8HcCeUoV4cxxIhKHBAgKIptVakUct/KMBnxPRemecLsY/zsxfcjfjWWD
         q3N59EbMs2fjh6/EJEtKiji1eWeaeTnO7jFKvYnDzxHIKaVXs8x1sk8/lPDRZueEwjEs
         X4Q7TaC+k51MWL+E6SoWtKz0NGUWL9dDz+rkawvYChol4Min6XRWH9b7/JZ2OyXgQMbE
         GciNXsttI+1/LOYR9nQha972hQJG7TdsPVlNCuzHgtVB6CvUiQ8hSCgrAg5HYcSjkeTW
         a9ynPr1mGXxip7SZCDIwbwRgO0Ve5otdu+NtgdiJq3Pf42O60Mj3WYSti4tS043dT71R
         WxYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=vHhoKNkWQVSufR3socq4cNGUkfXrLe9oTzZQhchj07M=;
        b=FrGpR3s1DTGod9CP8lRn4OhLps6tKzNA1SnDzqqJV9k4pX6kN1RPm9KGVh+xTgJ22v
         MAfacro1MqbK6xmwLtVHkuWqOX59XnwwLkK7xHBBxm/rjuDFbCcs6RG8j0qqi+qPfR1a
         yt+c+9RYnVYcnKv/nuNytZ+xMQ4ZcBAQi0TgfI1YitV2vigg/6KFjLMyEMz3llya9Rcd
         wi325kTSEMjSJByfuo6g0sXbxW98s6y1LhPBTMLb0asr6L8lEWSHOHrlgM+jgitajlsc
         I1Q73vcjeB6rnyrj/+4VLZ0vpJRVr5ucpAZe0q9AQw1LmRe88+YZYfbJSZj5cNWNL4BS
         TAjA==
X-Gm-Message-State: APjAAAWWyZiSqeakDOKJjAyiYJop56sC3MVL5EpVK80mVzguFeOj7fpE
        eeyilOkH+7zFBTxwvvsWNoStA7l9hyvYUPbsTt285w==
X-Google-Smtp-Source: APXvYqxSg5HVU2OBPLas5RQxs9WB7nMgbaCdCpJnSD0j0TgQb0cn+xS/yZmPUhwvVecDG/FJ7rHDc891MtIOVED4ANs=
X-Received: by 2002:a67:e414:: with SMTP id d20mr775921vsf.191.1569274029637;
 Mon, 23 Sep 2019 14:27:09 -0700 (PDT)
MIME-Version: 1.0
References: <20190922102341.GO25745@shell.armlinux.org.uk> <E1iBz55-0008Mj-CX@rmk-PC.armlinux.org.uk>
In-Reply-To: <E1iBz55-0008Mj-CX@rmk-PC.armlinux.org.uk>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Mon, 23 Sep 2019 23:26:33 +0200
Message-ID: <CAPDyKFpQn+O-M60q-Tc4QOBM+WhFhmnkU6_-t5hnQcndLo==YA@mail.gmail.com>
Subject: Re: [PATCH 3/3] arm64: dts: mark lx2160a esdhc controllers dma coherent
To:     Russell King <rmk+kernel@armlinux.org.uk>
Cc:     Robin Murphy <robin.murphy@arm.com>,
        dann frazier <dann.frazier@canonical.com>,
        Will Deacon <will.deacon@arm.com>,
        Nicolin Chen <nicoleotsuka@gmail.com>,
        "Y.b. Lu" <yangbo.lu@nxp.com>, Christoph Hellwig <hch@lst.de>,
        Mark Rutland <mark.rutland@arm.com>,
        DTML <devicetree@vger.kernel.org>, Li Yang <leoyang.li@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 22 Sep 2019 at 12:29, Russell King <rmk+kernel@armlinux.org.uk> wrote:
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

As I am picking up patch1 and patch2 from this series, I can also help
out and pick up this one, if that is okay by people?

Kind regards
Uffe

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
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
