Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A9C083E8C56
	for <lists+devicetree@lfdr.de>; Wed, 11 Aug 2021 10:49:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236181AbhHKIt2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Aug 2021 04:49:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32956 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233053AbhHKIt2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 Aug 2021 04:49:28 -0400
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5AE51C061765
        for <devicetree@vger.kernel.org>; Wed, 11 Aug 2021 01:49:04 -0700 (PDT)
Received: by mail-lj1-x231.google.com with SMTP id h11so3291342ljo.12
        for <devicetree@vger.kernel.org>; Wed, 11 Aug 2021 01:49:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=JDzCwx530Uv8LE9Hg8k3gK4gX2isyfl8rKYS+HUnkVk=;
        b=sFPNyBA3VF6paJeXHKJGiJN+Sh1GjSKbCHnngcFcrnT6aiT7iW9rGuN4Xsb21ft9Ma
         T9/jSYq2dJBnAcpGVMVLvcjhtxLe6R5AQttb9yzE64d2XIUvUwUHb0MvTYfeldRrJu4j
         aRrdXj3HskgcDrSEFBjyV7LBoctEoNNhSHEUCbwE8Xz6lUfoCKic4cYmh0BMOMb5ow8v
         Vszgor5Hf8sUoNHIa3FgvoL/d94zBWOeYkpxKAkN2lItJBfUiwSu9LMs9cAFkfI1qWST
         p2iHlEVXpW6omG2OORWBoQ/Ug3vBXorseCLE3nxaDI1BB9L/V1UWVy1loGcKl5t1Dmlm
         fHqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=JDzCwx530Uv8LE9Hg8k3gK4gX2isyfl8rKYS+HUnkVk=;
        b=BGlEuE96Ggqb9GdKE0uRrHm8D9x9FgQ8zwVX78O9nmiHAi8wRshEnBTsn4Qg0AN/M3
         R07duq979FWn3to0ZYxFJ+zQwaIPIHqCLYOP0Rn4CphtW4xZtYUFshAHHoIy+gL6Fwqc
         cjS3zhYIf64WnnBr4w/3BUbZ2BfG6Nu5hQM10zkFMzYNGrJaVfr3kExv/lSngZJyq6Hb
         eSHhZD4H5FOrRqlNZ7FzC16sTx4OUJams+QAY9sKatBjvfAdZTu417qTVIH4mz2fctpI
         XasYYOqNSbN3ks6a74dv+bSszroZMMSUbdD895T64oVWL0OcIAGyahP5h0WQ7ZYBJZCV
         wNhg==
X-Gm-Message-State: AOAM532uGQjFIPm8dFl33lRlQahGxAd5ES1+z3g2rtA9Nd8Zt2VPyB8v
        W1yqMiPcXHNLDKtJUIc6PnQ3muS/5piZqIvDVFl7Ow==
X-Google-Smtp-Source: ABdhPJwCxS4RyJPQYMtZ37IXjlOSjy5gDhIzOTNQJe7kYmuLW56om7abo3l/tT9UNYV9boQQa6wawGYkS0DjsBv4nS8=
X-Received: by 2002:a05:651c:327:: with SMTP id b7mr22987076ljp.74.1628671742768;
 Wed, 11 Aug 2021 01:49:02 -0700 (PDT)
MIME-Version: 1.0
References: <20210804044033.3047296-1-hsinyi@chromium.org> <d48087c2-ddff-0c58-c7e6-a0ba526a393f@gmail.com>
In-Reply-To: <d48087c2-ddff-0c58-c7e6-a0ba526a393f@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 11 Aug 2021 10:48:51 +0200
Message-ID: <CACRpkdb39r+AraKaAocB2qX+eLDdRvx3zFyvf0nqvEwFg_QdXg@mail.gmail.com>
Subject: Re: [PATCH v4 1/3] arm: dts: mt8135: Move pinfunc to include/dt-bindings/pinctrl
To:     Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Hsin-Yi Wang <hsinyi@chromium.org>,
        Rob Herring <robh+dt@kernel.org>,
        Enric Balletbo Serra <eballetbo@gmail.com>,
        Sean Wang <sean.wang@kernel.org>,
        Andy Teng <andy.teng@mediatek.com>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Aug 5, 2021 at 11:02 AM Matthias Brugger <matthias.bgg@gmail.com> wrote:

> Hi Linus,
>
> On 04/08/2021 06:40, Hsin-Yi Wang wrote:
> > Move mt8135-pinfunc.h into include/dt-bindings/pinctrl so that we can
> > include it in yaml examples.
> >
> > Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> > ---
> >  arch/arm/boot/dts/mt8135.dtsi                                   | 2 +-
> >  .../boot/dts => include/dt-bindings/pinctrl}/mt8135-pinfunc.h   | 0
> >  2 files changed, 1 insertion(+), 1 deletion(-)
> >  rename {arch/arm/boot/dts => include/dt-bindings/pinctrl}/mt8135-pinfunc.h (100%)
> >
>
> If that's fine with you, I'll take patch 1+2 through my tree. IMHO the best for
> patch 3 would be to go through your tree.
>
> Sounds good?

It can't be done that way. Patch 3 depends on patch 1+2 to get the
include file into the right place for patch 3/3 to compile. (YAML
check.)

I will apply all three and then provide an immutable branch that you
can pull in to your tree as well. This is usually what we do with
cross-tree dependencies.

Yours,
Linus Walleij
