Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EC7D069A912
	for <lists+devicetree@lfdr.de>; Fri, 17 Feb 2023 11:27:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229603AbjBQK1a (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Feb 2023 05:27:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44498 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229508AbjBQK1a (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Feb 2023 05:27:30 -0500
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com [IPv6:2607:f8b0:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D0E16627D9
        for <devicetree@vger.kernel.org>; Fri, 17 Feb 2023 02:27:27 -0800 (PST)
Received: by mail-pl1-x633.google.com with SMTP id jk12so1107799plb.5
        for <devicetree@vger.kernel.org>; Fri, 17 Feb 2023 02:27:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1676629647;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=dYUz8oisVi2MXZNU739kVbVZfuIh484HESHjTvaz9UM=;
        b=meORSfrOitZ4zlTOzjjoOw+lVQAZ9cPa9GCbsF5D7r2vSISSZGzNJGvYAoYrHiKEKv
         D6pebsua3r4XJBH5BiGIQkY8vipuODqMajcUK7EWXtgMLAScFJtklAIJJ0Z4hFgSIXNr
         y/qUyoGREIkKZKzoA+5sVCkhERCmguZJd6+/PewB/3Eg+irdm5wISjIz0QibvzahWSHI
         cda4g/Pef9SXm8+7XBMbYEZwkWd4TA06wYEwGRpWqC9QiNY4lpav8XLnqv8PM1qR3BpS
         9alx2cRI00R44N9Owo8bWeX9A7bKgN0720YIXMWx1jSE3xgHdcARDIxYrKlD999FjCpT
         YBCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1676629647;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dYUz8oisVi2MXZNU739kVbVZfuIh484HESHjTvaz9UM=;
        b=d+F5jhzv9UXYABOA2JfIpZQPtoUWzpT1CRzPM/hF4tG0ArigGwdTouWmt6HD/tef1F
         8UXuPSJ3uSYFKhjylthISYbNE6wL9czHPLNNFty+2lK21t/gAJNEOCYEdZWASkkfO+Tl
         lKnxybdovgV9e1f3C/kuf7FsW1IeUnCqLy8Wlu7v2bAR7qpYiyb7jhMZmjnguoN3fqXS
         B2SATz4QZu2Oy7wLr4Emw/6spPScm3ybIE/H7DjUAGGZocWGJuyj2tT4ioGQ3aRekhvB
         fxiKZyeegZuD61QI1HnGliNbgWA9YIhoA2enDH7BZ5b3N0YirxMbcprozj9cJed7dN3z
         0CHw==
X-Gm-Message-State: AO0yUKULEoi3YBt+LZq1zHpWi1lrfsEHxcax9NWvGqaCDogFfVHIrKg3
        SsoKeFV7ZllwtKs2Ov7oxSEPnFjMgLfzsp7ip2hO9rzuPSAsIw==
X-Google-Smtp-Source: AK7set8Zqc99tI1n8m5kImc/yYJuO2ErLq/s41RuQOt/YA+reJHb6HINNqc7ZSfnEhsxkCMLALMX2fO1gyvLLpvOClo=
X-Received: by 2002:a17:902:8d89:b0:199:15c2:99ae with SMTP id
 v9-20020a1709028d8900b0019915c299aemr77197plo.20.1676629647338; Fri, 17 Feb
 2023 02:27:27 -0800 (PST)
MIME-Version: 1.0
References: <c1437eb6-0c01-809f-422b-cb1109489355@gmail.com>
In-Reply-To: <c1437eb6-0c01-809f-422b-cb1109489355@gmail.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Fri, 17 Feb 2023 11:26:50 +0100
Message-ID: <CAPDyKFp-ASckmet2hA7XuycijRSe64HEkVRzPSBKP4G4NG6v-g@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: mmc: meson-gx: fix interrupt binding
To:     Heiner Kallweit <hkallweit1@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 16 Feb 2023 at 20:50, Heiner Kallweit <hkallweit1@gmail.com> wrote:
>
> Reflect in the binding that the cd interrupt is optional,
> and add a description of the interrupts.
>
> Fixes: 09b31a610328 ("dt-bindings: mmc: meson-gx: support specifying cd interrupt")
> Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>

Applied for next, thanks!

Kind regards
Uffe

> ---
> v2:
> - omit maxItems and use items
> ---
>  .../devicetree/bindings/mmc/amlogic,meson-gx-mmc.yaml        | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>
> diff --git a/Documentation/devicetree/bindings/mmc/amlogic,meson-gx-mmc.yaml b/Documentation/devicetree/bindings/mmc/amlogic,meson-gx-mmc.yaml
> index c8c30300d..bc403ae9e 100644
> --- a/Documentation/devicetree/bindings/mmc/amlogic,meson-gx-mmc.yaml
> +++ b/Documentation/devicetree/bindings/mmc/amlogic,meson-gx-mmc.yaml
> @@ -28,7 +28,10 @@ properties:
>      maxItems: 1
>
>    interrupts:
> -    maxItems: 2
> +    minItems: 1
> +    items:
> +      - description: mmc controller instance
> +      - description: card detect
>
>    clocks:
>      maxItems: 3
> --
> 2.39.1
>
