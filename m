Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D776C558A1F
	for <lists+devicetree@lfdr.de>; Thu, 23 Jun 2022 22:32:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230080AbiFWUcu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Jun 2022 16:32:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59164 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229755AbiFWUct (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Jun 2022 16:32:49 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 69C0055352
        for <devicetree@vger.kernel.org>; Thu, 23 Jun 2022 13:32:48 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id u12so550120eja.8
        for <devicetree@vger.kernel.org>; Thu, 23 Jun 2022 13:32:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=MPaF0pnfdxQmlzXUdeBl8fwQdh40L/WJt6dU1yTdJ/w=;
        b=G2qTjQySalfwBcCuEbWWT7VVEHaGrenTHo12sJzYMKDWexMfROYy/+NCAmF/e1TWXy
         yc+vuo057tG8JoFxSgxd3VzyZU6sQ5/rcnrRSvIuCwB/Re+OHIpWuRIg0yWyYO4ffw6f
         /mWN47rfE1YSiSkVfERc1f0Gz5Z4N+15QJcsYf7OEsifPrEO+7hMKdhFa8r6dYYsP6pi
         D+WPj6UaorFwF0l0Ldwv/JuCz2wdUVHJL2U8U1cFZzmuTM4LNXBmMKjfEjzDR6CVdzmC
         HISDaZWUKFT1zeu9WnpRRs16gc7yAOzqyKWwu91OX6gWXUQDzv+pOKOAf+TV74iFypNo
         wwZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=MPaF0pnfdxQmlzXUdeBl8fwQdh40L/WJt6dU1yTdJ/w=;
        b=0OxZfBjjA8ECxasB9VnPV5V3lZEJeTsLu3hbhfTck4KR8fyQxXvYIpmpbyELP5mq6m
         mcyhUiWjz8gfromJ+rUtLyr47rSJHepmcRuWbM5UJpINss1wIdHAxLfVew8VE2Qto+AZ
         mRt9PoZW0vCiHIT5ARpoy2+cxQRnAi9JBrEGU7Uva05JsxBxy0NTDfIp/mdrtz9pC3HS
         TakGNyL9GxoUuPQppf/U/uz03xlflF5ZjvtMfKJQxrJcdc+p8gUQet3zXSECMOePmeyG
         Byjn/Ebz2YhHThJ5jc1kQkkSouUk5LPatKI8JiwZsCNmxAxNSHf+QF/d0FnxnJ1DAPJg
         creQ==
X-Gm-Message-State: AJIora9zkjqBjENCbvr5Ai4zE9eMFXSaGK2fvvI5z1Xbz2PmGWRNo5Id
        GMAaMEoSg0JMBvRV+PLayH4PfRBzu6AUgyn+ViMY3w==
X-Google-Smtp-Source: AGRyM1s1ywPBuuIWVkbh8rVLl+r/Ph6LDNSJ52ok/ZfJOUVkiXO1w9/EzEqBOfgcVnk1oLcyJNqcO2JFTMah7Vf+H9M=
X-Received: by 2002:a17:907:86a6:b0:722:dce7:5a16 with SMTP id
 qa38-20020a17090786a600b00722dce75a16mr10078896ejc.492.1656016366952; Thu, 23
 Jun 2022 13:32:46 -0700 (PDT)
MIME-Version: 1.0
References: <e7468aa236403ed6a8f2809002fb3546d683f1fc.1654855611.git.geert+renesas@glider.be>
In-Reply-To: <e7468aa236403ed6a8f2809002fb3546d683f1fc.1654855611.git.geert+renesas@glider.be>
From:   Bartosz Golaszewski <brgl@bgdev.pl>
Date:   Thu, 23 Jun 2022 22:32:36 +0200
Message-ID: <CAMRc=Md-AmeEcd99DdUsa0icACfowWG1nEhMWyy02Em9DURz2w@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: gpio: renesas,rcar-gpio: R-Car V3U is
 R-Car Gen4
To:     Geert Uytterhoeven <geert+renesas@glider.be>
Cc:     Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        devicetree <devicetree@vger.kernel.org>,
        Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Wolfram Sang <wsa+renesas@sang-engineering.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jun 10, 2022 at 12:08 PM Geert Uytterhoeven
<geert+renesas@glider.be> wrote:
>
> Despite the name, R-Car V3U is the first member of the R-Car Gen4
> family.  Hence move its compatible value to the R-Car Gen4 section.
>
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Reviewed-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> Acked-by: Bartosz Golaszewski <brgl@bgdev.pl>
> ---
> v2:
>   - Add Acked-by, Reviewed-by.
> ---
>  Documentation/devicetree/bindings/gpio/renesas,rcar-gpio.yaml | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/gpio/renesas,rcar-gpio.yaml b/Documentation/devicetree/bindings/gpio/renesas,rcar-gpio.yaml
> index 0681a4790cd62e23..75e5da6a7cc04bbd 100644
> --- a/Documentation/devicetree/bindings/gpio/renesas,rcar-gpio.yaml
> +++ b/Documentation/devicetree/bindings/gpio/renesas,rcar-gpio.yaml
> @@ -48,11 +48,9 @@ properties:
>                - renesas,gpio-r8a77995     # R-Car D3
>            - const: renesas,rcar-gen3-gpio # R-Car Gen3 or RZ/G2
>
> -      - items:
> -          - const: renesas,gpio-r8a779a0  # R-Car V3U
> -
>        - items:
>            - enum:
> +              - renesas,gpio-r8a779a0     # R-Car V3U
>                - renesas,gpio-r8a779f0     # R-Car S4-8
>            - const: renesas,rcar-gen4-gpio # R-Car Gen4
>
> --
> 2.25.1
>

Applied, thanks!

Bart
