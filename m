Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 96A8830E1C8
	for <lists+devicetree@lfdr.de>; Wed,  3 Feb 2021 19:03:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232573AbhBCSDQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Feb 2021 13:03:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44954 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230355AbhBCSDL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Feb 2021 13:03:11 -0500
Received: from mail-il1-x134.google.com (mail-il1-x134.google.com [IPv6:2607:f8b0:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CFB21C0613ED
        for <devicetree@vger.kernel.org>; Wed,  3 Feb 2021 10:02:24 -0800 (PST)
Received: by mail-il1-x134.google.com with SMTP id z18so67447ile.9
        for <devicetree@vger.kernel.org>; Wed, 03 Feb 2021 10:02:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=atishpatra.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=O4JlNu8/UKJ4TcIvZSZaq+J3GkWnkAas9iNj9NlLHeM=;
        b=mvSmPEuV3qNgYCAQTcYKupvgpZsxP4EFNF2/jb6z8/9y7GJAwEn3IjJ1hXbCtVOdrP
         9dikj2yUHTEA1BKCKxl5TrYx0K1c04aaz65KWDgzGaZOHdKlupPv1c1vDQt97kYtX7zZ
         TKBa845jd6WCteZDZsPddfCs8z/YHxBCJLYJk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=O4JlNu8/UKJ4TcIvZSZaq+J3GkWnkAas9iNj9NlLHeM=;
        b=di5xvNuFnuTufQZcrMQ8/+0+KYQMhF9lMbN0hrjuBisd4mb0Rr6xzGTbK8izPlKIVD
         u/nlRbbN15s6zqZKD8AKK6ZEO8m0keVpP+n9yXVuqYbgTCC2Q9lyiLhS1Kmj64MiEbh+
         dJccyT92HJmrwUnEfGi6Lz4qelPZzBJ8cZf5+a5OjMaUL0m8yz7niRC8y1m64ViaI7PL
         GXcwiHDZxis4pbdSPCY/dMJUlWWXlv9r05wYr/RHqGfZEfadGnJdSZDAqlfapzoYvwhh
         cC/mT1dB42eQ5vkgBAc95fCrhJsIg+q+YI3kB1yAbQAllu4ZrXzSN2lSJKlu6NWtohrx
         E5nw==
X-Gm-Message-State: AOAM530ZLVhqZVnaYaGulL/HGhUWL2u51sWskVq5AjXitKV4eqGxpAuQ
        snipZVKZqTnFromfV/oSyPuUF7VEnJPlOpFHTJqF
X-Google-Smtp-Source: ABdhPJwIcQ3qi/WS218RvzSvV7N2bb+NFL58ELQ2CH2SiyWJNr3JUXVM6U/iAu/YvppBMVqmGLN/EoSurNZeUSmq54g=
X-Received: by 2002:a92:ce50:: with SMTP id a16mr3574520ilr.219.1612375344325;
 Wed, 03 Feb 2021 10:02:24 -0800 (PST)
MIME-Version: 1.0
References: <20210203125913.390949-1-damien.lemoal@wdc.com> <20210203125913.390949-8-damien.lemoal@wdc.com>
In-Reply-To: <20210203125913.390949-8-damien.lemoal@wdc.com>
From:   Atish Patra <atishp@atishpatra.org>
Date:   Wed, 3 Feb 2021 10:02:13 -0800
Message-ID: <CAOnJCUJAbkWj4OUWBjPQiLKuYD4Pr=u+Cvm46ZFR47VxpwQA3g@mail.gmail.com>
Subject: Re: [PATCH v15 07/16] dt-bindings: fix sifive gpio properties
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

On Wed, Feb 3, 2021 at 5:00 AM Damien Le Moal <damien.lemoal@wdc.com> wrote:
>
> The sifive gpio IP block supports up to 32 GPIOs. Reflect that in the
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


Reviewed-by: Atish Patra <atish.patra@wdc.com>

-- 
Regards,
Atish
