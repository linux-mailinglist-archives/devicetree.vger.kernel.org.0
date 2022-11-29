Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D376A63C55E
	for <lists+devicetree@lfdr.de>; Tue, 29 Nov 2022 17:42:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235788AbiK2QmF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Nov 2022 11:42:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38756 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232871AbiK2QmE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Nov 2022 11:42:04 -0500
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B24466204D
        for <devicetree@vger.kernel.org>; Tue, 29 Nov 2022 08:42:02 -0800 (PST)
Received: by mail-lf1-x12f.google.com with SMTP id c1so22904477lfi.7
        for <devicetree@vger.kernel.org>; Tue, 29 Nov 2022 08:42:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XWZiFupZmDV7/chy9twlz/bKtxk28a/BQ1OZ+FIK00Q=;
        b=j3EsDtkRr80dfR/xeJF6gwYP1e2sFcIhQ0oQxLHTXGRJMj/Bmz6c7p2NFqU7z7QWo1
         biaxP/5qvxiT1oMtwIETJvlry+NdYKhI1LiZsQlnXQlVpDfGYzKbfFbjXGbJ2vmfUOxm
         YhOJGMmSCtbXYaw5JSVRR2qWhbjifompBrqmVbMvW6H8L9SrVWDZagp5r2/LzDK7B5EG
         xUOAPKWgj3Zunrr3jWYwAzeV9cF4+rJqeRWkkh+4nwTHSgJQjUkOtHs2oI21xd0xZsJK
         YLW6LWbjiecVovrgfTN1M+dkkMEeztmHmxD3b1t5rp3+wvMwamvASvUsASBPUvcReqLI
         njNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XWZiFupZmDV7/chy9twlz/bKtxk28a/BQ1OZ+FIK00Q=;
        b=AMbbI/ucXGjtHvKMgOJAYl3nAR+6hAcoEsFBPYoW9oNYcRuwciTf+JsjTDPVhfLS0j
         z+JogzVwXKSTkyFAPGQxYgo+31UzUk++FA7ED/cCQWisZLpgDTDh1jbY32p4Gnb6LP0u
         ULfy7Gs4jI+JdTuon9LDxF1a78jlBWMJ259tij2yx0LLNJx8xMDhZjmDRParIGGlmn6S
         5t29QMDuoVL9LNWWI5DOHNkHkf/xAKN0K3D99BW15+r8hcG9LaM6ICZOAGudbqHpNLYc
         52eynvsPLT68jugxQxwst1NCPmxt4mxn8h2Db0S/FqQoffweyIXQPsBpzkK36xjhQo6O
         Ybew==
X-Gm-Message-State: ANoB5pkWcRJwerGF5yl2Fhqreqr6Efk/HTIaJuSFcYTjYzN2f73xFWQF
        ey+DvCrxlO0V1vfp6f1Gi6LBBg==
X-Google-Smtp-Source: AA0mqf6bs+MHPq8y/pL1cJ9bImpeUwmQ9PU7zQoTQbWZQI9Y71CuCT3zsDhIG8N1gXr1WdkMo53Jlw==
X-Received: by 2002:ac2:4e82:0:b0:4ac:9f25:21c2 with SMTP id o2-20020ac24e82000000b004ac9f2521c2mr16017549lfr.519.1669740120942;
        Tue, 29 Nov 2022 08:42:00 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id d13-20020ac244cd000000b004b48e0f619asm2271574lfm.48.2022.11.29.08.41.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Nov 2022 08:42:00 -0800 (PST)
Message-ID: <4299d2eb-7724-ced4-dd68-0f0734725e6b@linaro.org>
Date:   Tue, 29 Nov 2022 17:41:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH v3 2/6] dt-bindings: mediatek: modify VDOSYS0 mmsys device
 tree Documentations for MT8188
Content-Language: en-US
To:     "nathan.lu" <nathan.lu@mediatek.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     "jason-jh . lin" <jason-jh.lin@mediatek.com>,
        CK Hu <ck.hu@mediatek.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Rex-BC Chen <rex-bc.chen@mediatek.com>,
        Moudy Ho <moudy.ho@mediatek.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        linux-mediatek@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, lancelot.wu@mediatek.com,
        Project_Global_Chrome_Upstream_Group@mediatek.com
References: <20221129143503.16638-1-nathan.lu@mediatek.com>
 <20221129143503.16638-3-nathan.lu@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221129143503.16638-3-nathan.lu@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 29/11/2022 15:34, nathan.lu wrote:
> From: Nathan Lu <nathan.lu@mediatek.com>
> 
> modify VDOSYS0 mmsys device tree Documentations for MT8188.
> 
> Signed-off-by: Nathan Lu <nathan.lu@mediatek.com>
> ---
>  .../devicetree/bindings/arm/mediatek/mediatek,mmsys.yaml      | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/mediatek/mediatek,mmsys.yaml b/Documentation/devicetree/bindings/arm/mediatek/mediatek,mmsys.yaml
> index 0711f1834fbd..3e7fb33201c5 100644
> --- a/Documentation/devicetree/bindings/arm/mediatek/mediatek,mmsys.yaml
> +++ b/Documentation/devicetree/bindings/arm/mediatek/mediatek,mmsys.yaml
> @@ -47,6 +47,10 @@ properties:
>            - const: mediatek,mt2701-mmsys
>            - const: syscon
>  
> +      - items:
> +          - const: mediatek,mt8188-vdosys0

Why this is not part of previous enum?

Best regards,
Krzysztof

