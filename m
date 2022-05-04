Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7303F519D2B
	for <lists+devicetree@lfdr.de>; Wed,  4 May 2022 12:40:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348371AbiEDKma (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 May 2022 06:42:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49206 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1348287AbiEDKl4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 May 2022 06:41:56 -0400
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F141C29CBE
        for <devicetree@vger.kernel.org>; Wed,  4 May 2022 03:38:14 -0700 (PDT)
Received: by mail-lj1-x22d.google.com with SMTP id 4so1104597ljw.11
        for <devicetree@vger.kernel.org>; Wed, 04 May 2022 03:38:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=lD3vvXHAHJs3IRnQAHfphn1E2NtyGe633IfNU2pH9ck=;
        b=QaNg+hrH0pWi1gegQLwIunoR96zQeWK405W/Y0DimAXEprgC6u6tNQyTc1XTqFVU4h
         poyJ1hvGMfkGW4M4zzVcfyyiBE5x7enLur2bhx1BCk1vMfmmunpoJJvu62TgUJYs7EUN
         rNETTUTSN7ekB6AXtT3O4rljzo4wb9v3QUMtEUUaODNLuI7ECb3F49YEvM+74VF7zM3W
         m2cSjEjDZLt6B8o16XYHmC/R5xDBzmcf6Zi47MWoXmAq1hHZUYbz8bh+bRzkTgtz+jjX
         CRGalEFuDBlXelp8sBL1sgXTzlbdfuBK0920R5Qh6l0w7CVfq4DSsVE7n1+PvvcN6ziO
         PGQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=lD3vvXHAHJs3IRnQAHfphn1E2NtyGe633IfNU2pH9ck=;
        b=N7FMjIvYNt0HOPoEmQ7KZf3XqXyhqjlCGvBaGQQIrV+emKS59GstpXILH87irYOlvm
         eAu7+VOxfKtVh4aBglj9kGGC3q461RTxyUKlpL/7tpq7qalRDW6PGyLPmLdWVO87Tmw2
         LqLkbqoplPvGFHJHp6OMQLDZBlMXCLEPkFop0vvIhZmrJ0bL+/vREzk5/3wrL6whF+RH
         pzl/Xg3J62vv1GaX6jKAkzYMDa1t0Bz01yh6og1GGLQk84PTSne1Zxh33kMqVRdsJV8b
         ogwiPdWOrjbUFsHaQowiYmG4/WqX1szMIOWdCVcgSFDE/GAj8xp6dh+G7o7sX+EM0rsF
         X+Mg==
X-Gm-Message-State: AOAM5307SaAyfZJhNvwL6+jL3bR9qHox4NkJEP0rp376o5YcXJJ2qiPj
        1Vx3RJpMzJ/LWQ64FaZcS9H6HtQEwsyVGVOAup6sHw==
X-Google-Smtp-Source: ABdhPJy+kS6AXMWUkmQ6E/kbOxo9lyfYr8OK70af4kdLrlbjvuToWT0sZZJrsSDzfyNmt7IFspcd+yMVuBQcDDWWKHI=
X-Received: by 2002:a05:651c:483:b0:24f:2ae0:61f3 with SMTP id
 s3-20020a05651c048300b0024f2ae061f3mr12397148ljc.229.1651660693223; Wed, 04
 May 2022 03:38:13 -0700 (PDT)
MIME-Version: 1.0
References: <20220428081817.35382-1-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220428081817.35382-1-krzysztof.kozlowski@linaro.org>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Wed, 4 May 2022 12:37:36 +0200
Message-ID: <CAPDyKFrkkif0ABhe0_pZFBpWjMVoXETKZ7GpJUORR94LmbbaGg@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: mmc: brcm,sdhci-brcmstb: correct number
 of reg entries
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Broadcom Kernel Team <bcm-kernel-feedback-list@broadcom.com>,
        Al Cooper <alcooperx@gmail.com>, linux-mmc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 28 Apr 2022 at 10:18, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> The binding should not allow infinite number of 'reg' entries, so add
> strict limit.
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  Documentation/devicetree/bindings/mmc/brcm,sdhci-brcmstb.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/Documentation/devicetree/bindings/mmc/brcm,sdhci-brcmstb.yaml b/Documentation/devicetree/bindings/mmc/brcm,sdhci-brcmstb.yaml
> index dccd5ad96981..54a0edab5f8c 100644
> --- a/Documentation/devicetree/bindings/mmc/brcm,sdhci-brcmstb.yaml
> +++ b/Documentation/devicetree/bindings/mmc/brcm,sdhci-brcmstb.yaml
> @@ -31,7 +31,7 @@ properties:
>            - const: brcm,sdhci-brcmstb
>
>    reg:
> -    minItems: 2
> +    maxItems: 2
>
>    reg-names:
>      items:
> --
> 2.32.0
>
