Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AA8E9263090
	for <lists+devicetree@lfdr.de>; Wed,  9 Sep 2020 17:30:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727870AbgIIP3G (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Sep 2020 11:29:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46116 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729251AbgIIP1Y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Sep 2020 11:27:24 -0400
Received: from mail-ej1-x643.google.com (mail-ej1-x643.google.com [IPv6:2a00:1450:4864:20::643])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 29C64C0619CC
        for <devicetree@vger.kernel.org>; Wed,  9 Sep 2020 08:23:03 -0700 (PDT)
Received: by mail-ej1-x643.google.com with SMTP id e23so4157191eja.3
        for <devicetree@vger.kernel.org>; Wed, 09 Sep 2020 08:23:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gateworks-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=WEwEbnNsXZjBgBxJEh5Bf6szwR7IBaWPKXdffPtXQmM=;
        b=FQfkSVbt0TJjxkLzdkjxMdxChaICGXb5/iU+clkD8FTy59ttPHD+OmEPovEIS/H4Pp
         NNeHqoRDq/TG4WvBvjKmBYdcbRJ64aerOxpQzmaR40OlM7+WA3Fu9y707eyNtZ187B9R
         v3/F/AvIapYg00hhLzb4v0++j3gAJYU8ZNS2P491XZCEbOyB3RyHHn7olqX9UiFYM5pg
         8zEMXt4myqOT0Zf9OqQxxFzm3ZpNdw/Fa9HK4xfNL3SyToUmW3seXEI0mrhVLtsaZ96U
         Mg9nJNxR0kggGKQPm6QUoOijakKKZyr8QH4QQyRj/0vBMLQphOOKA/uOGLLii8CHfvd4
         xbIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=WEwEbnNsXZjBgBxJEh5Bf6szwR7IBaWPKXdffPtXQmM=;
        b=t1f9v+ZN0DRVf6eTKdkaMdBal2dIjOir5gK5VLxb15bPJKfjTcU3i5/TIl3oc7g0K8
         AtRtpzNz71I6noZWHlH3Zlg/VsVc1Rix5+KyKaIqETxdUyGLaHNrwMObixgpq2Gy5ZfG
         CAaELwE7c7b6YJYe9oNQFBlbmNzvTao2M2ZfA/yVrlsCytFVbsLno6efD9OjP1DWu7Dg
         x9Be6IgI/nxG0J2eIFwPryKTduQ/14CZPRxKKwzacxCtXVs6e53eHD71XRmCtCDCDm/K
         TG/+jJYdQbWKFdIShmzEBaa2CgJITHBt3ZOykTAJpFB7sO98y1kxOOVkOC4m96prD4Ki
         rEmw==
X-Gm-Message-State: AOAM533k+Ed4sT2Ysg+BCAu6bGMjhPScim4Am8Cbs2wg/lvwdvZy6hrY
        umHUnB+/SnQ9f7KUlt29cuWT8x1R6utCMbaw0sogxg==
X-Google-Smtp-Source: ABdhPJwu2mzQKKbe2wMgt1PJ18pf1x9XZJbozu8RejL84jNJxbbkhDB5KO0zZ7VQklovUtNVWce5atlqkB1u6+ORvh4=
X-Received: by 2002:a17:906:874f:: with SMTP id hj15mr4349435ejb.539.1599664981802;
 Wed, 09 Sep 2020 08:23:01 -0700 (PDT)
MIME-Version: 1.0
References: <20200908145900.4423-1-krzk@kernel.org>
In-Reply-To: <20200908145900.4423-1-krzk@kernel.org>
From:   Tim Harvey <tharvey@gateworks.com>
Date:   Wed, 9 Sep 2020 08:22:49 -0700
Message-ID: <CAJ+vNU3COwMZuPMLO8XYtKcVsGLawhpzuBC3XRMdkU01ePJi+Q@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: mfd: Correct interrupt flags in examples
To:     Krzysztof Kozlowski <krzk@kernel.org>
Cc:     Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>,
        Robert Jones <rjones@gateworks.com>,
        Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        open list <linux-kernel@vger.kernel.org>,
        linux-power@fi.rohmeurope.com
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Sep 8, 2020 at 7:59 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> GPIO_ACTIVE_x flags are not correct in the context of interrupt flags.
> These are simple defines so they could be used in DTS but they will not
> have the same meaning:
> 1. GPIO_ACTIVE_HIGH = 0 = IRQ_TYPE_NONE
> 2. GPIO_ACTIVE_LOW  = 1 = IRQ_TYPE_EDGE_RISING
>
> Correct the interrupt flags, assuming the author of the code wanted some
> logical behavior behind the name "ACTIVE_xxx", this is:
>   ACTIVE_LOW => IRQ_TYPE_LEVEL_LOW
>
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> ---
>  Documentation/devicetree/bindings/mfd/act8945a.txt          | 2 +-
>  Documentation/devicetree/bindings/mfd/gateworks-gsc.yaml    | 3 ++-
>  Documentation/devicetree/bindings/mfd/rohm,bd70528-pmic.txt | 2 +-
>  3 files changed, 4 insertions(+), 3 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/mfd/act8945a.txt b/Documentation/devicetree/bindings/mfd/act8945a.txt
> index e6f168db6c72..5ca75d888b4a 100644
> --- a/Documentation/devicetree/bindings/mfd/act8945a.txt
> +++ b/Documentation/devicetree/bindings/mfd/act8945a.txt
> @@ -71,7 +71,7 @@ Example:
>                         pinctrl-names = "default";
>                         pinctrl-0 = <&pinctrl_charger_chglev &pinctrl_charger_lbo &pinctrl_charger_irq>;
>                         interrupt-parent = <&pioA>;
> -                       interrupts = <45 GPIO_ACTIVE_LOW>;
> +                       interrupts = <45 IRQ_TYPE_LEVEL_LOW>;
>
>                         active-semi,chglev-gpios = <&pioA 12 GPIO_ACTIVE_HIGH>;
>                         active-semi,lbo-gpios = <&pioA 72 GPIO_ACTIVE_LOW>;
> diff --git a/Documentation/devicetree/bindings/mfd/gateworks-gsc.yaml b/Documentation/devicetree/bindings/mfd/gateworks-gsc.yaml
> index 9b6eb50606e8..e541eb0d02ed 100644
> --- a/Documentation/devicetree/bindings/mfd/gateworks-gsc.yaml
> +++ b/Documentation/devicetree/bindings/mfd/gateworks-gsc.yaml
> @@ -147,6 +147,7 @@ required:
>  examples:
>    - |
>      #include <dt-bindings/gpio/gpio.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
>      i2c {
>          #address-cells = <1>;
>          #size-cells = <0>;
> @@ -155,7 +156,7 @@ examples:
>              compatible = "gw,gsc";
>              reg = <0x20>;
>              interrupt-parent = <&gpio1>;
> -            interrupts = <4 GPIO_ACTIVE_LOW>;
> +            interrupts = <4 IRQ_TYPE_LEVEL_LOW>;
>              interrupt-controller;
>              #interrupt-cells = <1>;
>              #address-cells = <1>;

For gateworks-gsc.yaml:
Acked-By: Tim Harvey <tharvey@gateworks.com>

Thanks for finding this!

Tim
