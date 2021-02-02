Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 377D230CA6B
	for <lists+devicetree@lfdr.de>; Tue,  2 Feb 2021 19:50:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231927AbhBBSsU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Feb 2021 13:48:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54614 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238816AbhBBSqK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Feb 2021 13:46:10 -0500
Received: from mail-il1-x132.google.com (mail-il1-x132.google.com [IPv6:2607:f8b0:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D33DEC061788
        for <devicetree@vger.kernel.org>; Tue,  2 Feb 2021 10:45:29 -0800 (PST)
Received: by mail-il1-x132.google.com with SMTP id y5so20036763ilg.4
        for <devicetree@vger.kernel.org>; Tue, 02 Feb 2021 10:45:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=atishpatra.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=4qbyVQvg6BEVMu7L6aYZLcVEyg6+TqSBB7/55fYv22M=;
        b=G9ESZw32gpGvXnbLtBSAr26tTIb9LPlPn+uw9Uyty9gss6Ae30QjzRnCgyu9e+rOgA
         iTRvmnRyPGMLTs089ldyJSmRIjYQB9Iz+1e4CXFvcftMoc1fAYKzfnVzkmng7/UhVu19
         Z7UVCujerknKLHcbrX8dF+MmmAQFeWMeqgmYk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=4qbyVQvg6BEVMu7L6aYZLcVEyg6+TqSBB7/55fYv22M=;
        b=g2yAJt7kWE75hRUvsSFt35mPCq9rE22t+0Flp8INSKr8KooGzw+97w2QssjkeIJOOU
         7lpoOAtregz/cDNWFRZ4+NjSV5JToFTGIyu7NgPn0AoDj+JixjE6o9qhLF8BDwkhaeVU
         tPoXMGk963gFV5SAy6pD7w98jkt6yCSem3wbPthNCFF8dUSd93nj5czlGWGcbgAwCbrC
         mj6z4YYHIUqdgdex5cqybSkXpUbUafxBpxoRw0dRqsm5kKz3cvla00b8bABEzafrJGvd
         FElDMhe/qs4cX28pswKmmElEAf/BLWu1b4U2qHVx5WNItj0NNZ2HleiinhZJf7bFdA3M
         uDww==
X-Gm-Message-State: AOAM5315+VZ1zq2uBbRP9YEn83cvgXmqjcHr0KOttI5joeZFqKgRfvkk
        B+rFFHdR6tpAB5UjtdCDp+cHpxzQ1GpJHDH3hBzc
X-Google-Smtp-Source: ABdhPJwaf5cspb8cc2cHul2mwhML7JvGo5zkmfDaCk/AWDjoDqoUpxO+ilUJftwq2bPf95wcfP/Tssl+dmbwRC2fHU4=
X-Received: by 2002:a05:6e02:1a68:: with SMTP id w8mr19362847ilv.147.1612291529291;
 Tue, 02 Feb 2021 10:45:29 -0800 (PST)
MIME-Version: 1.0
References: <20210202103623.200809-1-damien.lemoal@wdc.com> <20210202103623.200809-8-damien.lemoal@wdc.com>
In-Reply-To: <20210202103623.200809-8-damien.lemoal@wdc.com>
From:   Atish Patra <atishp@atishpatra.org>
Date:   Tue, 2 Feb 2021 10:45:18 -0800
Message-ID: <CAOnJCUKQ+yFJN9+biMMQW6Wvf=eckfcfMHVpDB74TmxWVNoEkQ@mail.gmail.com>
Subject: Re: [PATCH v14 07/16] dt-bindings: fix sifive gpio properties
To:     Damien Le Moal <damien.lemoal@wdc.com>
Cc:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv <linux-riscv@lists.infradead.org>,
        devicetree <devicetree@vger.kernel.org>,
        Rob Herring <robh@kernel.org>, Anup Patel <anup.patel@wdc.com>,
        Sean Anderson <seanga2@gmail.com>,
        Atish Patra <atish.patra@wdc.com>,
        Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Feb 2, 2021 at 2:37 AM Damien Le Moal <damien.lemoal@wdc.com> wrote:
>
> The sifive gpio IP block supports up to 32 GPIOs. Reflect that in the

The spec here says 16 GPIOs
https://static.dev.sifive.com/FU540-C000-v1.0.pdf

Is there a updated spec available ?

> interrupts property description and maxItems. Also add the standard
> ngpios property to describe the number of GPIOs available on the
> implementation.
>
> Also add the "canaan,k210-gpiohs" compatible string to indicate the use
> of this gpio controller in the Canaan Kendryte K210 SoC. If this
> compatible string is used, do not define the clocks property as
> required as the K210 SoC does not have a software controllable clock
> for the Sifive gpio IP block.
>
> Cc: Paul Walmsley <paul.walmsley@sifive.com>
> Cc: Rob Herring <robh@kernel.org>
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
> ---
>  .../devicetree/bindings/gpio/sifive,gpio.yaml | 21 ++++++++++++++++---
>  1 file changed, 18 insertions(+), 3 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/gpio/sifive,gpio.yaml b/Documentation/devicetree/bindings/gpio/sifive,gpio.yaml
> index ab22056f8b44..2cef18ca737c 100644
> --- a/Documentation/devicetree/bindings/gpio/sifive,gpio.yaml
> +++ b/Documentation/devicetree/bindings/gpio/sifive,gpio.yaml
> @@ -16,6 +16,7 @@ properties:
>        - enum:
>            - sifive,fu540-c000-gpio
>            - sifive,fu740-c000-gpio
> +          - canaan,k210-gpiohs
>        - const: sifive,gpio0
>
>    reg:
> @@ -23,9 +24,9 @@ properties:
>
>    interrupts:
>      description:
> -      interrupt mapping one per GPIO. Maximum 16 GPIOs.
> +      interrupt mapping one per GPIO. Maximum 32 GPIOs.
>      minItems: 1
> -    maxItems: 16
> +    maxItems: 32
>
>    interrupt-controller: true
>
> @@ -38,6 +39,10 @@ properties:
>    "#gpio-cells":
>      const: 2
>
> +  ngpios:
> +    minimum: 1
> +    maximum: 32
> +
>    gpio-controller: true
>
>  required:
> @@ -46,10 +51,20 @@ required:
>    - interrupts
>    - interrupt-controller
>    - "#interrupt-cells"
> -  - clocks
>    - "#gpio-cells"
>    - gpio-controller
>
> +if:
> +  properties:
> +    compatible:
> +      contains:
> +        enum:
> +          - sifive,fu540-c000-gpio
> +          - sifive,fu740-c000-gpio
> +then:
> +  required:
> +    - clocks
> +
>  additionalProperties: false
>
>  examples:
> --
> 2.29.2
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv



-- 
Regards,
Atish
