Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F1E641C3100
	for <lists+devicetree@lfdr.de>; Mon,  4 May 2020 03:21:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726404AbgEDBVl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 3 May 2020 21:21:41 -0400
Received: from conssluserg-02.nifty.com ([210.131.2.81]:28467 "EHLO
        conssluserg-02.nifty.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726421AbgEDBVl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 3 May 2020 21:21:41 -0400
Received: from mail-vk1-f177.google.com (mail-vk1-f177.google.com [209.85.221.177]) (authenticated)
        by conssluserg-02.nifty.com with ESMTP id 0441LNqc024410
        for <devicetree@vger.kernel.org>; Mon, 4 May 2020 10:21:24 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com 0441LNqc024410
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
        s=dec2015msa; t=1588555284;
        bh=jEtAs9O7CmSkCUr9JGM4aFvI0GTrsU70SWfup1ULHCY=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=0MW5hOw6oQfy1tSmTDfMhhzPm4PRXm34oTOM5b5JOncMhIK+QOK1Ato0vA6kguG/Q
         y34GLUejRhh9h/H4uSskWAeK6NuTUuUkFdgj5BMu6RfT0X/Ir1ige73fjOuPPuC3Fy
         onP+pkiaPF75Cgz5BPMfDUXQnUosY6aBZac9XOLzyvuMqYfLkfMK+EbxVvhBkIprgb
         sT12uZ1L3phpwwhy8A94DkmKR86GFC8MqxHw4CC9SQ+WO2FjtM4Hy8/VQ49bSVn9zE
         4Oc/B39E/kGRjNov/V7867E5w+akCIU2rzPOvhcxR0Gjrwh6XpgNg10yWsdCcYfYPv
         y3eq5IQAysTaw==
X-Nifty-SrcIP: [209.85.221.177]
Received: by mail-vk1-f177.google.com with SMTP id n207so4221668vkf.8
        for <devicetree@vger.kernel.org>; Sun, 03 May 2020 18:21:24 -0700 (PDT)
X-Gm-Message-State: AGi0Pub+lPYFC4fYM/jnC11f0WHKqNAO3WskXPkDS3c8phzc0ENTbrlg
        gdopNLpW2R6WTbC+iOxbqf3j1Kw92Kn1/akdoVM=
X-Google-Smtp-Source: APiQypJH8KPh7CLSrpYvv1LKW7i4PPU1ROFc8mTCpBhmgvf8qd26fclC7UZdTXqHU5Gw3s9HLM7vnkzJcyOntmBEtTU=
X-Received: by 2002:a1f:5381:: with SMTP id h123mr9028736vkb.66.1588555283173;
 Sun, 03 May 2020 18:21:23 -0700 (PDT)
MIME-Version: 1.0
References: <1585878187-8131-1-git-send-email-hayashi.kunihiko@socionext.com> <1585878187-8131-4-git-send-email-hayashi.kunihiko@socionext.com>
In-Reply-To: <1585878187-8131-4-git-send-email-hayashi.kunihiko@socionext.com>
From:   Masahiro Yamada <masahiroy@kernel.org>
Date:   Mon, 4 May 2020 10:20:47 +0900
X-Gmail-Original-Message-ID: <CAK7LNATSHYG7UgLoVAXwdi6y8mH+Rbq-y9jT1e6FmaBWYUWUBg@mail.gmail.com>
Message-ID: <CAK7LNATSHYG7UgLoVAXwdi6y8mH+Rbq-y9jT1e6FmaBWYUWUBg@mail.gmail.com>
Subject: Re: [PATCH v4 3/5] ARM: dts: uniphier: Add ethernet aliases
To:     Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Masami Hiramatsu <masami.hiramatsu@linaro.org>,
        Jassi Brar <jaswinder.singh@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Apr 3, 2020 at 10:43 AM Kunihiko Hayashi
<hayashi.kunihiko@socionext.com> wrote:
>
> Add an 'aliases' property for ethernet device.
>
> U-boot performs a fix-up of the MAC address and will overwrite the values

U-boot -> U-Boot

> from the Linux devicetree for aliased ethernet device. The MAC address can
> be inherited from u-boot by adding aliases of ethernet devices.

u-boot -> U-Boot

I fixed up those, applied the series.


>
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> ---
>  arch/arm/boot/dts/uniphier-ld6b-ref.dts    | 1 +
>  arch/arm/boot/dts/uniphier-pro4-ace.dts    | 1 +
>  arch/arm/boot/dts/uniphier-pro4-ref.dts    | 1 +
>  arch/arm/boot/dts/uniphier-pro4-sanji.dts  | 1 +
>  arch/arm/boot/dts/uniphier-pxs2-gentil.dts | 1 +
>  arch/arm/boot/dts/uniphier-pxs2-vodka.dts  | 1 +
>  6 files changed, 6 insertions(+)
>
> diff --git a/arch/arm/boot/dts/uniphier-ld6b-ref.dts b/arch/arm/boot/dts/uniphier-ld6b-ref.dts
> index 60994b6..079cadc 100644
> --- a/arch/arm/boot/dts/uniphier-ld6b-ref.dts
> +++ b/arch/arm/boot/dts/uniphier-ld6b-ref.dts
> @@ -29,6 +29,7 @@
>                 i2c4 = &i2c4;
>                 i2c5 = &i2c5;
>                 i2c6 = &i2c6;
> +               ethernet0 = &eth;
>         };
>
>         memory@80000000 {
> diff --git a/arch/arm/boot/dts/uniphier-pro4-ace.dts b/arch/arm/boot/dts/uniphier-pro4-ace.dts
> index 92cc48d..64246fa 100644
> --- a/arch/arm/boot/dts/uniphier-pro4-ace.dts
> +++ b/arch/arm/boot/dts/uniphier-pro4-ace.dts
> @@ -26,6 +26,7 @@
>                 i2c3 = &i2c3;
>                 i2c5 = &i2c5;
>                 i2c6 = &i2c6;
> +               ethernet0 = &eth;
>         };
>
>         memory@80000000 {
> diff --git a/arch/arm/boot/dts/uniphier-pro4-ref.dts b/arch/arm/boot/dts/uniphier-pro4-ref.dts
> index 854f2eb..181442c 100644
> --- a/arch/arm/boot/dts/uniphier-pro4-ref.dts
> +++ b/arch/arm/boot/dts/uniphier-pro4-ref.dts
> @@ -29,6 +29,7 @@
>                 i2c3 = &i2c3;
>                 i2c5 = &i2c5;
>                 i2c6 = &i2c6;
> +               ethernet0 = &eth;
>         };
>
>         memory@80000000 {
> diff --git a/arch/arm/boot/dts/uniphier-pro4-sanji.dts b/arch/arm/boot/dts/uniphier-pro4-sanji.dts
> index dda1a2f..5396556 100644
> --- a/arch/arm/boot/dts/uniphier-pro4-sanji.dts
> +++ b/arch/arm/boot/dts/uniphier-pro4-sanji.dts
> @@ -25,6 +25,7 @@
>                 i2c3 = &i2c3;
>                 i2c5 = &i2c5;
>                 i2c6 = &i2c6;
> +               ethernet0 = &eth;
>         };
>
>         memory@80000000 {
> diff --git a/arch/arm/boot/dts/uniphier-pxs2-gentil.dts b/arch/arm/boot/dts/uniphier-pxs2-gentil.dts
> index e27fd4f..8e9ac57 100644
> --- a/arch/arm/boot/dts/uniphier-pxs2-gentil.dts
> +++ b/arch/arm/boot/dts/uniphier-pxs2-gentil.dts
> @@ -26,6 +26,7 @@
>                 i2c4 = &i2c4;
>                 i2c5 = &i2c5;
>                 i2c6 = &i2c6;
> +               ethernet0 = &eth;
>         };
>
>         memory@80000000 {
> diff --git a/arch/arm/boot/dts/uniphier-pxs2-vodka.dts b/arch/arm/boot/dts/uniphier-pxs2-vodka.dts
> index 23fe42b..8eacc7b 100644
> --- a/arch/arm/boot/dts/uniphier-pxs2-vodka.dts
> +++ b/arch/arm/boot/dts/uniphier-pxs2-vodka.dts
> @@ -24,6 +24,7 @@
>                 i2c4 = &i2c4;
>                 i2c5 = &i2c5;
>                 i2c6 = &i2c6;
> +               ethernet0 = &eth;
>         };
>
>         memory@80000000 {
> --
> 2.7.4
>


-- 
Best Regards
Masahiro Yamada
