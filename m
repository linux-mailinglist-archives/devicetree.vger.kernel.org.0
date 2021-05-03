Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D305F371128
	for <lists+devicetree@lfdr.de>; Mon,  3 May 2021 07:06:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232565AbhECFHd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 May 2021 01:07:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38902 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229462AbhECFHc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 May 2021 01:07:32 -0400
Received: from mail-io1-xd34.google.com (mail-io1-xd34.google.com [IPv6:2607:f8b0:4864:20::d34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 03FB7C061756
        for <devicetree@vger.kernel.org>; Sun,  2 May 2021 22:06:40 -0700 (PDT)
Received: by mail-io1-xd34.google.com with SMTP id z14so3145368ioc.12
        for <devicetree@vger.kernel.org>; Sun, 02 May 2021 22:06:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=siZxirsKcvAyDsxwYv2Y0WOcvC8VgXLaF+KpmP1I61A=;
        b=mgS0glfnCT8eoMAEyZGezk85iJY7xyPQvKSfM5A9XtRTcW3dgMjOGbMHKPIE5fkok0
         p1WK5h3vXYXscSt46dYI3bmRSNiP0coNcJlGlZtzv74usrebeO0DsXBHxQpuAYXsjWX2
         81WuziISp7m7FqtuFssOmD0+g0Ih617T5D+Wk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=siZxirsKcvAyDsxwYv2Y0WOcvC8VgXLaF+KpmP1I61A=;
        b=BcsFT9yyVOioOpLA8acR5PvHO8pmocLcVRYV1cca21TfmBZ6ee2XIO4javqI7H1uSH
         3B00IL9aSo02Q4LmZVw8w4NZ+boI5ksW7MaL7duJaUxkjVcPPgbixSFFXnkLpbdQqyeF
         h8/HQr6BJkskgX1pjvDSnLxCYtPdKl8pIckRF+O3ivigvpd+YTdU2kXWmIt9wATbRCjw
         Pq0BK86i/mS5V/pKx7vI6gjFi4gmDzLdnZVfY3gOSRkO44m3Cq+vLl/s3cy0TV+zXtBU
         suGEri+ZG5rk1RNonT/l9aas8Le/mg+T9NWmIPTvH11Cojpm0wnYwMFPRQF4xicAyFfo
         eVWg==
X-Gm-Message-State: AOAM530Rx9VYWnbzomqD6/fWIaZ9kHZU0XAfLN4BWNEpKrtJj0FKhxlM
        j3Ts78IW9TrNxi+Cf7mrR2pgm3GKPuhZoDICYrsVVg==
X-Google-Smtp-Source: ABdhPJzn7Y0sAseQkQfOM+fsmzHK9fRfrpX2TeHpHY9qrHf8bXHvuPgZryeTezCNykMdNGD+4wYQGXMrCwf6UBCLsoc=
X-Received: by 2002:a05:6638:f11:: with SMTP id h17mr5692188jas.102.1620018399221;
 Sun, 02 May 2021 22:06:39 -0700 (PDT)
MIME-Version: 1.0
References: <20210423065327.1596075-1-hsinyi@chromium.org> <846d2a7a-d9c2-7d9e-9d7e-843ff604be44@collabora.com>
In-Reply-To: <846d2a7a-d9c2-7d9e-9d7e-843ff604be44@collabora.com>
From:   Hsin-Yi Wang <hsinyi@chromium.org>
Date:   Mon, 3 May 2021 13:06:13 +0800
Message-ID: <CAJMQK-iUzarwbvY3R-ezZWmZaDK58JzhEtzG+uyuZAJbsKmE1g@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: mt8183: add mediatek,gce-events in mutex
To:     Enric Balletbo i Serra <enric.balletbo@collabora.com>
Cc:     Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Devicetree List <devicetree@vger.kernel.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        lkml <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Apr 23, 2021 at 9:00 PM Enric Balletbo i Serra
<enric.balletbo@collabora.com> wrote:
>
> Hi Hsin-Yi,
>
> Thank you for your patch.
>
> On 23/4/21 8:53, Hsin-Yi Wang wrote:
> > mediatek,gce-events is read by mutex node.
> >
> > Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
>
> Although I know this property is used and needed I didn't find documentation
> about it. It would be really nice document in the bindings this mediatek property.
>
> In any case this patch LGTM, so
>
> Reviewed-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
>

I added the bindings in v2, thanks.

> > ---
> >  arch/arm64/boot/dts/mediatek/mt8183.dtsi | 2 ++
> >  1 file changed, 2 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> > index c5e822b6b77a..cf22d71161e5 100644
> > --- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> > +++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> > @@ -1250,6 +1250,8 @@ mutex: mutex@14016000 {
> >                       reg = <0 0x14016000 0 0x1000>;
> >                       interrupts = <GIC_SPI 217 IRQ_TYPE_LEVEL_LOW>;
> >                       power-domains = <&spm MT8183_POWER_DOMAIN_DISP>;
> > +                     mediatek,gce-events = <CMDQ_EVENT_MUTEX_STREAM_DONE0>,
> > +                                           <CMDQ_EVENT_MUTEX_STREAM_DONE1>;
> >               };
> >
> >               larb0: larb@14017000 {
> >
