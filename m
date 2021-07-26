Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7FC6D3D573F
	for <lists+devicetree@lfdr.de>; Mon, 26 Jul 2021 12:16:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233162AbhGZJf6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Jul 2021 05:35:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55778 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233035AbhGZJf5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Jul 2021 05:35:57 -0400
Received: from mail-io1-xd2b.google.com (mail-io1-xd2b.google.com [IPv6:2607:f8b0:4864:20::d2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2B782C061757
        for <devicetree@vger.kernel.org>; Mon, 26 Jul 2021 03:16:25 -0700 (PDT)
Received: by mail-io1-xd2b.google.com with SMTP id l126so11023121ioa.12
        for <devicetree@vger.kernel.org>; Mon, 26 Jul 2021 03:16:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=pKm9EcDme8pJHFOXtEbqZSQVHJJ+TbQM1VPZ24DBvwA=;
        b=X+IoIMuJH2ZijTePJyIs6T3oSX69YS0Rj+602X5tzCjx1R7H5deruUXBy88v3d7stV
         sb1n7pGVe21QI9HvlAGYNsQ7Eyg3+ET0x6wnD2ErXuHKI5mWGP7NWYiDZLLNL18AQBTu
         a4w0ONGnjsYzXIt+fiFQIThJpIJbBpxgjYNxA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=pKm9EcDme8pJHFOXtEbqZSQVHJJ+TbQM1VPZ24DBvwA=;
        b=P0lg5FOvH7bE5BuDWFlFy/x7TIyP2oBKiBFYkBa6oigKro/dK4XyC2kXqJnHuDhzkl
         LF/f0DChvAkZVkBFv4DW+EnOJo7lg13mOiuLOlt5O4FXpy3Cs7yGj0nxf2LzyitvNwsc
         7+boH92TRGSmmIz0kRv87pWJBCC/Rb4diyLiO9yGfUlBtWwufHObJekHxAuVz3JPtq8p
         TIuHNzewHrUe/pbBM5FhlqTAlANLsfJXzMR7682qZGBUPbgBBLYYrJwN6kzjzDaLkpE7
         hDxMAJ5/Lij8NNBlDCto5ewsYCvWryLFJ5i88vxuI9GlJfkIPG2IUbbxcAddMkoxj9jq
         8aGA==
X-Gm-Message-State: AOAM530LAyJWmFSjSiwAi6FkUzN4Kp6IXxG9vYiIutVpgdzEjDwyFD0o
        dsb3WaRrKSJrlXTWTbydYSYw+GGVRBwDneau7XfskA==
X-Google-Smtp-Source: ABdhPJyhs6/VJlK39tRjkVThyIrMjZQOguga/L0sVp4xovp5RErc5dbjNDeDpRT7Q/vE8sdHiDz2tR0mQ4+gi3ZYr1E=
X-Received: by 2002:a02:6946:: with SMTP id e67mr15605786jac.4.1627294584585;
 Mon, 26 Jul 2021 03:16:24 -0700 (PDT)
MIME-Version: 1.0
References: <20210726050831.1917982-1-hsinyi@chromium.org> <CAFqH_53zJp7ejwXn3qqiVPnoTy6W3WonvvDxsZDCjmaQA57h6A@mail.gmail.com>
In-Reply-To: <CAFqH_53zJp7ejwXn3qqiVPnoTy6W3WonvvDxsZDCjmaQA57h6A@mail.gmail.com>
From:   Hsin-Yi Wang <hsinyi@chromium.org>
Date:   Mon, 26 Jul 2021 18:15:58 +0800
Message-ID: <CAJMQK-jkUCVgRXL5dcDUd6vpEojEG6heuAXgvbYwikz_sPjnHQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: mt8183: kukui: Use aliases to mmc nodes
To:     Enric Balletbo Serra <eballetbo@gmail.com>
Cc:     Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Eizan Miyamoto <eizan@chromium.org>,
        devicetree <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jul 26, 2021 at 5:32 PM Enric Balletbo Serra
<eballetbo@gmail.com> wrote:
>
> Hi Hsin-Yi,
>
> Thank you for the patch.
>
> Missatge de Hsin-Yi Wang <hsinyi@chromium.org> del dia dl., 26 de jul.
> 2021 a les 7:08:
> >
> > Use aliases to mmc nodes so the partition name for eMMC and SD card will
> > be consistent across boots.
> >
>
> This definitely helps with my "troubles" flashing the kernel to the
> correct place" so
>
> > Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
>
> Tested-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
>
> Btw, I think that a similar patch should be send for Elm, could you
> take care of it?
>
It's sent here:
https://patchwork.kernel.org/project/linux-mediatek/patch/20210726101451.2118076-1-hsinyi@chromium.org/

Thanks!

> Thanks,
>   Enric
>
> > ---
> >  arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi | 2 ++
> >  1 file changed, 2 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
> > index ae549d55a94fc..ed499e17b6570 100644
> > --- a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
> > +++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
> > @@ -13,6 +13,8 @@
> >  / {
> >         aliases {
> >                 serial0 = &uart0;
> > +                mmc0 = &mmc0;
> > +                mmc1 = &mmc1;
> >         };
> >
> >         chosen {
> > --
> > 2.32.0.432.gabb21c7263-goog
> >
