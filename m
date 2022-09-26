Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EE99A5E9D7B
	for <lists+devicetree@lfdr.de>; Mon, 26 Sep 2022 11:24:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234305AbiIZJYh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Sep 2022 05:24:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39534 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235041AbiIZJYP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Sep 2022 05:24:15 -0400
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BD01117AB1
        for <devicetree@vger.kernel.org>; Mon, 26 Sep 2022 02:23:17 -0700 (PDT)
Received: by mail-lj1-x229.google.com with SMTP id t16so2688780ljh.3
        for <devicetree@vger.kernel.org>; Mon, 26 Sep 2022 02:23:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=goc6PkT5m1P9sof9+UJf/eV/J47j0G84vgW/lekQxV8=;
        b=GIC2DbN3y87NHYbRBWxz9PgdwQ6FEZkjUI12TMcgFoqNw0Ha2n1EpIyNUGv7y2vGUA
         qrkRBp7t4ZaeBJm8yVs+4q2t2xI/IXzCG4IWGsLXAl/862w0Hn2L2oHIRaOmsur7NsU8
         RScuWt7PM8ant0LNXv4DjG8D7INyhVqLzTcyow5FbksX1oOuGQYjeVHyYFzDxpl1CRa7
         WPK3nT7A4jl2vSmYgHwCoXgUmQXUjSoLD0GMbaWusCyhhyWR2zkVejzgkZ8ec3G/SL9c
         QAiKVfNZ2amFSUqADSlrgNyU8xG41rtNnNVSunT9nXqXvGtIKKMoHldljhjviEgO1XLD
         N4SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=goc6PkT5m1P9sof9+UJf/eV/J47j0G84vgW/lekQxV8=;
        b=f2GcK/1XS9UjBEZHEI4Ha33j+hd0fyDSOZIZdpTOU1hgTSi7AOdxKBD+i4i99Yy0k/
         1c1+fc4qBmcL+sn5JRcJK0Ea7wIKitF5MGMDkoDh1ld7DE8HR+ncEXWaRop1qufCqbjm
         M6DJWCwbsl5vBbzRINbh38rjMJPS3LRj5YKPZH9bye8m+mnpOp9OQ4uuwot1/EZCHt7y
         pbNrjyc0mViwLCdFBuc4u/C8NhjiRh+j3N2O2+BthnbdAthRJGqw816U+OIKLuyXxKlo
         nnMxlaP91JDHBufNIzYS1noyvMvcIBUaYH6R0HaSAwETLAbkD9ugWF02MSAWoutx7tyr
         vw3A==
X-Gm-Message-State: ACrzQf3PCpRwZd7iAiGuUVm/cwDJXFQI5o4tuIpXCZ7v4hHNMHesrTM1
        b5DxWri4XiiICC7haORl4vt/xA==
X-Google-Smtp-Source: AMsMyM7G0RdidG+n9hog4aSXdwdlwpRd2hv5uqsZGByfjwBD4Msi4qq0KH2y8EthPGxEXM2x7H0xhw==
X-Received: by 2002:a05:651c:221a:b0:26c:6fe2:c146 with SMTP id y26-20020a05651c221a00b0026c6fe2c146mr7198207ljq.284.1664184195964;
        Mon, 26 Sep 2022 02:23:15 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id q14-20020a056512210e00b004972b0bb426sm2481294lfr.257.2022.09.26.02.23.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Sep 2022 02:23:15 -0700 (PDT)
Message-ID: <c5ee2888-dabf-e3a6-acca-517ede984002@linaro.org>
Date:   Mon, 26 Sep 2022 11:23:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH v2] dt-bindings: phy: Add compatible for Mediatek MT8188
Content-Language: en-US
To:     xinlei.lee@mediatek.com, chunfeng.yun@mediatek.com, kishon@ti.com,
        vkoul@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, matthias.bgg@gmail.com,
        chunkuang.hu@kernel.org, p.zabel@pengutronix.de
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com
References: <1664183509-29473-1-git-send-email-xinlei.lee@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1664183509-29473-1-git-send-email-xinlei.lee@mediatek.com>
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

On 26/09/2022 11:11, xinlei.lee@mediatek.com wrote:
> From: xinlei lee <xinlei.lee@mediatek.com>
> 
> Add dt-binding documentation of dsi-phy for MediaTek MT8188 SoC.
> 
> Signed-off-by: xinlei lee <xinlei.lee@mediatek.com>

Please add Acked-by/Reviewed-by tags when posting new versions. However,
there's no need to repost patches *only* to add the tags. The upstream
maintainer will do that for acks received on the version they apply.

https://elixir.bootlin.com/linux/v5.17/source/Documentation/process/submitting-patches.rst#L540

If a tag was not added on purpose, please state why and what changed.


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

