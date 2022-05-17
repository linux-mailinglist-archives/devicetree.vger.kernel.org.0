Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E714252A4F8
	for <lists+devicetree@lfdr.de>; Tue, 17 May 2022 16:34:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349037AbiEQOei (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 May 2022 10:34:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33532 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349044AbiEQOeg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 May 2022 10:34:36 -0400
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D013526136
        for <devicetree@vger.kernel.org>; Tue, 17 May 2022 07:34:35 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id m6so1462313ljb.2
        for <devicetree@vger.kernel.org>; Tue, 17 May 2022 07:34:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=BKEEIeJk9pyimkOwL771ve8zRGUvSRERiQLufVuk7FQ=;
        b=B9fOsmEcSjoHKTTzN+vwzSwM+wiYNXRp3MzXSbowWqT7alwNRgnZRyDUTBJtLsQU+w
         JZnX/6GOOiB+HyQTVVZIZxs9y1jXptk6aFz+R6OIPMVdiXkhW0GQUNW6qbuCNbrWNFQQ
         hK1qARpFVkTE7OOCeSEKn7pL6T+GL5hZY7ycmR9EKHjMBY+8IJ72TCIcrfcUuz2prdol
         meb05JUTHO2vVQ97IdeCTadCfpgx+cm7Wv2qP1MxaTgDDBDdl4oHoFXz1O7zWGbTMRfo
         FIFmPsNiO+tBa4fRBfb8r0IRZXoa7/2ESWsrOfRDvfc+5PdNUAC9p8dnOHfRaoWyhRYo
         UTIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=BKEEIeJk9pyimkOwL771ve8zRGUvSRERiQLufVuk7FQ=;
        b=dq25UAtOgVIMUS3/t/SbUmQEuSkZpfszTyAhmG/z6yhXkEPD3JT7iVx7xG0yiPLU3B
         Sym+EIvYSLsfuGzgHFgRb9Q93XXfLGBtehMuKVxq80Jf3cg8VFIBPvGUPZ3O+BtoYZEd
         5rnEWFvOLSngI4veT6NH96z5GImFCNiM9mb8k1CGKyjh1zvpwBNgTuiZ7nn/tCbtkCoB
         ZSxIslM12PVt9GxkABO3rpZMbo+YBFq4swrJkxU6H4/ZHdtBQqrSGLz9bEUA+1ZCiQ/Q
         jXE1/ek4kQPoo/GZHY24uEDXQQyheeTw+7+RGrfVKMQ9j6aoPcX3gJE/8ohuRPpoLdNt
         RhGQ==
X-Gm-Message-State: AOAM531SLb0oDwxF7x34HFtX0Lx0h2e0mK+yhAWn4s7mfGH2QQmw0f/U
        6ihxq5vRGEXJ6YM+uASmz2ePFw==
X-Google-Smtp-Source: ABdhPJxTbEck3uE8gmC09mqS32JpeRDUp/hAOTqTyVf3mpKHQovSsQyfUmD92szkmQkxjE/azPNPEg==
X-Received: by 2002:a2e:7502:0:b0:250:9c00:b973 with SMTP id q2-20020a2e7502000000b002509c00b973mr14283382ljc.23.1652798074190;
        Tue, 17 May 2022 07:34:34 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id g15-20020a2ea4af000000b0024f4bb33c50sm1847960ljm.100.2022.05.17.07.34.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 May 2022 07:34:33 -0700 (PDT)
Message-ID: <912f9756-e0b6-01da-27f7-2956558d327e@linaro.org>
Date:   Tue, 17 May 2022 16:34:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH 4/6] dt-bindings: arm: mt8195: Set #clock-cells as
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
 <20220517101514.21639-5-angelogioacchino.delregno@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220517101514.21639-5-angelogioacchino.delregno@collabora.com>
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
> Fixes: 34d3ed3b9a00 ("dt-bindings: ARM: Mediatek: Add new document bindings of MT8195 clock")
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
