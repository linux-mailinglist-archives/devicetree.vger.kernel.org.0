Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 122926BED53
	for <lists+devicetree@lfdr.de>; Fri, 17 Mar 2023 16:52:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230031AbjCQPwC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Mar 2023 11:52:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40728 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230194AbjCQPv5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Mar 2023 11:51:57 -0400
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 14C0EB32A7
        for <devicetree@vger.kernel.org>; Fri, 17 Mar 2023 08:51:51 -0700 (PDT)
Received: by mail-ed1-x52b.google.com with SMTP id ek18so22163106edb.6
        for <devicetree@vger.kernel.org>; Fri, 17 Mar 2023 08:51:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679068310;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1cIpYuiiojMCAobzId5qhGl15omtaJyYTL0wLJn7tlw=;
        b=r4FWwpLz5EizZals039cnMitbYb5uYCyPwkPRq5WbTZ3j9i0MpgFtKDGTSC0sCPYo3
         wq3J8TeaNpeWlTXtk8d2+9jqEVYOhCbM51tGGwjhkRr66icLIqzvLbSyOtWGBAXwP8Y7
         a6fYl8Ol13qYlzmtpX0Y7vm89kS2L7NjddXyeG01OxMUblaCxu3B+Ok3e5GGx9lh0A9D
         uGKeeGcbXkPUtFj8zuxt8Yx6mrwe3Rn19fGkbLzvbJmMVXzCfX+aFjSHMknWbBfVGI2u
         nITkw5gEKVR5x8bAmO75XvCCJTjPJ3iTWGkxTuwNP5YmrSoDpeBW95WVYv3B3Mkfvdnv
         v4LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679068310;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1cIpYuiiojMCAobzId5qhGl15omtaJyYTL0wLJn7tlw=;
        b=DMiKxLJiZrhR0gskMQP4ouK+0cclMaa5/VGlTQtjMiQ86GLcmSxlRkFlIgS+VCZxT6
         GRynBtGaQDmZ2XFzwHp9hfsTIIbtNWWxHmhk98Xi0Qm17BU6C7wp+DoA/DIN6Wpk/Q4x
         AuR7T3t3j631U2uY6qCuVrMzpQhI3MY/b8pAcFgrEp87zjwbD9ZD0CBuVj92H2UUxxyo
         5VuPj7NoKiqgBuSVz+geNbVsC3FKN1NFlb1i2FjA57cut6sCeH3/5yZG81Jfe3lQtx5V
         la1Mz9C69wz+Lmrq8tNBiMXJ1ELh4CApEBt0cUPs7ijVbvxtiengBxNlrd0aqZL8Y64x
         H7ug==
X-Gm-Message-State: AO0yUKUd1HlrScryYhbyNL5JovXLcspUa+m4BUUtWKrh43NMJ/UFYGAz
        uZcre9OBb8Gsir8AixyoIuAOHw==
X-Google-Smtp-Source: AK7set+tkXJTwK4Pn7J0ZPe/SkUpMPj1xgCu7jKs+Qax7Y3gqkIIsxGyK2DPXf4gUTaMk/QoBWqyHw==
X-Received: by 2002:a17:907:1ca8:b0:91d:9745:407a with SMTP id nb40-20020a1709071ca800b0091d9745407amr58457ejc.14.1679068310057;
        Fri, 17 Mar 2023 08:51:50 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:d013:3eeb:7658:cec? ([2a02:810d:15c0:828:d013:3eeb:7658:cec])
        by smtp.gmail.com with ESMTPSA id k8-20020a17090627c800b008d1693c212csm1105635ejc.8.2023.03.17.08.51.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Mar 2023 08:51:49 -0700 (PDT)
Message-ID: <c904c1ec-9080-0cc0-ae86-7d369d52e818@linaro.org>
Date:   Fri, 17 Mar 2023 16:51:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v2 1/2] dt-bindings: spi: add loongson spi
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     zhuyinbo <zhuyinbo@loongson.cn>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-spi@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Jianmin Lv <lvjianmin@loongson.cn>, wanghongliang@loongson.cn,
        Liu Peibao <liupeibao@loongson.cn>,
        loongson-kernel@lists.loongnix.cn
References: <20230317082950.12738-1-zhuyinbo@loongson.cn>
 <20230317082950.12738-2-zhuyinbo@loongson.cn>
 <a736c6db-466a-12e4-8e22-c8dc900978d4@linaro.org>
 <e944732b-9a2d-b6ff-8336-7363788809b9@loongson.cn>
 <7469290a-0671-7d2f-b0ce-cdde2a9e66cc@linaro.org>
In-Reply-To: <7469290a-0671-7d2f-b0ce-cdde2a9e66cc@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/03/2023 16:51, Krzysztof Kozlowski wrote:
> On 17/03/2023 11:00, zhuyinbo wrote:
>>>> +properties:
>>>> +  compatible:
>>>> +    enum:
>>>> +      - loongson,ls2k-spi
>>>> +      - loongson,ls7a-spi
>>>> +
>>>> +  reg:
>>>> +    maxItems: 1
>>>> +
>>>> +  clocks:
>>>> +    minItems: 1
>>> I don't understand why did you change it. I did not ask for it.
>>>
>>> Best regards,
>>> Krzysztof
>> Add clocks "minItems: 1" description is for fix yaml file compile issue.
> 
> minItems: 1 is not correct, so you cannot use incorrect code to suppress
> some warning. This should be list the clocks or use maxItems: 1, if you
> have only one clock.

BTW, as Rob's bot reports, this wasn't even tested... Please test the
patches before sending them.

Best regards,
Krzysztof

