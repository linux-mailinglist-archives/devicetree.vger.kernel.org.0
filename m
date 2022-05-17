Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2A07D52A4F6
	for <lists+devicetree@lfdr.de>; Tue, 17 May 2022 16:34:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349029AbiEQOeO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 May 2022 10:34:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33026 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1348940AbiEQOeK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 May 2022 10:34:10 -0400
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4C2D04F9DE
        for <devicetree@vger.kernel.org>; Tue, 17 May 2022 07:34:09 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id c24so22205009lfv.11
        for <devicetree@vger.kernel.org>; Tue, 17 May 2022 07:34:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=i7zyBF11Q2Vl2Fn+mqi0uKcM3WsZAR1VgADTgLmAWKM=;
        b=JCpSk0IGHnwfJTk7xQhJe8A+lFomuiac/OqKtv6lqPa9YRBRc6Oy0LsPRvupnoGUl5
         4PfRwcZrn4Haar93JXSl4ALQqT1DVsfdFrAJNzt/ot9BFe0O6TiqWjycRaO87u2A4WDx
         Rf7T6tFEbSdsmJyfKg2M2cq3FkJTiztv+oMb+vcTV2T4U303G93rrs8qi/PYVF+CniPQ
         eTUVG5bd8aoQ3p5tU2YNJHXLytDO8D/tEUaDYyRv4HksDgXF+RP5zNP/W7Y/LUvIbhyw
         1NcfZl0Guvv86a6A6VONM9dBMgs4kb1ThWETAmhIXwd9FeNfXyyxcAHmHwt4vhMSz4s4
         bK6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=i7zyBF11Q2Vl2Fn+mqi0uKcM3WsZAR1VgADTgLmAWKM=;
        b=NvXrDbRThWAVZ8guQj625x3k9EaLIRBxArwAvJyFJXo7fYBvIrSanT3PTPaLPs0c/f
         hd2d8WfXX4oQjXOXslWovjc5Flg8/r2/nAER0KajKuedRMSTGjde38PduWYWK1uwH1Qt
         U9lXyFZLQSqPbFi3JuvI1wlMd0Ra5UBV5W74MjpACfGSeLjZArDzRfEIDkG12cUHOuDA
         BkmVDw1/SFzKhNLDmGLOQtz4HfT30GrhMJ1DccHeH5142NtdC0DdxdcCCJDzngEAUIAb
         V3EE1Y0TuL1TW87OfSODzd3fM5A5nrPoWayrVvbZXvzh2rCS4vVGPi2QpOIzMcXec2GM
         2t6g==
X-Gm-Message-State: AOAM530wBVisR30j1ebo2sG0WxpUsBQI5h6HTkcXUm762vlDdDysDxav
        myNKf/ZzDSzPcJn41tVR18tBCg==
X-Google-Smtp-Source: ABdhPJxmyXlow8oB2WHW+IPzYvMvUo7PgS65PH8PfGpbQdVffrPDgyMeyka8WdFf8rtH5SvKTFfMHg==
X-Received: by 2002:a19:5043:0:b0:472:36fd:4fc2 with SMTP id z3-20020a195043000000b0047236fd4fc2mr16723908lfj.258.1652798047702;
        Tue, 17 May 2022 07:34:07 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id p13-20020a19f00d000000b0047255d211c1sm1601365lfc.240.2022.05.17.07.34.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 May 2022 07:34:07 -0700 (PDT)
Message-ID: <1cec6a09-9d80-99e7-ccc4-c918c6be7dbb@linaro.org>
Date:   Tue, 17 May 2022 16:34:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH 2/6] dt-bindings: arm: mt8186: Set #clock-cells as
 required property
Content-Language: en-US
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>, robh+dt@kernel.org
Cc:     krzysztof.kozlowski+dt@linaro.org, matthias.bgg@gmail.com,
        sboyd@kernel.org, chun-jie.chen@mediatek.com,
        rex-bc.chen@mediatek.com, wenst@chromium.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220517101514.21639-1-angelogioacchino.delregno@collabora.com>
 <20220517101514.21639-3-angelogioacchino.delregno@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220517101514.21639-3-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/05/2022 12:15, AngeloGioacchino Del Regno wrote:
> This is a clock-controller binding, so it needs #clock-cells, or
> it would be of no use: add that to the list of required properties.
> 
> Fixes: f113a51aa2cf ("dt-bindings: ARM: MediaTek: Add new document bindings of MT8186 clock")
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> ---
>  .../devicetree/bindings/arm/mediatek/mediatek,mt8186-clock.yaml  | 1 +

If these are clock controllers and new bindings, why they were added to
"arm" directory? arm is only for top-level stuff, not for devices.

In the future please put your bindings in respective subsystem matching
the hardware. Fallback is soc directory, not arm.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof
