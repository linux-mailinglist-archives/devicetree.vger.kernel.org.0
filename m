Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 651EE5BBD3B
	for <lists+devicetree@lfdr.de>; Sun, 18 Sep 2022 11:59:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229793AbiIRJ62 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 18 Sep 2022 05:58:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36378 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230017AbiIRJ6L (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 18 Sep 2022 05:58:11 -0400
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3D9AE18B0F
        for <devicetree@vger.kernel.org>; Sun, 18 Sep 2022 02:55:51 -0700 (PDT)
Received: by mail-lj1-x22f.google.com with SMTP id r20so18424360ljj.0
        for <devicetree@vger.kernel.org>; Sun, 18 Sep 2022 02:55:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=uJDbkaS+XsYA+l+f+wbMnU3wGxWDofURrR9zLtociWE=;
        b=UTLclj9isYRIkZwI/IEgMUn1xnFFiMIUn5BEDdx4mcbGyCIdk/7lEMpwdsGscUCpfs
         ZkaA7tyHUbJtjLYuLsZJbUdMIa5zEXoCbJZ4i4yuvbf39j5wgHlu7MFPiKcj9ckbugZj
         0qXrEc9dOIKLVa08k656mgAwRYs6UvUSH/F+ScYCz1VcutArFRKXB64fxqM/qe6RsXKI
         gye97Iz0PsXPpFAt8GIUqXCFKDCWxI8SjCy//QfHJ9AOxhC8j6WvWUR/xjgxzWOZWXTZ
         SZ47WKYZGaIpV5x1HMu9myl2+qZPfim/u6/vw1yH8ZBFspYe9KNDXLHj7Sv8iOw++S9p
         TvKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=uJDbkaS+XsYA+l+f+wbMnU3wGxWDofURrR9zLtociWE=;
        b=PI7/i3WqJpLHfAN3hJ294wfMMPaQ4VKEKIyuAceOagxWZ5iSU4W///GHIH6x4ryPu6
         2MBf5rrlaaPO/vvmXZe24BMnKz4j16f/5M6s6A5mhs2NQTHTvDoRS9pOmPYZg34n9sCa
         h/Wakntn3H093I4eJkiMamvOC5s5NXbnugJsMcXbjp0Fbe6ajHcyrdqzzNBjDS2GxaJR
         vI2SF9r4JwmgFF6GhZSe+cC5FHq8fXB76Sux9bV2z4zTwS1+PUdDIzJG8nTiFrplwy2U
         NTbl46xswr+gp19slpQQkYfvggOdHmUPFsgc5Nd5DBUCqUk75KswTTe0B5pXYAn9x368
         Cziw==
X-Gm-Message-State: ACrzQf3B0cAc74H99Qi1ZTSO1+9NEtRKcQ3QJuq6kMMN9oEe1E95sZFf
        xTRYV4B91f+4058OW7BW1O/IlFkrLOXhDw==
X-Google-Smtp-Source: AMsMyM7YhycPtcrow7NNduVCQCLpXLeHqzsHwGbPl7HWaKdORAeYW8z0BTfhkDBJyNg+yZ0X1gYzNQ==
X-Received: by 2002:a2e:891a:0:b0:26b:ebcc:68fb with SMTP id d26-20020a2e891a000000b0026bebcc68fbmr3528397lji.427.1663494949351;
        Sun, 18 Sep 2022 02:55:49 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id z9-20020a056512370900b00494a27500c1sm4583294lfr.163.2022.09.18.02.55.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 18 Sep 2022 02:55:48 -0700 (PDT)
Message-ID: <2cccf8a3-20cb-5cdc-cd42-9efe82c35320@linaro.org>
Date:   Sun, 18 Sep 2022 10:55:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 4/7] dt-bindings: leds: leds-mt6323: Document mt6331
 compatible
Content-Language: en-US
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>, sean.wang@mediatek.com
Cc:     pavel@ucw.cz, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, matthias.bgg@gmail.com,
        linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220915091214.59673-1-angelogioacchino.delregno@collabora.com>
 <20220915091214.59673-5-angelogioacchino.delregno@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220915091214.59673-5-angelogioacchino.delregno@collabora.com>
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

On 15/09/2022 10:12, AngeloGioacchino Del Regno wrote:
> Add mediatek,mt6331-led compatible for the LED controller found
> in the MT6331 PMIC.
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> ---
>  Documentation/devicetree/bindings/leds/leds-mt6323.txt | 4 +++-


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
