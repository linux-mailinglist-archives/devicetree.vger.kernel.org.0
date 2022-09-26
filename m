Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E8C6C5EA88D
	for <lists+devicetree@lfdr.de>; Mon, 26 Sep 2022 16:37:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234616AbiIZOg6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Sep 2022 10:36:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57342 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234990AbiIZOgY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Sep 2022 10:36:24 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A594063F09
        for <devicetree@vger.kernel.org>; Mon, 26 Sep 2022 05:55:05 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id 10so10704137lfy.5
        for <devicetree@vger.kernel.org>; Mon, 26 Sep 2022 05:55:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=ONMXc2NYSKLU2aN6oTiPbh08PngY0fLPwitzKB3HkaM=;
        b=RfL1gwFExuPHbjESlShA9UaN59Ajr+yNw/ArqU0Q3w7COwsv8TYAFlb9gocMXrHLxV
         6Vr0mkcYl1s5UFFggXoqPfLFKnkdTjieyBcUJ5u3LiZoTx7YMTZL49ijRiYWLdp6Jm90
         fB9Ok7+wqvW3ksYbhKwtKhBiACyS+aJ/lvIQTaOoF4xZjtC4p0rOwcHP/s9BxR8u38Zq
         WQ35DR2GslSqk9E3Yv6/ytNKQSZ2kuvZSo/gL6RcWO6yxaPM1WvKdxtPHVAKrTZh4n2c
         lGyPi9uMCul+LJt/7eenFVDgOCwFKLghNOBx+ZDoRG19njUOAAtw4nfjz3l7Avi0qkGU
         Rglg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=ONMXc2NYSKLU2aN6oTiPbh08PngY0fLPwitzKB3HkaM=;
        b=YOFZEmTiv/QanfE8GZO0GKrihx2h3CtsQgb/WIB0dHIEUCdTea+lblClWVweQy7ADL
         G6+2gBgcC2A1L/hhD20WrnIjqc7JKNMBZ/lQt2Tbh2loO3JlnsSHxRzgD3yeNWRGHx9+
         G4x7dUjSxE9K3kR+L9g5w6d3oiqr7EWUPWmAqnyxdxp45yhgNcnJwV9dte7kUf64dTfE
         f0C1oHOO1S6xSYpqVLwbxQWYYGdq4NcEjRgLkthCmW8f8OekbsQ0H6zGGhSe5ILEvqFF
         zg8/WCwRg88QtG/QrOth6eK4IhaG7gpUmTpRHLgrhDVCful8UP1/suoJ8GFxIx4kfHZz
         xZow==
X-Gm-Message-State: ACrzQf3Ig3Zdrr7egrkULbqgPlbIP13vRkAmptoECFp731Lmk5hrJZsZ
        zh0d+iz286GOHSv06qkQlQrATA==
X-Google-Smtp-Source: AMsMyM4YG0BwIDup3w8JQwlB0GXuUGwi3A9Ea2k/zd4CptpmUQB4VHq9/eJF7KAF8SVPfN/yl9PJiQ==
X-Received: by 2002:a05:6512:3f8b:b0:492:d1ed:5587 with SMTP id x11-20020a0565123f8b00b00492d1ed5587mr9337981lfa.355.1664196903928;
        Mon, 26 Sep 2022 05:55:03 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id 9-20020ac25f09000000b00499f9ba6af0sm2523856lfq.207.2022.09.26.05.55.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Sep 2022 05:55:02 -0700 (PDT)
Message-ID: <0a6d3d14-33f0-92d2-b42f-e4d336c8cd91@linaro.org>
Date:   Mon, 26 Sep 2022 14:55:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH v2] dt-bindings: phy: Add compatible for Mediatek MT8188
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     xinlei.lee@mediatek.com, chunfeng.yun@mediatek.com, kishon@ti.com,
        vkoul@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, matthias.bgg@gmail.com,
        chunkuang.hu@kernel.org, p.zabel@pengutronix.de
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com
References: <1664183509-29473-1-git-send-email-xinlei.lee@mediatek.com>
 <c5ee2888-dabf-e3a6-acca-517ede984002@linaro.org>
In-Reply-To: <c5ee2888-dabf-e3a6-acca-517ede984002@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/09/2022 11:23, Krzysztof Kozlowski wrote:
> On 26/09/2022 11:11, xinlei.lee@mediatek.com wrote:
>> From: xinlei lee <xinlei.lee@mediatek.com>
>>
>> Add dt-binding documentation of dsi-phy for MediaTek MT8188 SoC.
>>
>> Signed-off-by: xinlei lee <xinlei.lee@mediatek.com>
> 
> Please add Acked-by/Reviewed-by tags when posting new versions. However,
> there's no need to repost patches *only* to add the tags. The upstream
> maintainer will do that for acks received on the version they apply.
> 
> https://elixir.bootlin.com/linux/v5.17/source/Documentation/process/submitting-patches.rst#L540
> 
> If a tag was not added on purpose, please state why and what changed.
> 
> 
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


As pointed out in other discussion - these bindings might not be
correct. Please post DTS, so we can validate them.

Best regards,
Krzysztof

