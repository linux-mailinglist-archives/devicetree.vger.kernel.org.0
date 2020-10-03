Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D33AC2825C4
	for <lists+devicetree@lfdr.de>; Sat,  3 Oct 2020 20:03:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725805AbgJCSDo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 3 Oct 2020 14:03:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54626 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725804AbgJCSDn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 3 Oct 2020 14:03:43 -0400
Received: from mail-io1-xd42.google.com (mail-io1-xd42.google.com [IPv6:2607:f8b0:4864:20::d42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 91840C0613D0
        for <devicetree@vger.kernel.org>; Sat,  3 Oct 2020 11:03:43 -0700 (PDT)
Received: by mail-io1-xd42.google.com with SMTP id k25so4948419ioh.7
        for <devicetree@vger.kernel.org>; Sat, 03 Oct 2020 11:03:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=2+0v05qpZEKgjsf+z7HmXm+fOutK98OsEd/RL4Mypfk=;
        b=vF922M3EDtgnTf3xyRO8KHKFZG/4rO36zvGHcZjBgzR/SuvPv74vcpITxP0dY59GPZ
         xd9bdJDd22zyHNSWxc3af32+1He9vJR8YAZZfaKZiUiIUXr0t74Jk48AnQmQ5ytg/sa2
         omZWgsevau3NGV8qWPLwrSQlgKefiprs91omdkqcXV2DtRez4m9cWzQPYIOLKk4EzITJ
         kbZRe5WVCQD6Gto0nundEu8demmWIZIR8A1smUmVHmusZLKfOy6fOunsM0SriziBoIa8
         E4aDdtJ3DPdOccI5J19WYekKzC+cLeAnwjH7mEtxCBH1TDdC9tXq5040FaOgezTfP41E
         uM8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=2+0v05qpZEKgjsf+z7HmXm+fOutK98OsEd/RL4Mypfk=;
        b=QgycoQrwB9FP3L0CGjrPjvDvyL1JU5LkQpMR1+fjl9zEcs3Em42nJchZxvs4yhJ+ky
         yNxAhhBO1qJyX5RMCit1YZEUlxMpKkqx+U/uGjL//OfOkxms5mRRr3gI7V87tm8Q9QIA
         QQNj7nGkif9Jrf5K0MP875Yxt+fAwrCjGPvFf5RNlIiqOcvuHmFUdYHvdiT2uTkJZ4BD
         v8cDIFMPPEj7iQHL6Xiub4zTm86tu7stmsV+QMnX48obpe0AV5j9V82Fe2aaVlCmFBkQ
         QfNEqv39f1+ZY3e3em/GCAxtRnFZM9e7o0WT+JuZXA00D1WqHJniLj1qpqEO+J0+fHjr
         BFdA==
X-Gm-Message-State: AOAM530GIJLx4Eoh/hRupjp+cevAuWTFZ8jqwCqpFKwQaVxQeK9hN/n3
        1DCYP7E5zMe5jfLNVuF/rGrGwXbcrWm2cVY0hJTlfmxjkunQ4Q==
X-Google-Smtp-Source: ABdhPJyRDdMh9YYOIB72s4Edk/JFHL4+AGOpP1XrSOS/qE9ej1jVbCICVT9utxFw7omYqrh2Xq+MP6k+IQTohGf73hw=
X-Received: by 2002:a6b:6a18:: with SMTP id x24mr5702063iog.92.1601748222713;
 Sat, 03 Oct 2020 11:03:42 -0700 (PDT)
MIME-Version: 1.0
References: <20200930155006.535712-1-l.stach@pengutronix.de>
In-Reply-To: <20200930155006.535712-1-l.stach@pengutronix.de>
From:   Adam Ford <aford173@gmail.com>
Date:   Sat, 3 Oct 2020 13:03:32 -0500
Message-ID: <CAHCN7x+UC4Z9p3Y44JfafxoUR7x4gZudm6_ahh20uupZ14wd8A@mail.gmail.com>
Subject: Re: [PATCH 00/11] i.MX8MM power domain support
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Marek Vasut <marex@denx.de>,
        devicetree <devicetree@vger.kernel.org>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        patchwork-lst@pengutronix.de, NXP Linux Team <linux-imx@nxp.com>,
        Sascha Hauer <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Sep 30, 2020 at 10:50 AM Lucas Stach <l.stach@pengutronix.de> wrote:
>
> Hi all,
>
> this adds power domain support for the i.MX8MM to the existing GPCv2
> driver. It is not complete yet, as it is still missing the VPU and
> display power domains, as those require support for the BLK_CTL
> regions of the VPUMIX and DISPLAYMIX domains. A Linux driver for
> those regions on the i.MX8MP is currently under development and we
> plan to use this as a template for the i.MX8MM when the dust has
> settled. The changes in this series have been made with this in
> mind, so once the BLK_CTL driver exists it should be a matter of
> hooking things together via DT, with no further changes required on
> the GPCv2 driver side (famous last words).
>
> Special thanks to Marek Vasut who helped with testing and debugging
> of early versions of this code.
>
> Regards,
> Lucas
>
> Lucas Stach (11):
>   soc: imx: gpcv2: move to more ideomatic error handling in probe
>   soc: imx: gpcv2: move domain mapping to domain driver probe
>   soc: imx: gpcv2: split power up and power down sequence control
>   soc: imx: gpcv2: wait for ADB400 handshake
>   soc: imx: gpcv2: add runtime PM support for power-domains
>   soc: imx: gpcv2: allow domains without power-sequence control
>   soc: imx: gpcv2: add support for optional resets
>   dt-bindings: add defines for i.MX8MM power domains
>   soc: imx: gpcv2: add support for i.MX8MM power domains
>   arm64: dts: imx8mm: add GPC node and power domains
>   arm64: dts: imx8mm: put USB controllers into power-domains

I fully support trying to get this done.  I tried to push something
like this before, but I was turned down by someone at NXP [1].  I have
both a Mini and Nano board at my disposal, so if Nano support isn't
there yet, and this driver patch gets accepted, I'll gladly work to
help and/or test functionality.

[1] - https://lkml.org/lkml/2020/4/30/540

adam

>
>  .../bindings/power/fsl,imx-gpcv2.yaml         |   8 +
>  arch/arm64/boot/dts/freescale/imx8mm.dtsi     |  59 +++
>  drivers/soc/imx/gpcv2.c                       | 501 +++++++++++++++---
>  include/dt-bindings/power/imx8mm-power.h      |  22 +
>  4 files changed, 516 insertions(+), 74 deletions(-)
>  create mode 100644 include/dt-bindings/power/imx8mm-power.h
>
> --
> 2.20.1
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
