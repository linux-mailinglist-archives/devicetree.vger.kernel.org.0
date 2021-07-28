Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F17193D8641
	for <lists+devicetree@lfdr.de>; Wed, 28 Jul 2021 05:51:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233717AbhG1Dvt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Jul 2021 23:51:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33774 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233609AbhG1Dvs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Jul 2021 23:51:48 -0400
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF615C061757
        for <devicetree@vger.kernel.org>; Tue, 27 Jul 2021 20:51:46 -0700 (PDT)
Received: by mail-lj1-x22f.google.com with SMTP id l4so1425448ljq.4
        for <devicetree@vger.kernel.org>; Tue, 27 Jul 2021 20:51:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=dPiFfQJ2xtTLnyk6Fk4XG5GeGV4EVc1tB7y8d6OKc1k=;
        b=CMH3lDIxw0ApJq8MbTN7wpeHcbI0wKpG+rv+G9q7EMMsNfIYa7vfGBD/zFBcglKwY7
         0aikxbaN2vYUDBqiDcGTqfslu/fjCteLT40QMxNONyKvmnjjtnYJ+iXiMQobLSn0Oqgp
         qfveUsNA9LLalicPs0E33qz1lBrucqDUCI/OM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=dPiFfQJ2xtTLnyk6Fk4XG5GeGV4EVc1tB7y8d6OKc1k=;
        b=nPnfHNUa5MmAzurHFqCkTfcyIR3ovenRrt+dGN2+/im59n7YMxYfzXQEEdIfMnRkQz
         a6MESNxzwtEbM+kCOs1EDnesCoJKJ1kgGVOm1ZZkmKRwVuqmWAUsxR0BskvrzkvadTGq
         AfTQr5Q3ZaL2gMaObQwFg3HLO7RgNsLINWy5iLMWch98gKLSLofqGm20ge1QGAU1P6k2
         jl4DGqsoWecu7e8OvCxH2DkLwZcYnGjkSuwM7Gd29reG0QBXABZ/kjikRqT9Q3k4+c38
         gHeQZA386SKYLLB+A2wjbUWU/4sM3ViIGc30a1QrBS2HF40eLQCaxAaKBrIFQmECtRqg
         Ijow==
X-Gm-Message-State: AOAM533SWFtIDgl1wFE8UtyzLqp5qnyZcIFEXHHbBMj44pZJTMfUOF15
        O0b2d9yVnNaNw15YyS0kI5PJNtCPmR36a1xocz8MHg==
X-Google-Smtp-Source: ABdhPJzLWnYQVyj6OrEVmREn7Y+WP6t6ZFo2i0yfvhdDJ2Xe5swRDPGFoXEtohPBSMwNRt/CiJ6vviRwAgzc+JKy/As=
X-Received: by 2002:a2e:9215:: with SMTP id k21mr18526007ljg.91.1627444305147;
 Tue, 27 Jul 2021 20:51:45 -0700 (PDT)
MIME-Version: 1.0
References: <20210727112208.2508675-1-hsinyi@chromium.org> <20210727112208.2508675-2-hsinyi@chromium.org>
In-Reply-To: <20210727112208.2508675-2-hsinyi@chromium.org>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Wed, 28 Jul 2021 11:51:34 +0800
Message-ID: <CAGXv+5Hua63GZ839kQEscAXBeKPYTv_63E2pYNBw4jXz1B_PWA@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: mt8173: elm: Use aliases to mmc nodes
To:     Hsin-Yi Wang <hsinyi@chromium.org>
Cc:     Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Enric Balletbo Serra <eballetbo@gmail.com>,
        Eizan Miyamoto <eizan@chromium.org>,
        Devicetree List <devicetree@vger.kernel.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

The subject for this patch wasn't tagged with v3. This might cause some
issues with scripted tooling.

On Tue, Jul 27, 2021 at 7:22 PM Hsin-Yi Wang <hsinyi@chromium.org> wrote:
>
> fa2d0aa96941 ("mmc: core: Allow setting slot index via device tree alias")
> allows the use of aliases to number SD/MMC slots. This patch use aliases
> to mmc nodes so the partition name for eMMC and SD card will be consistent
> across boots.

Device trees are supposed to be a description of the hardware and
therefore should be implementation agnostic. The commit logs should be
the same, unless the implementation details influenced the changes made.

The MMC binding change already specified that aliases provide a way to
assign fixed mmcN indices, so the log should reference the binding
change commit instead.

ChenYu

> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
> ---
> v2->v3: add more commit message.
> ---
>  arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi b/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
> index 21452c51a20a8..d5a2cad39c9c7 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
> @@ -10,6 +10,12 @@
>  #include "mt8173.dtsi"
>
>  / {
> +       aliases {
> +               mmc0 = &mmc0;
> +               mmc1 = &mmc1;
> +               mmc2 = &mmc3;
> +       };
> +
>         memory@40000000 {
>                 device_type = "memory";
>                 reg = <0 0x40000000 0 0x80000000>;
> --
> 2.32.0.432.gabb21c7263-goog
>
>
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek
