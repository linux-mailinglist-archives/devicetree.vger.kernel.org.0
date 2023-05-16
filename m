Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C94467053E5
	for <lists+devicetree@lfdr.de>; Tue, 16 May 2023 18:31:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231342AbjEPQbb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 May 2023 12:31:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58850 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231165AbjEPQau (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 May 2023 12:30:50 -0400
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1180E868B
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 09:30:37 -0700 (PDT)
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-510b56724caso1415118a12.1
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 09:30:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684254636; x=1686846636;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=o2egx7pKdo7hKCu8ecQHiY2RdPrbeRAnvEMoArjgQVY=;
        b=fxJiDDHrOBNfddCCq2XRU5C9T1UH+BE8JKm7yC4zblT3D8kFtsKxC7KdpYq/Ib473l
         LNwfIpv5rxpw/2UaF5NJu6d6no0+nOowl61LHBDDf7+KuZncIpnYi1btTUS14/llLtgi
         OlrxLRhHju6z8CrxIrtNjd5o16JhWYW3wrrAs3X7W0sOaRp9mKTSKI0UWNfaUNYd2o6T
         Z9DskdyFk6mUFQI5p8cXp5MGu4AY5nzlw2zjHcmL6jpqRUBGcpQjEc7+IR2cq/VJmpbd
         zAm0dC9S4zDQr7XcU32exsqiSnNlbbd+DASLiEqKk5AamDImXCUV5+gFSiKhPA2aYEQw
         F2gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684254636; x=1686846636;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=o2egx7pKdo7hKCu8ecQHiY2RdPrbeRAnvEMoArjgQVY=;
        b=jR+mfQmg6gGIzNIOjyfBJuepen02UEvK9Aj/Y8kbNZ5u2kJXLX6HHyL2xukq0K/rpQ
         w2F2aMRQsQC4S5oUqoqOGRq8F+fom+KuUn4LoGM38K1QEBq03i/hp5jqmOnDDnyV4l0w
         H6/2cEj09w3Irmqo11kjHPGt0BHZANFcEc9if1Ef4caNcrYh9aCb8OY45at6EoELq99X
         Q5Um/w/7hTbH1nzj0HlOo1W56UHSOqyQ6AiG/CT/GtsvwbvrBH00EGbQfzOdt/X4cp/v
         bn6zVVVcWZ3KjPW7etyiSKZ4AxQV1eq1t2oY4vZWtYLVQJHTYfrhE7ZPmSgOGwVmzmpk
         BwFw==
X-Gm-Message-State: AC+VfDxoGQUAdZUFv2i3UHV1cdrFnjAeBTmC4DTpTB7EoRxSM1pUE4Zp
        aHpiNB0lzSF3Z8mTttD83u3ztA==
X-Google-Smtp-Source: ACHHUZ60KyfYAnnJ//jpubqQMDSCd+HMvNY20wRSEQTj1ESOupsPRc0loIf8bxo97R9sKjBxhNur5g==
X-Received: by 2002:a17:907:8a08:b0:969:2df9:a0dd with SMTP id sc8-20020a1709078a0800b009692df9a0ddmr27772267ejc.25.1684254636022;
        Tue, 16 May 2023 09:30:36 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:77d1:16a1:abe1:84fc? ([2a02:810d:15c0:828:77d1:16a1:abe1:84fc])
        by smtp.gmail.com with ESMTPSA id ka13-20020a170907920d00b0096637a19dc7sm11216905ejb.108.2023.05.16.09.30.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 May 2023 09:30:35 -0700 (PDT)
Message-ID: <4a53ed0d-c34b-cea5-b407-066242500611@linaro.org>
Date:   Tue, 16 May 2023 18:30:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] arm64: dts: nuvoton: add missing cache properties
Content-Language: en-US
To:     Avi Fishman <avifishman70@gmail.com>,
        Tomer Maimon <tmaimon77@gmail.com>,
        Tali Perry <tali.perry1@gmail.com>,
        Patrick Venture <venture@google.com>,
        Nancy Yuen <yuenn@google.com>,
        Benjamin Fair <benjaminfair@google.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        openbmc@lists.ozlabs.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230421223154.115312-1-krzysztof.kozlowski@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230421223154.115312-1-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/04/2023 00:31, Krzysztof Kozlowski wrote:
> As all level 2 and level 3 caches are unified, add required
> cache-unified and cache-level properties to fix warnings like:
> 
>   nuvoton-npcm845-evb.dtb: l2-cache: 'cache-level' is a required property
>   nuvoton-npcm845-evb.dtb: l2-cache: 'cache-unified' is a required property
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> ---
> 
> Please take the patch via sub-arch SoC tree.
> ---

Hi Tomer, Tali, Patrick and others,

Anyone picking this up?

Best regards,
Krzysztof

