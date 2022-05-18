Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 38C0B52B91B
	for <lists+devicetree@lfdr.de>; Wed, 18 May 2022 13:55:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235773AbiERLrC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 May 2022 07:47:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54448 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235878AbiERLq4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 May 2022 07:46:56 -0400
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D7333337D
        for <devicetree@vger.kernel.org>; Wed, 18 May 2022 04:46:51 -0700 (PDT)
Received: by mail-lj1-x22f.google.com with SMTP id h8so2189973ljb.6
        for <devicetree@vger.kernel.org>; Wed, 18 May 2022 04:46:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=EDiPOA35YpIMmzK7dsSM1qtvLUD5H06MjqcVVznfnc8=;
        b=GxUQeWpawScCuAuO/Vl1cXyxJaV+vVOfQG8DVLc0IwhvTeh0gzW3LqGLu/OYc/lqUT
         1pHPWQ2yJRopu2YLSwcgf2H3h0japAKr0Ja+1FenPLLuoct1RHN1c0kcPevjUkYoZPzE
         1cztIm1FRfcBvnuDwAmNYzde/A9OWVfDH1DdoDCFGL24YK1agIKXAEAZjYMfdPDusvZH
         3onMgofqkIQMZO8qa7EBhKHjQSYWSmwaBZ3mrP/U9qEH9POYzVeO7qTRYKN8JNRGMoQR
         qntjz1vdghAyKUekVZU98RugLY9xI2m9SNU2KfJZgPZt9zSmaozi6xaZ5iuAFP2S2Xqt
         E+cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=EDiPOA35YpIMmzK7dsSM1qtvLUD5H06MjqcVVznfnc8=;
        b=rAdCSVhrrff0izlGcW71bJF1uAaywa4PWoLwkAGoezSHvHVOUkYmUX/ukPNNCNDaz4
         grjDo4aXSQ4GAfM2dQKvouec3IfrnxEBvcs5K1zSZ5eAi/NCO8oVQiH0Bqw8V8DwWpic
         N0Xf9KTCCNaoxOicMXDaxy5cFF67zcwa2NgayvKUDW6LU9odzEAGP12KMhfsqJZFiyeH
         1RjPuAwvVfzoNrrO3nZIQIrkFvnshjS/ZrcBoxyvAZ4W+k+NyEXvutb8LaNpYKvRdPdQ
         3X9ZtieYn01iMvkRAeHj52M0C7acmg5Knn6o6ai4+3YpOyXcCtZwE3l6M1169tJMv2yM
         ck3g==
X-Gm-Message-State: AOAM531xS4kQaxHEMp4RvGG59mBh+s49agV0DAj3MVoXpu4Z8LpubUg4
        jRmrq66xLAb2WqZoyJ19wtzgxw==
X-Google-Smtp-Source: ABdhPJzVz5C2Bp0+KEsQVVSs0hSJ0o9YxpGpmUSFF/kiVX1ysvgaDMd7Dyc8MR2g9VB8Ei3Pgdy3ug==
X-Received: by 2002:a2e:7f17:0:b0:253:adc1:697f with SMTP id a23-20020a2e7f17000000b00253adc1697fmr6886566ljd.418.1652874409374;
        Wed, 18 May 2022 04:46:49 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id c20-20020a2e6814000000b00253ccff0211sm93272lja.118.2022.05.18.04.46.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 May 2022 04:46:48 -0700 (PDT)
Message-ID: <81dcc83b-7ef0-779e-ad2b-8d0722b48ba4@linaro.org>
Date:   Wed, 18 May 2022 13:46:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v2 2/2] dt-bindings: arm: mtk-clocks: Set #clock-cells as
 required property
Content-Language: en-US
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>, robh+dt@kernel.org
Cc:     krzysztof.kozlowski+dt@linaro.org, matthias.bgg@gmail.com,
        sboyd@kernel.org, chun-jie.chen@mediatek.com,
        rex-bc.chen@mediatek.com, wenst@chromium.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220518093631.25491-1-angelogioacchino.delregno@collabora.com>
 <20220518093631.25491-3-angelogioacchino.delregno@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220518093631.25491-3-angelogioacchino.delregno@collabora.com>
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

On 18/05/2022 11:36, AngeloGioacchino Del Regno wrote:
> This is a clock-controller binding, so it needs #clock-cells, or
> it would be of no use: add that to the list of required properties.
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

These I considered as somehow fixes so I did not ask to remove the Fixes
tag, so also not squashing. It's fine, though...

Best regards,
Krzysztof
