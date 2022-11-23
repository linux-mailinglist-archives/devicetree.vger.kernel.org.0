Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 096EF63618C
	for <lists+devicetree@lfdr.de>; Wed, 23 Nov 2022 15:23:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235433AbiKWOXT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Nov 2022 09:23:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44106 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238675AbiKWOWQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Nov 2022 09:22:16 -0500
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E61F7342E
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 06:21:41 -0800 (PST)
Received: by mail-lf1-x129.google.com with SMTP id j4so28416577lfk.0
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 06:21:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fPaU0ihKUwES7YP9bj8Bd9C2gOMIphuLTRBALZi26BU=;
        b=gkSrT0okjpIU3rS9gH1VkF40Y8OTIsxn1QE4ZRCvUuMZ4BQvzLb70BOcrnHYGI3xn3
         JaWnc6IMI7X9X9RKfh+gll6/e3c0oPzTX26soNTwc1aV8a1hpxYimq+ZT2V3Veg1wvTn
         yDFRMrPWTUvVt9L+Lir8BcYe05hUxNyMDdTTVsncUVoWTJZVLUZuvzhIQ4SeyNHDb8NZ
         7baJRQJaJOZ2Yv2pbWOtmr6YFXAXgNNXBAMr/JRuGXve+WHa7oT3RnZ1jskKOrpbQHPr
         8ZjrJqxZaBRPAKj+rfu2axf8G43ocj2BUas6cC1gpfQ4nUkzWWgpFcifDjJLKAsTorVp
         +ehg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fPaU0ihKUwES7YP9bj8Bd9C2gOMIphuLTRBALZi26BU=;
        b=pcFzo2eNtZIzOFNd2XZR0TgpqtWP6cQnl1Zm76r06TIoPaAIwiMSfZwodkDtzeXVmu
         kkhv4unwb1lAb7uyYluCSwGowPxDp6sVjaIBQUlCjQ4tOhNQXoEowwWZqdMinqi+7wQN
         h5jFoVA7qrFJrhWJd44FSktFz3dHBlLC0Dku4Mown48M3fxSf58Z00s7BZQNh7YOeuLB
         oyvgn9eK3TbT37wQQU9772vCwC0cIUkfDg3f4WUtHavRQDosC+eMHxzQqvKZ8epG6+fN
         1WOf/ZLu3E/h/K92pkizxo5K+R6RSOJAyeYgZA5pADosAK3LWkvI8Mkccn85qFUySI0V
         B91A==
X-Gm-Message-State: ANoB5pnLYvlKOU/7srA7qtDK+cawgUScgIpFt5QSM+hfpBnTWQBdQpIh
        KnRjZmrQYU4JIa67nkDRu1+16w==
X-Google-Smtp-Source: AA0mqf65BASzQ9odKyts8fSIaGACST3o+M+biAHrkO6WGFuKG27m2PLivwFY9m7W+LJd4EblbphEMA==
X-Received: by 2002:a19:5047:0:b0:4ab:7f8d:46c with SMTP id z7-20020a195047000000b004ab7f8d046cmr9176339lfj.383.1669213299925;
        Wed, 23 Nov 2022 06:21:39 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id w1-20020a05651234c100b00492e5d31201sm2900837lfr.7.2022.11.23.06.21.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Nov 2022 06:21:38 -0800 (PST)
Message-ID: <b8919fea-a787-58df-ec47-eddbb493e6a2@linaro.org>
Date:   Wed, 23 Nov 2022 15:21:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH v2 1/4] dt-bindings: interrupt-controller: mediatek,cirq:
 Migrate to dt schema
Content-Language: en-US
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>, tglx@linutronix.de
Cc:     maz@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, matthias.bgg@gmail.com,
        youlin.pei@mediatek.com, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
References: <20221123112249.98281-1-angelogioacchino.delregno@collabora.com>
 <20221123112249.98281-2-angelogioacchino.delregno@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221123112249.98281-2-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/11/2022 12:22, AngeloGioacchino Del Regno wrote:
> Migrate mediatek,cirq.txt to dt schema as mediatek,mtk-cirq.yaml.
> While at it, I've also fixed some typos that were present in the
> original txt binding, as it was suggesting that the compatible
> string would have "mediatek,cirq" as compatible but, in reality,
> that's supposed to be "mediatek,mtk-cirq" instead.
> 
> Little rewording on property descriptions also happened for
> them to be more concise.
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> ---
>  .../interrupt-controller/mediatek,cirq.txt    | 33 ---------


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

