Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4CFF83D57AE
	for <lists+devicetree@lfdr.de>; Mon, 26 Jul 2021 12:41:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232274AbhGZKAb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Jul 2021 06:00:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33154 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231639AbhGZKAb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Jul 2021 06:00:31 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E8C07C061760
        for <devicetree@vger.kernel.org>; Mon, 26 Jul 2021 03:40:59 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id r26so14604623lfp.5
        for <devicetree@vger.kernel.org>; Mon, 26 Jul 2021 03:40:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=mp+ljmBlWVJ3FcF8TzFJ/v6DBJnSfIezbeTpHeoDqRs=;
        b=i/IKSBgxKVAztTwiTtgjoROmNn7HkqaBtbAlNMHjALuMoi7YisCKdKhr5rQB7PewHL
         7V3M1dCz2NHL0LkV8ZUW1DZ3fIR4rWqfqYH5HfKC9+/RUbzmJjoGp7dRFdZp6FI8gxIE
         CBmI26l/Z/HgKqXvubpXWEgOh+/Wn+eteioPQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=mp+ljmBlWVJ3FcF8TzFJ/v6DBJnSfIezbeTpHeoDqRs=;
        b=kKR8wDJi2Fyz7yLePW3j3sHLT1uYS98eYnKGc8NzJ8CkjW1scau1bSlieJuO7k7LNb
         wS4i/hIxBvczftDFZl6EiRsX44d1JU1bkBLdnHrMvs1YWDlk6xys4Vp19cKP4Lj6Ygo7
         gAF3vjtRyOQozJ22VRCauCyDfhllJae3lGuYfQd6gDMkXkMMZDADIKZ6z9t+hEp1Z6if
         XoNotvFBD58hJ6qIpZx7eHXtcV3FyHc+b95h03TlggfacN0rbtR1tbFRX3morHUKgssW
         2ZkjygFCkJl2WmwEfMqPh94w2vU8I3re1bqerpvgjsa1VfJ1SKosiV/hct99sLvtAjIe
         ugqg==
X-Gm-Message-State: AOAM531P4Jd/3OOFfOVzwO5K9KIUszwJRJ05wRM1VD2r7h4/EOfu4mWI
        /Okhw5Gb/oThcPKA1SUd0oVlH9yhmFmxpzCsjXn1dQ==
X-Google-Smtp-Source: ABdhPJybFZceRt4dT8AQ0A07ojtGZyNOuGQJ81eXjR+I+oeShos5q0uB3j62uLw/D28XjBH891o6E+ONKw9ot/Q+4W0=
X-Received: by 2002:a05:6512:3f13:: with SMTP id y19mr12407680lfa.444.1627296058376;
 Mon, 26 Jul 2021 03:40:58 -0700 (PDT)
MIME-Version: 1.0
References: <20210726102442.2119877-1-hsinyi@chromium.org>
In-Reply-To: <20210726102442.2119877-1-hsinyi@chromium.org>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Mon, 26 Jul 2021 18:40:47 +0800
Message-ID: <CAGXv+5FtzyqnHm3sZGQDKPODwcvXafaRO88foBeYnP2Ad7i_4w@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: mt8173: elm: Use aliases to mmc nodes
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

On Mon, Jul 26, 2021 at 6:25 PM Hsin-Yi Wang <hsinyi@chromium.org> wrote:
>
> Use aliases to mmc nodes so the partition name for eMMC and SD card will
> be consistent across boots.

To be honest I think this deserves a bit more pretext:

There used to be no way to specify the order of MMC controllers, and
the numbering was based on how the implementations added the devices.
For Linux, this changed when asynchronous probing was enabled for most
drivers, resulting in mmc device numbers jumping around.

With commit 1796164fac7e ("dt-bindings: mmc: document alias support"),
a way to specify fixed index numbers was provided.


Otherwise,

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>

Same for the mt8183-kukui patch.


> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> ---
> v1->v2: skip unused mmc2.
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
