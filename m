Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DAC2850C938
	for <lists+devicetree@lfdr.de>; Sat, 23 Apr 2022 12:31:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234931AbiDWKak (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 23 Apr 2022 06:30:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48560 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234967AbiDWKai (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 23 Apr 2022 06:30:38 -0400
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0096A1B9FAA
        for <devicetree@vger.kernel.org>; Sat, 23 Apr 2022 03:27:41 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id l7so20814946ejn.2
        for <devicetree@vger.kernel.org>; Sat, 23 Apr 2022 03:27:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=AOUrFgUwEuSpl6hTV/7bP18cU2LpXkIHI0vQtR+kpsQ=;
        b=JEiQJmqMDGCqggdXD4BezkGTOz5F3qCD4m3GAg3ePRWI/RRoT0QSNSX95ctQ6kzQut
         g5jOVBWpjAJQGAqOkOL9aAZ9FuROaxU8HqphApfcAHxn09TJYnKuX0T4ZWI7H7HygJrD
         jPAtxY5q7Vx3zUWF6S3ukoN9CvGB9gwwbBomJMWE0GxpD6px1TiPDWuXietPy/j/Wsaa
         jcx4ZrTbocsJazpmAiUVUPLSXLl/1esrBNdqF6DKTM5VPpknkrindHs3GSoBsJ9t7l3o
         xQSfCp8xVQujmjj5k2dhjKJRr4UxR/ODPnRViMKXhvShPxO5HfYoMhdp9BTbE4CQvZst
         b0Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=AOUrFgUwEuSpl6hTV/7bP18cU2LpXkIHI0vQtR+kpsQ=;
        b=106+lwhPh4Kr7EeQiJ3+3cEMhqSSQsVgMPdWIld6Eg46V9PWWdoYDHbHiQ6TtAsOuv
         IIl2WVu9Sl7FACIOkkR+l5cM41M5rEBnL7LCnQh2qm06yQP6kk96EJcZfUUdc4ng8OY8
         4pHpq2nNZfltyNmS2FMRml60DLdzsZJAwTrAi508ZNtKWTMJRQgYRyQSeKaLP+e02Esc
         WF59iGJblruqXGkiWLEOx5KWiRNLW87G8ESUNvsfNjm9v23k4KcisTmXGVGHVPXj89wb
         tbKlvCxpvSSlYtw+Cfinj3oLifh4x5kJzPQjri7F1WtAtK4CWtkvmgSIYvk91caqVCFh
         csIg==
X-Gm-Message-State: AOAM532tc97Nn7u8xdI8+6/i3mKkvi8cvmXQWBOeJNcAP8onFCriMPhm
        HbnvYf/4V+umqhRfQp5DkJceBQ==
X-Google-Smtp-Source: ABdhPJyi1WNeP7McWIYi/L5chkoHfrjRyvJMkmxFVMT6CRqoVF5RVabad+9jTEezRQLCDdaaSzi2KA==
X-Received: by 2002:a17:907:2d08:b0:6f0:2c6b:df52 with SMTP id gs8-20020a1709072d0800b006f02c6bdf52mr7411533ejc.210.1650709660435;
        Sat, 23 Apr 2022 03:27:40 -0700 (PDT)
Received: from [192.168.0.234] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id n13-20020a170906724d00b006cedd6d7e24sm1545928ejk.119.2022.04.23.03.27.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Apr 2022 03:27:40 -0700 (PDT)
Message-ID: <288f55f3-b3ed-32b8-9a44-652f3d53617d@linaro.org>
Date:   Sat, 23 Apr 2022 12:27:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH V3 11/17] dt-bindings: arm: mediatek: Add #reset-cells
 property for MT8192-sys-clock
Content-Language: en-US
To:     Rex-BC Chen <rex-bc.chen@mediatek.com>, mturquette@baylibre.com,
        sboyd@kernel.org, matthias.bgg@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
Cc:     p.zabel@pengutronix.de, angelogioacchino.delregno@collabora.com,
        chun-jie.chen@mediatek.com, wenst@chromium.org,
        runyang.chen@mediatek.com, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com
References: <20220422060152.13534-1-rex-bc.chen@mediatek.com>
 <20220422060152.13534-12-rex-bc.chen@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220422060152.13534-12-rex-bc.chen@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/04/2022 08:01, Rex-BC Chen wrote:
> We will use the infra_ao reset which is defined in mt8192-sys-clock.
> The maximum value of reset-cells is 2. Therefore, we add this patch to
> define it.

Remove entire last sentence, does not make sense in the commit.

> 
> Signed-off-by: Rex-BC Chen <rex-bc.chen@mediatek.com>
> ---
>  .../bindings/arm/mediatek/mediatek,mt8192-sys-clock.yaml       | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/mediatek/mediatek,mt8192-sys-clock.yaml b/Documentation/devicetree/bindings/arm/mediatek/mediatek,mt8192-sys-clock.yaml
> index 5705bcf1fe47..28ebcecc8258 100644
> --- a/Documentation/devicetree/bindings/arm/mediatek/mediatek,mt8192-sys-clock.yaml
> +++ b/Documentation/devicetree/bindings/arm/mediatek/mediatek,mt8192-sys-clock.yaml
> @@ -29,6 +29,9 @@ properties:
>    '#clock-cells':
>      const: 1
>  
> +  '#reset-cells':
> +    maximum: 2

Why this is a maximum? Usually this is const, so how do you use it (with
what values)?

> +
>  required:
>    - compatible
>    - reg


Best regards,
Krzysztof
