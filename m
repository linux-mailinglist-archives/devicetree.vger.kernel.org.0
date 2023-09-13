Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 313E879E14B
	for <lists+devicetree@lfdr.de>; Wed, 13 Sep 2023 09:58:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238663AbjIMH6e (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Sep 2023 03:58:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57298 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238695AbjIMH6d (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Sep 2023 03:58:33 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1C5AC198B
        for <devicetree@vger.kernel.org>; Wed, 13 Sep 2023 00:58:29 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-313e742a787so377984f8f.1
        for <devicetree@vger.kernel.org>; Wed, 13 Sep 2023 00:58:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694591907; x=1695196707; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nFueJl78mh+PKTiVs6I5JpNS70hNWQMI7pbyEB+VCP4=;
        b=XHEPFG3YTQIVJJ7ZQK8w3pYkzpQbJT4n4GkBIVBv+u1i2+CPDrRYtPqUkvWkilI/6l
         ziCtydPGH+UsKSDaWOpJtflVWxrpV1y/hXDWzURTHTbUxosxZzot2TaXFVqJMiZfocN7
         kiX+fEfTaLa191+QVSyjFx++u6VFf8vtAnV7/YlJY6ZItXTADrDl9yXQqGAHc1hudKJh
         r5sRpT6sM5gBWZeYdzPsg0E5A4uXvXKSWsJMQN1wjKJTm1d7N65CUsZ/iuswTziUr0A0
         cr6K6pDzwnkrAokPS6FojU0wX/gRBa+7WnnIvxLj0nG92zThwEivfVtTbLkxx8Tq5Apx
         v/sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694591907; x=1695196707;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nFueJl78mh+PKTiVs6I5JpNS70hNWQMI7pbyEB+VCP4=;
        b=cii3EDkNz6no5sKfuzF8K2cVsG9H/SZzO2EGoGf5Zd9j0Yum/q1u7VU6PAO4t2oIkL
         hWd8v0Wq/7yHG5lrc2tX2QyPySTB/02d2ciCNi6Y8uf/gFL0UHHp5aZn/9yMisrm6196
         AvCwgiwBdMnZntdJy0jSqtc5PgJTwQe8G3NM/S+Yb1Z4qfs+lEOvHDbsCIVuf2frf1jh
         TAhnoc2Va4QyDTeq4ljDtADrPqveD1e/vPbDiPRcuwRrcXI1ugRnexCbX/9bcHHH3I7p
         PKRb0yRDm2dcPOGqurxf2ohPUgjd4xY1D3Y/os3IttJ1tp8h5Y9HCoBzEVlzl3VbjfSJ
         ZndA==
X-Gm-Message-State: AOJu0YxTWoqd5454sMHZ7Tn1dl2y0pjIqrFZa8huvr/uLotKq4fSNvwH
        QlOhaB8BPeCDMDrp60IjzpDCpQ==
X-Google-Smtp-Source: AGHT+IHUg+HymGtIogUF6zI/UwDj8czk/y4R74TkkVBPkkz6kjD4I29RU6Ea65Zrv7c1m/0uHXvrjA==
X-Received: by 2002:a05:6000:1364:b0:31c:8c5f:877e with SMTP id q4-20020a056000136400b0031c8c5f877emr3711400wrz.33.1694591907432;
        Wed, 13 Sep 2023 00:58:27 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id f2-20020a7bc8c2000000b003fefca26c72sm1244434wml.23.2023.09.13.00.58.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Sep 2023 00:58:26 -0700 (PDT)
Message-ID: <a74d0d3b-1729-c4e0-eb79-e7653e87e862@linaro.org>
Date:   Wed, 13 Sep 2023 09:58:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH v2 07/10] dt-bindings: rng: add st,rng-lock-conf
Content-Language: en-US
To:     Gatien CHEVALLIER <gatien.chevallier@foss.st.com>,
        Olivia Mackall <olivia@selenic.com>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc:     Lionel Debieve <lionel.debieve@foss.st.com>,
        linux-crypto@vger.kernel.org, devicetree@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20230911120203.774632-1-gatien.chevallier@foss.st.com>
 <20230911120203.774632-8-gatien.chevallier@foss.st.com>
 <28ec58a3-63d5-f604-cef9-571b062fe244@linaro.org>
 <d5f2d1b3-fc91-76f0-af3d-bcdf6c4b5703@foss.st.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <d5f2d1b3-fc91-76f0-af3d-bcdf6c4b5703@foss.st.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/09/2023 09:48, Gatien CHEVALLIER wrote:
> On 9/12/23 16:38, Krzysztof Kozlowski wrote:
>> On 11/09/2023 14:02, Gatien Chevallier wrote:
>>> If st,rng-lock-conf is set, the RNG configuration in RNG_CR, RNG_HTCR
>>> and RNG_NSCR will be locked. It is supported starting from the RNG
>>> version present in the STM32MP13
>>>
>>> Signed-off-by: Gatien Chevallier <gatien.chevallier@foss.st.com>
>>
>> How did you implement the comment? There is no changelog, so was it ignored?
>>
>> Best regards,
>> Krzysztof
>>
> 
> Hello Krzysztof,
> 
> I've sent V2 before Rob's review. I'll apply Rob's comment for V3.

Ah, ok.

Best regards,
Krzysztof

