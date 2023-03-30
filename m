Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1B3696CFC16
	for <lists+devicetree@lfdr.de>; Thu, 30 Mar 2023 08:59:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229889AbjC3G7S (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Mar 2023 02:59:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50180 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229595AbjC3G7R (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Mar 2023 02:59:17 -0400
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0F697210C
        for <devicetree@vger.kernel.org>; Wed, 29 Mar 2023 23:59:16 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id q14so18567896ljm.11
        for <devicetree@vger.kernel.org>; Wed, 29 Mar 2023 23:59:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680159554;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DpkyCgvj4WryLDUxuD+mVvNVV1z1ICnLVaYscONhSWI=;
        b=kBhe+XYF6lQ6UpQYErty3sNRIodLnvM+8CvBtSwIQUAs5pkvL7ASV7yPppeJ3GCEqB
         8EugfSd9EgGB41P8zO/BUazCufcku8KpkSFzYvfzsygLOoLs3UfUFwNYpCfmqn2/QuAt
         sKjJIC1qu8GhDdxGHgomUQdHBvSil7rWAWwkRUU25GodxC1bZnZT7Wd4RsxyFwUduI38
         qamzW4vRVU3a6652VYjKWY6wSxUQ3ljWDAh69vcUq33Crc/RGD5zRcaNWadE8Gmrkh/L
         xyhQAPtUjHMEaBaNLZ3gvejwPA+09gVhLK791Sh3W9uZumXLQdd5ZgeiPSJeVfYf8cSq
         fSuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680159554;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DpkyCgvj4WryLDUxuD+mVvNVV1z1ICnLVaYscONhSWI=;
        b=tn265Xn/qNuTZh3RWEhXoOZRMa3SeIXqxltUo+6lmXxAAtT3fnNMoD1bCGzXJGSpmy
         Y/wlMyxoXX5L848eIPBPgYSXMY4ls7WHhqlbccUCFhLDNZolnKDKsaAbIZ7i8k1wSZ8N
         qc9wPyqraDBM5rNhkteJjjfS2ICklAAX9go6Say5IcycAeB1DHu9ISpK3Yb/WCW8y7Th
         EK1qqsrhQop+Yb+HvCULQ6xSlBYvGXYWZBs36wKjvtkSAjzuVpdZ6nUpbQ8RHIjQciFP
         DeqHfRjkoIeAKoaH2xQ3JNpkQG+tq9AAp/ubIQOf3nwYq0Yv6UYbyj6zUYYaBKLS8dGU
         vxGA==
X-Gm-Message-State: AAQBX9f3kg9lQJv382V1lOw1rtMk/yDK49SUPUVqNOjz7eUyv/BIUblr
        Olwy8DtRaQWrMkgYHFCnaES7+g==
X-Google-Smtp-Source: AKy350aUPwktkt+XR5pPPg5JY4SayHpX8STy4rc7Xv9y8lUqG2IKYfYEJjZu05zEfyutuNS6yKfvfw==
X-Received: by 2002:a2e:9ece:0:b0:298:b362:6258 with SMTP id h14-20020a2e9ece000000b00298b3626258mr5972086ljk.52.1680159554253;
        Wed, 29 Mar 2023 23:59:14 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id w3-20020a2e9bc3000000b00298c7f21105sm5622272ljj.66.2023.03.29.23.59.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Mar 2023 23:59:13 -0700 (PDT)
Message-ID: <3bb3f40f-39da-2fe6-f5ca-2848a9e5c49b@linaro.org>
Date:   Thu, 30 Mar 2023 08:59:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v3 07/10] ASoC: dt-bindings: qcom,lpass-va-macro: Add
 missing NPL clock
To:     Mark Brown <broonie@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Takashi Iwai <tiwai@suse.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Jaroslav Kysela <perex@perex.cz>,
        Patrick Lai <quic_plai@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Banajit Goswami <bgoswami@quicinc.com>,
        Liam Girdwood <lgirdwood@gmail.com>
References: <20230327132254.147975-1-krzysztof.kozlowski@linaro.org>
 <20230327132254.147975-8-krzysztof.kozlowski@linaro.org>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230327132254.147975-8-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/03/2023 15:22, Krzysztof Kozlowski wrote:
> Several devices (e.g. SC8280XP and SM8450) expect a NPL (Near Pad Logic)
> clock.  Add the clock and customize allowed clocks per each variant.
> The clocks are also required by ADSP in all variants.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> ---
> 
> Changes since v1:
> 1. New patch.
> ---
>  .../bindings/sound/qcom,lpass-va-macro.yaml   | 68 ++++++++++++++++---

Mark,

It seems you applied v2, not v3, so this patch is missing and the
binding needs fixes.

I will send a new version of this.


Best regards,
Krzysztof

