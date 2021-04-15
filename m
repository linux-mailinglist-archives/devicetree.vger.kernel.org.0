Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 37FE635FEEA
	for <lists+devicetree@lfdr.de>; Thu, 15 Apr 2021 02:30:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231769AbhDOAaD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Apr 2021 20:30:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52340 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231827AbhDOA3k (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Apr 2021 20:29:40 -0400
Received: from mail-vs1-xe31.google.com (mail-vs1-xe31.google.com [IPv6:2607:f8b0:4864:20::e31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8F3D2C061756
        for <devicetree@vger.kernel.org>; Wed, 14 Apr 2021 17:29:16 -0700 (PDT)
Received: by mail-vs1-xe31.google.com with SMTP id e16so10716927vsu.0
        for <devicetree@vger.kernel.org>; Wed, 14 Apr 2021 17:29:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=g04jG3pOIj2iU1jOgXSkod+vrxVk7PMG3fu/GdxV/3E=;
        b=m7jLXuNdoQqiW1vhiOqx9JZldWpfCr2tM6T6SUNB/6B+E7G++lDX+DrUffqv586k0Z
         i6uyw2JqH8WPHi09om/i4AGhyhIaRYVUG0cODXDhKml3wIYftB3dhmlaACu6qAcSnLXW
         0s/J2o6TO0/Y97ZJj/PHsmg2SaxEHceaX9snY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=g04jG3pOIj2iU1jOgXSkod+vrxVk7PMG3fu/GdxV/3E=;
        b=UYqUcFH3RxFOJtGzUctFkXE5wyPeEOMz/VeXmyJMrqlc5I4FSfubZsRWKseuYJkNuP
         twJiouWy6Vdh0f/b2c0K48AUXXkXsMjk/aDEVq9JTv/A+NVU26HvospwJk3ocfaWX+53
         5LsRQcFcZJ9SHz1Hz51qedwngbFCA/ocKgIZA2B+PoUySVgZr1utQdg1nZHmcVXcfvy6
         HBM6Z0tjV5aBYBYp2EF/kAvYtVYB0YjhLFqpnqfgEDCUntmSgeaOxd7q2pW2EOe+ycQl
         daGC6SJodLocU40usWe2j38eyPc42qqk+HgkvidabUJknE08HPnEx8fD9r7sOaV/rYoR
         aKgg==
X-Gm-Message-State: AOAM532lvRhQNA4mxSjK3GNkaB5/4FfAeZpCWtpVGrr4mSuFzT6VRb74
        OniiZYmBf/9QmsXWecWgqd/HiTpiINZuNbH0fG4bnA==
X-Google-Smtp-Source: ABdhPJzvCV/ME7C6NM9bUs6Rkckfe59d8ZUDgrA4dEVtONgDRMxGQqivtrRlmYdfzK0oz7KCD0CasL7u7oR5GN/oErs=
X-Received: by 2002:a67:fb4f:: with SMTP id e15mr499968vsr.21.1618446555817;
 Wed, 14 Apr 2021 17:29:15 -0700 (PDT)
MIME-Version: 1.0
References: <20210414144643.17435-1-matthias.bgg@kernel.org> <20210414144643.17435-3-matthias.bgg@kernel.org>
In-Reply-To: <20210414144643.17435-3-matthias.bgg@kernel.org>
From:   Nicolas Boichat <drinkcat@chromium.org>
Date:   Thu, 15 Apr 2021 08:29:04 +0800
Message-ID: <CANMq1KAxZ+QiRR7LgR22pvhs4us=ne_VtSM-S_byCC0N__6BZA@mail.gmail.com>
Subject: Re: [PATCH 3/3] arm64: dts: mt8183-kukui: fix dtbs_check warnings
To:     matthias.bgg@kernel.org
Cc:     Hsin-Yi Wang <hsinyi@chromium.org>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Fabien Parent <fparent@baylibre.com>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Devicetree List <devicetree@vger.kernel.org>,
        linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
        lkml <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Apr 14, 2021 at 10:46 PM <matthias.bgg@kernel.org> wrote:
>
> From: Matthias Brugger <matthias.bgg@gmail.com>
>
> The dsi children don't have any reg property,

Confused, see below.

> so we don't need address and
> size cells. This makes dtbs_check happy.
>
> CC: Hsin-Yi Wang <hsinyi@chromium.org>
> CC: Enric Balletbo i Serra <enric.balletbo@collabora.com>
> CC: Nicolas Boichat <drinkcat@chromium.org>
> Signed-off-by: Matthias Brugger <matthias.bgg@gmail.com>
>
> ---
>
>  arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
> index ff56bcfa3370..f4dca6a33168 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
> @@ -251,8 +251,7 @@ &cpu7 {
>
>  &dsi0 {
>         status = "okay";
> -       #address-cells = <1>;
> -       #size-cells = <0>;
> +
>         panel: panel@0 {
>                 /* compatible will be set in board dts */
>                 reg = <0>;

^^ isn't that... a reg property?

> --
> 2.30.2
>
