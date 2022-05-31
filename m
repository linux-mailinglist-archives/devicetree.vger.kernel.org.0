Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 539A25391A4
	for <lists+devicetree@lfdr.de>; Tue, 31 May 2022 15:18:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231594AbiEaNR5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 31 May 2022 09:17:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54346 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237966AbiEaNR4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 31 May 2022 09:17:56 -0400
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E7734F458
        for <devicetree@vger.kernel.org>; Tue, 31 May 2022 06:17:55 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id n10so26604668ejk.5
        for <devicetree@vger.kernel.org>; Tue, 31 May 2022 06:17:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=tpA42Tx44I0fnuuCprNTajRej43QyVodYuy8RXRmj7I=;
        b=tcsodHGz8IqIORGd0a2SWG5S+EnDeWCOTSoO1dfwXffZDM4sjNpNzUr8Jhv6fFtg2X
         a9eoEWUyQ4L2gsw+3vlwdu8/A58jYl80KdSs1icT9wQ1FI0VMw8x/7NfPTHk/0azGwlt
         fmOs1UUcFmuHnVu5/v7Z5MY1NNvrdwifxw6u1Mt/IpgcMCUBzZHy0V1QiyebL4b8RZIf
         hvd8gbtaYqYQcxp4Izw4u9R5eGgUPBFUMywr+nyAx2I6PcanxO4n1uMmxlq44TYivFzv
         haogT6bNlUA/XiY0EFY4mH6jWdPyjl4o5z/ar7CK8yM67kzYcXb3p3u9fs/Rsv83k+U6
         lIbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=tpA42Tx44I0fnuuCprNTajRej43QyVodYuy8RXRmj7I=;
        b=IXRI8Y2CLjKsq/HqHbyT/Spt817daY9mg56exwxiCXtF2TAsL0Ri1iG/7FNUN9wcTt
         iBmvVunCqErwaUANNmVx9fpYLDYb1Yl1fzitrgFLo+QsHufwwz2vVNAzDQ8KAF9Mr4bd
         DnCZ3hsT9Y0Y4m2SyxDEKD05TYTHY4cP3WzYIdOn8vm6+6jKoKuGsvqGPGIIF0IGstZZ
         ZPAQgzmAAcytm+Bhw7IKTuH+E3LRRZGOwJKrRTQuPogKiogJM64fYrWUTo6RxvYrDoY8
         t5FLkAkzfiFXZx2/hyScSWCVpvTOfD3q1XjRC9DbdeLtV8AQOSjt0HVBG+4qUa5Q9Aya
         rEHQ==
X-Gm-Message-State: AOAM530xInZb+9c8rV3/jb/GwEAKxNMInhzhgoXcV5qGN+IayD/mPa7Z
        GUgTMu8wLSUDdXvOMarCz8CNxA==
X-Google-Smtp-Source: ABdhPJxa6B5W86EzUoyr39/9kYuoZNb7bEBcDDiKZI03K64YBYD7w3EMgBY04Zh/hLOqXrEZl9XIGA==
X-Received: by 2002:a17:906:c155:b0:6ff:25f9:b9b5 with SMTP id dp21-20020a170906c15500b006ff25f9b9b5mr22268410ejc.288.1654003074168;
        Tue, 31 May 2022 06:17:54 -0700 (PDT)
Received: from [192.168.0.179] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id a25-20020a509b59000000b0042dd3bf1403sm2872641edj.54.2022.05.31.06.17.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 May 2022 06:17:53 -0700 (PDT)
Message-ID: <9947e5b7-8843-1952-be93-abe67723127f@linaro.org>
Date:   Tue, 31 May 2022 15:17:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH 1/4] dt-bindings: phy: samsung,ufs-phy: make pmu-syscon as
 phandle-array
Content-Language: en-US
To:     Chanho Park <chanho61.park@samsung.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Vinod Koul <vkoul@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
References: <20220531121913.48722-1-chanho61.park@samsung.com>
 <CGME20220531121922epcas2p15861df56f7253265c591a88244520446@epcas2p1.samsung.com>
 <20220531121913.48722-2-chanho61.park@samsung.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220531121913.48722-2-chanho61.park@samsung.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 31/05/2022 14:19, Chanho Park wrote:
> To support secondary ufs phy devices, we need to get an offset value
> from pmu-syscon.
> 
> Signed-off-by: Chanho Park <chanho61.park@samsung.com>
> ---
>  .../devicetree/bindings/phy/samsung,ufs-phy.yaml    | 13 +++++++++----
>  1 file changed, 9 insertions(+), 4 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml b/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml
> index f6ed1a005e7a..80c3ec14375a 100644
> --- a/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/samsung,ufs-phy.yaml
> @@ -40,9 +40,14 @@ properties:
>        - const: tx0_symbol_clk
>  
>    samsung,pmu-syscon:
> -    $ref: '/schemas/types.yaml#/definitions/phandle'
> -    description: phandle for PMU system controller interface, used to
> -                 control pmu registers bits for ufs m-phy
> +    $ref: '/schemas/types.yaml#/definitions/phandle-array'
> +    items:
> +      - items:
> +        - description: phandle for PMU system controller interface, used to
> +                       control pmu registers bits for ufs m-phy

Wrong indentation.

> +        - description: offset of pmu control register for ufs m-phy
> +    description:
> +      can be phandle/offset pair. The offset can be optional.

You made offset required, not optional.  You need minItems:1 on the
level of second "items".

>  
>  required:
>    - "#phy-cells"
> @@ -63,7 +68,7 @@ examples:
>          compatible = "samsung,exynos7-ufs-phy";
>          reg = <0x15571800 0x240>;
>          reg-names = "phy-pma";
> -        samsung,pmu-syscon = <&pmu_system_controller>;
> +        samsung,pmu-syscon = <&pmu_system_controller 0x720>;
>          #phy-cells = <0>;
>          clocks = <&clock_fsys1 SCLK_COMBO_PHY_EMBEDDED_26M>,
>                   <&clock_fsys1 PHYCLK_UFS20_RX1_SYMBOL_USER>,


Best regards,
Krzysztof
