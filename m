Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4EF096BA7E0
	for <lists+devicetree@lfdr.de>; Wed, 15 Mar 2023 07:33:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229734AbjCOGdV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Mar 2023 02:33:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44320 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230094AbjCOGdT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Mar 2023 02:33:19 -0400
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F1F5043919
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 23:33:08 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id eh3so15440688edb.11
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 23:33:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678861987;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6O+67IztLcbRdjfu86x4TR9bmaGpYkae+Z81ttWc3M8=;
        b=Y+d3Zqw+fnjc7vYA1qMfkSqWuIeZYJdDandLuNEvaB+6vdi6Y6vSVKdUlSYPq8+hCY
         ZuC7C61pBisMr2BPWVyRCGTX64XQwIFZowNaZpKNQaOwTACXuyhdaxz4n5V4cnHzBZQh
         G9v1hSnfNrdG5VNCvMu9H1aYXpOmfdAx8hQt/WAITu0GzVywwa0thzO7JRUr7s2Oe1GU
         mnHWsXdhFiOhQOA5UutAxfEBTdl1be2aXU+TpJtXgBz1nNy4WoNPgieGwkeYEMnuN9PF
         QvN/nEGmburnbA/8QPtkz0iY3y79KDJiiK0dzXX30+zlfHEmqoYZlO4RZzmFx8x3GBUY
         B0oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678861987;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6O+67IztLcbRdjfu86x4TR9bmaGpYkae+Z81ttWc3M8=;
        b=USdSjn6HVQIHfMHgjjVOHwcJSE2P9NC2l6WT98Vdedx6AUfZa39qPVr316sLNGO4fH
         Tqg5bovDQ2Mw1L3ectVFfLzyu/Ck58+uOt8pbe9tJvtsZW+tQ0a8kb6qiTGDu/Enu44Z
         2RfzbvZCM+xfXKkcQC5MWBHZ2moKcxcfGlieWMAWyyhaj6BmTIvk7z08q6vN1Fp+P+lS
         9QAQwArSe4OiBSKtx3+YGVnl4ikDiHZPdwZyMVfvIr2JSi5NGiHBF+PlziZRATkmaYpF
         ogZoI3My1/TxeqCM+s49/4pMPhouf8HG5Y0v8jCkJmcZm56/olNV+57dCc5XmlkxkxRm
         r/aQ==
X-Gm-Message-State: AO0yUKXENyO2BRjQWGC2aBKUFqpku1qvwZ7m0w7coCy4KD4dybbpRG2x
        bSr1W2i28iq991kTeLesL6EuBw==
X-Google-Smtp-Source: AK7set8R3aSi2Th6BvPjjIeopEtwlzinsZKsEuhAPfo29wLWmghjVsTwGenPQqIgIKmjM5LAa0VpFg==
X-Received: by 2002:a17:907:8e9a:b0:92f:3fbb:a077 with SMTP id tx26-20020a1709078e9a00b0092f3fbba077mr334014ejc.72.1678861986970;
        Tue, 14 Mar 2023 23:33:06 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:940e:8615:37dc:c2bd? ([2a02:810d:15c0:828:940e:8615:37dc:c2bd])
        by smtp.gmail.com with ESMTPSA id kg27-20020a17090776fb00b008c9b44b7851sm2039897ejc.182.2023.03.14.23.33.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Mar 2023 23:33:06 -0700 (PDT)
Message-ID: <33607509-e714-2f35-6331-d193d0dd89f6@linaro.org>
Date:   Wed, 15 Mar 2023 07:33:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: qcom: Add Acer Aspire 1
Content-Language: en-US
To:     Nikita Travkin <nikita@trvn.ru>, agross@kernel.org,
        andersson@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        konrad.dybcio@linaro.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht
References: <20230315051220.5614-1-nikita@trvn.ru>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230315051220.5614-1-nikita@trvn.ru>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/03/2023 06:12, Nikita Travkin wrote:
> Acer Aspire 1 is a laptop based on sc7180. Document it's compatible.
> 
> Signed-off-by: Nikita Travkin <nikita@trvn.ru>
> ---
> Changes in v2:
>  - Merge with IDP (Krzysztof)


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

