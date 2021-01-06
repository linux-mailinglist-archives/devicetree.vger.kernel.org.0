Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 05B1A2EBC6B
	for <lists+devicetree@lfdr.de>; Wed,  6 Jan 2021 11:35:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725903AbhAFKem (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Jan 2021 05:34:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48610 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725815AbhAFKel (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Jan 2021 05:34:41 -0500
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 40000C061357
        for <devicetree@vger.kernel.org>; Wed,  6 Jan 2021 02:34:01 -0800 (PST)
Received: by mail-ej1-x62b.google.com with SMTP id w1so4284716ejf.11
        for <devicetree@vger.kernel.org>; Wed, 06 Jan 2021 02:34:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=KZLS3GwiODwj6bhvlM/cI4czPqdY6E5oB3XqrOUCP24=;
        b=RbwFT+TZDPoBoKI++rqmdGdULJfUMv+5f1YN7AUoJV4T45HCNlzTSV8hmc/2AUgJc6
         ZGq5Xc0h61zVo23ec+vNEotnx97KfvdjtGEKdFiwZTKy1xkLXU5iB/2orgq1ohRnKIUS
         2Hy+tG9pDKjALRd11D0OG9VsYkCd7s4MMi/nqt2jUX1StqJouv8j5KylKaVn1GuwdR8n
         fNKW2P+0G3lwwcaebEbn/IEGEmE8ppziQZg0+i+2a7HYYueGT+nXiZTps9Ia9q1RaXQZ
         pFSeonhcwcOye+4kONb15+rz2VllwkRuJhN0R1KeLjhuALm7zSIaEFjxXPa0XihBg80N
         R/yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=KZLS3GwiODwj6bhvlM/cI4czPqdY6E5oB3XqrOUCP24=;
        b=qOMW9x9ZjdV8BT6Bx5Ti5INExDtwQSTZV2tS95G1f7qEB+K0w039zEDWPOEq8CFTeq
         qgJxpR4YmpXK0LfMt3NsTCwL2CGJ8GeX6qFd+ntUJsiA84QlJeBp7WcU4X4Ey73IAsHV
         1vRGY+dZfD9W95RnhZKhnO2iOyrkXD0RawJ358wFBMHkG7nrrGUFIx8JnEOrXfjihAV0
         io0RcnFxX0H1n6DqTFVDOmIuh2vhZDmVQVoY51ptmekppNXWjolIDaIVveZt5quJM1qU
         CQ2IW99PD8azQiiTIuNrJh/a/Dl+Z9vpDTaYeGrnG+zQa2vBM8XXhZVIEC7gu1t24t60
         XAog==
X-Gm-Message-State: AOAM533F9OV8YDXO3ztvy4ULWchJNmnyrq5Zzb7zh2pM52tXie4PpSGU
        fS5BHiaDOdkONPuvoYpmZwvlYktL0LmiYnvc78L8/S6q9LbmIw==
X-Google-Smtp-Source: ABdhPJymlRCF8e5mJkc/8ES0FTZIpecIS8e1CElK4WzZZMiOAMJASuBV0P8dEitYm35SwZgRVPneHkdX1QQG8e4PVro=
X-Received: by 2002:a17:906:73d8:: with SMTP id n24mr2404262ejl.14.1609929239943;
 Wed, 06 Jan 2021 02:33:59 -0800 (PST)
MIME-Version: 1.0
References: <20201201181406.2371881-1-nobuhiro1.iwamatsu@toshiba.co.jp>
In-Reply-To: <20201201181406.2371881-1-nobuhiro1.iwamatsu@toshiba.co.jp>
From:   Bartosz Golaszewski <brgl@bgdev.pl>
Date:   Wed, 6 Jan 2021 11:33:49 +0100
Message-ID: <CAMRc=MeV8+rpoLkdbqzsqOmcsTY1g++B+cqDmSAWQP=gGGduWQ@mail.gmail.com>
Subject: Re: [PATCH v3 0/4] gpio: visconti: Add Toshiba Visconti GPIO support
To:     Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        devicetree <devicetree@vger.kernel.org>,
        punit1.agrawal@toshiba.co.jp,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        yuji2.ishikawa@toshiba.co.jp,
        Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Dec 1, 2020 at 10:16 AM Nobuhiro Iwamatsu
<nobuhiro1.iwamatsu@toshiba.co.jp> wrote:
>
> Hi,
>
> This series is the GPIO driver for Toshiba's ARM SoC, Visconti[0].
> This provides DT binding documentation, device driver, MAINTAINER files, =
and updates to DT files.
>
> Update:
>
>   dt-bindings: gpio: Add bindings for Toshiba Visconti GPIO Controller:
>     v2 -> v3: Fix dtschema/dtc warnings.
>       dtschema/dtc warnings/errors:
>         Documentation/devicetree/bindings/gpio/toshiba,gpio-visconti.exam=
ple.dt.yaml: gpio@28020000: interrupts: [[0, 24, 4], [0, 25, 4], [0, 26, 4]=
, [0, 27, 4], [0, 28, 4], [0, 29, 4], [0, 30, 4], [0, 31, 4], [0, 32, 4], [=
0, 33, 4], [0, 34, 4], [0, 35, 4], [0, 36, 4], [0, 37, 4], [0, 38, 4], [0, =
39, 4]] is too short
>           From schema: Documentation/devicetree/bindings/gpio/toshiba,gpi=
o-visconti.yaml
>     v1 -> v2: Fix typo.
>
>   gpio: visoconti: Add Toshiba Visconti GPIO support:
>     v2 -> v3: Add select GPIO_GENERIC
>               Use genric MMIO GPIO library
>               Use bgpio_init() as initialized the generic helpers.
>               Use irqchip template instead of gpiochip_irqchip_add().
>     v1 -> v2: No update
>
>   MAINTAINERS: Add entries for Toshiba Visconti GPIO controller:
>     v2 -> v3: No update
>     v1 -> v2: No update
>
>   arm: dts: visconti: Add DT support for Toshiba Visconti5 GPIO driver:
>     v2 -> v3: Fix compatible string.
>     v1 -> v2: No update
>
> Best regards,
>   Nobuhiro
>

Nobuhiro,

In the future please use the get_maintainers.pl script - I have never
been Cc'ed on this series and I would have ignored it if Linus W
hadn't brought it to my attention.

Bartosz
