Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 048885E5C31
	for <lists+devicetree@lfdr.de>; Thu, 22 Sep 2022 09:19:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230400AbiIVHTy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Sep 2022 03:19:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41396 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230409AbiIVHTt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Sep 2022 03:19:49 -0400
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F01291706D
        for <devicetree@vger.kernel.org>; Thu, 22 Sep 2022 00:19:45 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id f9so13194951lfr.3
        for <devicetree@vger.kernel.org>; Thu, 22 Sep 2022 00:19:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=L0CcexYvr50ry0k5LCLuUVWFoXYl8KApJv3vLCHXZiI=;
        b=b4OPSMZB6A6D9dbVJDjiKqN/SOqiPbLIKzOQK3629IC/ZBvZuPkd9QczfXkA0JnkWU
         zzJIGX/7zmeF5SFpWKqdQpqqnoExVWZwXAVE64zz8A1GRanmjz/aESunHQ1HzOPB/Gw3
         8fVd9+1Ao3KwZ2P9EbUcYA6/KV4EbKk2szlEDbf0lbcc3W9PTSkSWpSw8FtpSrAKHlel
         YoPdkZFHGs6iD18Dm0SSbHIZ6dDOcDd0g40OoocVuQZm5KO73C43Wmaiz7fwpNC03qyj
         MBXysfSJBOqJw3VH5bYZ5urmfkOip6gjcBqWVLqJTA9bi+M3qaMT/IkGPWcEJXngzIkR
         GS1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=L0CcexYvr50ry0k5LCLuUVWFoXYl8KApJv3vLCHXZiI=;
        b=RP4dzssxMVBskdcm/sD27VNz/BGshOy2I2jJhYuwtjo6PCVgU66zDL1/3A1+FsY6/h
         o6U5Fhunb0eJmUBVdigeuJw+jEAJzXl9m855YpbP02MnWto/TIpJAI50tG58O9/raJf0
         omNISStSpp/qrkbNy9+V0SBWzZ4s7I+oRpuJFMs0kOxbZu5qrKrTM4jdaFmbk3CdKKyM
         +N27EJD7oJdgh1hTjiwO990niTo+GeciYXdjAl2CTB5mV3jcrYTl4JJQXDNy9/Hjo6ai
         lcLWS+lP+9YY9AXjdKT+o8YaYM0kzplfl7KwGkzlaNYpmRLSjNAS9chDzkW20Qi55ELR
         bWXw==
X-Gm-Message-State: ACrzQf0QTENWBxSuwhRXvvE22p9wZzraIOSG8K919Vy28WvfiTdQ47fp
        U7pFwanLvf53UaqQA/qAmenIgA==
X-Google-Smtp-Source: AMsMyM4gLReXsZlISFiuSW1XgfW0GpMeZQMBFVw9foI7xJCo01KU0HcjadDByu18kEXVa3VsgiXg9g==
X-Received: by 2002:a05:6512:1055:b0:49a:de51:5458 with SMTP id c21-20020a056512105500b0049ade515458mr671284lfb.585.1663831184180;
        Thu, 22 Sep 2022 00:19:44 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id t2-20020a05651c204200b00261e8e4e381sm775206ljo.2.2022.09.22.00.19.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Sep 2022 00:19:43 -0700 (PDT)
Message-ID: <5a857097-30c2-3b37-6134-57cb942113ca@linaro.org>
Date:   Thu, 22 Sep 2022 09:19:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH v1 06/17] dt-bindings: mediatek: set the hdmi to be
 compatible with syscon
Content-Language: en-US
To:     Guillaume Ranquet <granquet@baylibre.com>,
        Vinod Koul <vkoul@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
        David Airlie <airlied@linux.ie>,
        Rob Herring <robh+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        Chunfeng Yun <chunfeng.yun@mediatek.com>,
        CK Hu <ck.hu@mediatek.com>, Jitao shi <jitao.shi@mediatek.com>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     linux-mediatek@lists.infradead.org,
        dri-devel@lists.freedesktop.org,
        Pablo Sun <pablo.sun@mediatek.com>, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Mattijs Korpershoek <mkorpershoek@baylibre.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org
References: <20220919-v1-0-4844816c9808@baylibre.com>
 <20220919-v1-6-4844816c9808@baylibre.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220919-v1-6-4844816c9808@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/09/2022 18:56, Guillaume Ranquet wrote:
> In order to share register with a dedicated ddc driver, set the hdmi
> compatible to syscon.
> 
> Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
> 
> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,hdmi.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,hdmi.yaml
> index abb231a0694b..86297b7eb7f7 100644
> --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,hdmi.yaml
> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,hdmi.yaml
> @@ -16,12 +16,14 @@ description: |
>  
>  properties:
>    compatible:
> -    enum:
> -      - mediatek,mt2701-hdmi
> -      - mediatek,mt7623-hdmi
> -      - mediatek,mt8167-hdmi
> -      - mediatek,mt8173-hdmi
> -      - mediatek,mt8195-hdmi
> +    items:
> +      - enum:
> +          - mediatek,mt2701-hdmi
> +          - mediatek,mt7623-hdmi
> +          - mediatek,mt8167-hdmi
> +          - mediatek,mt8173-hdmi
> +      - const: syscon

So you just broke all DTS and I do not see patches fixing them...

Best regards,
Krzysztof

