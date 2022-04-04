Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 89FDE4F135C
	for <lists+devicetree@lfdr.de>; Mon,  4 Apr 2022 12:53:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1358523AbiDDKzB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Apr 2022 06:55:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57664 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1358511AbiDDKzA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Apr 2022 06:55:00 -0400
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 071273CFE0
        for <devicetree@vger.kernel.org>; Mon,  4 Apr 2022 03:52:58 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id ot30so9104582ejb.12
        for <devicetree@vger.kernel.org>; Mon, 04 Apr 2022 03:52:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=UU25dnRU14B6WimB3QqwV09JX+ckGmT5YECsCF3qKAA=;
        b=ZHbTS027b+JkcCxCf+aPTD/DnJBJL8idlGYbvHFIydDwSCbz+4J0UGF4KtoVviMFIR
         aMsPXouXrkXvRBCHGadwcnAUUrnKNILyJTLz2DnRgtdjW/myiqcjfzkF/4so514kO7oh
         QTM8kK63JiDUv+I5zGxbKlpo+vMI+JWT/WWZNwVI4QgVEvwrdAf7OaScwJ5rQlAAlZG2
         DGOtppnxMxWdpOE98q0sQgesPmespqcl2ZFcFNJG1pNN+6NnPnjqwoUAPDjm8vdw/+xe
         PsZzKPT8um3ibadBnaLj7oWs/er3PenNwqZ5wwSbCvwlknLTeL6GypXQq5o1KhC4Jpif
         KvCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=UU25dnRU14B6WimB3QqwV09JX+ckGmT5YECsCF3qKAA=;
        b=fsr5L5YAnE2as3WUJ6Fu3ey+jDHqFxHWJVJ+2c5Zrq7IvOYNqF9a9c2J7fpEcisXPu
         nuxFjAqwIQkldrgfR9k1Bjbrh0PfGdjrTMrsdMlnhfkB4x1dm6UjAXT7ejvlAgfz5Ww+
         48iqUDlWwRXWczLkgLsz28iqusvNVoPji0RCAwWd3M1NLo4PN6Z+tPAeiMzCQKp4uQbU
         fg2711+zl/70MvGkD0sRq1CycO0TNwgQSEJwugY8EGfjr7rQDDJNQ/wXdXue0DhxLs+u
         pHAIoXwbwxPtDe902GyZNsRk3YEwfD9Q/cP3G72KrxN650IRjqYQRkJaDgvrBDBMcCa5
         ztng==
X-Gm-Message-State: AOAM532bQgcsX+Ap/LKPsX43GmtFunHa3xsfBYcrQpAeB/siQGtxIBNE
        5Ljn4cxn4BebgEiUFKxv0s1rhC0ndTPB8ybWRckA0A==
X-Google-Smtp-Source: ABdhPJwX7lcdcK7gjr603btAwQzth7/SiHB6MZTl0D6kuiN2IjDBOiSWTV9ZJfAzRTs118XNaiG3dC/1cWH0nzRBV/I=
X-Received: by 2002:a17:906:d554:b0:6df:a6f8:799a with SMTP id
 cr20-20020a170906d55400b006dfa6f8799amr10108411ejc.492.1649069576577; Mon, 04
 Apr 2022 03:52:56 -0700 (PDT)
MIME-Version: 1.0
References: <1648617423-8739-1-git-send-email-hayashi.kunihiko@socionext.com>
In-Reply-To: <1648617423-8739-1-git-send-email-hayashi.kunihiko@socionext.com>
From:   Bartosz Golaszewski <brgl@bgdev.pl>
Date:   Mon, 4 Apr 2022 12:52:46 +0200
Message-ID: <CAMRc=Mde0ShYiH8e24Y-qKHrhqAfLjDcLgAZ7-VmC5xGQVBwNg@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: gpio: uniphier: Add hogs parsing
To:     Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Cc:     Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Masami Hiramatsu <mhiramat@kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        devicetree <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Mar 30, 2022 at 7:17 AM Kunihiko Hayashi
<hayashi.kunihiko@socionext.com> wrote:
>
> Allow parsing GPIO controller children nodes with GPIO hogs to fix the
> following warning:
>
>   uniphier-ld11-ref.dtb: gpio@55000000: 'xirq0-hog' does not match any of the regexes: 'pinctrl-[0-9]+'
>       From schema: Documentation/devicetree/bindings/gpio/socionext,uniphier-gpio.yaml
>
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> ---
>
> Changes since v1:
> - Remove outer brackets from a pattern string
> - Add valid properties to patternProperties
> - Add gpios to "required:"
>
>  .../bindings/gpio/socionext,uniphier-gpio.yaml  | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/gpio/socionext,uniphier-gpio.yaml b/Documentation/devicetree/bindings/gpio/socionext,uniphier-gpio.yaml
> index bcafa494ed7a..228fa27ffdc3 100644
> --- a/Documentation/devicetree/bindings/gpio/socionext,uniphier-gpio.yaml
> +++ b/Documentation/devicetree/bindings/gpio/socionext,uniphier-gpio.yaml
> @@ -52,6 +52,23 @@ properties:
>        <child-interrupt-base parent-interrupt-base length> triplets.
>      $ref: /schemas/types.yaml#/definitions/uint32-matrix
>
> +patternProperties:
> +  "^.+-hog(-[0-9]+)?$":
> +    type: object
> +    properties:
> +      gpio-hog: true
> +      gpios: true
> +      input: true
> +      output-high: true
> +      output-low: true
> +      line-name: true
> +
> +    required:
> +      - gpio-hog
> +      - gpios
> +
> +    additionalProperties: false
> +
>  required:
>    - compatible
>    - reg
> --
> 2.25.1
>

Applied, thanks!

Bart
