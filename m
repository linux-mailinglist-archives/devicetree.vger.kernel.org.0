Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6ED7B642D55
	for <lists+devicetree@lfdr.de>; Mon,  5 Dec 2022 17:44:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233236AbiLEQoF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Dec 2022 11:44:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41768 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232447AbiLEQnm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Dec 2022 11:43:42 -0500
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B805E23147
        for <devicetree@vger.kernel.org>; Mon,  5 Dec 2022 08:41:06 -0800 (PST)
Received: by mail-lf1-x133.google.com with SMTP id f21so18600846lfm.9
        for <devicetree@vger.kernel.org>; Mon, 05 Dec 2022 08:41:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bvMgHr6nPNPCQ6s9XZ/way5jh4b4axpnbYsUz+kyGTI=;
        b=c54vrVFVS2uXGLTFnEdpGMoa6TedWKj6PV3FlSbNDaEIvY5QCcVq7Ei34BsCnzZdYU
         jbAuEgwMF9keo5PtqzvAYljnGM/ZZZlHVK8n0jBWhzhRxn3P0s3yngmpatWEK5N+MgGu
         vOyrHe165cLrGPj0CZvm/MRCeKqionRWeDNlDvkdC/dNsqs7X7+Z9Vz6MhXAlMZnKfTv
         7hlq0fAexRMvCIniSIm3g7/8C58alE9SK46Lyfm+97kP+9ZWpBkH/4AHlsfayIBpq+Bu
         VB8h+F8vvqHydSbXkzdOm9RHDzqP5A9WZgpeU8OZUu4JJAOAtmVq9E4Z5tXkFVlSjEtj
         OFiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bvMgHr6nPNPCQ6s9XZ/way5jh4b4axpnbYsUz+kyGTI=;
        b=rUj3JypM89P6D4479vt/bxLNAB+sk2iT+l6ZQPijpmccBRwXI6P1NbYWZaKDg+2FVU
         iWddc5TZX/eeg07yzfZgVk+Cx0UVcvlyUXGvCXwOa9tqkiwHliKCw+11wKw48c0a39Xf
         kE3fX3SDORgTArqASgC6ObLXFbVLDDkjD8Vw0T+7tsIDtod86BWXHaptDAdB4cqNUFu0
         TlnBcPf00Q3+JtmHWVYDo3RXptsrCzlEi20l5uyCnNJXVulqjYZGaTP0wHCfd/QLl/z+
         HBi2EGG2bmQ1YxtJDpjQB80bsIfTUXBnZmZmLDaq//x4vqCNfdRifyZYknfnqmgV8Lnn
         pL5g==
X-Gm-Message-State: ANoB5pmjG0GyI+99aGCvmgr6hnzN98oySIHDhJIV3eaDyR1pBWK7+Whw
        WeNtb5Ua8sQRUkCc6LDzPRFMrw==
X-Google-Smtp-Source: AA0mqf7T45b55x2OCvNz9d9cyoRsQVns6gCdondv79dZmrOp7q6DCFfydDulpPNlkgsSJS5Lrxiqxg==
X-Received: by 2002:a19:6903:0:b0:499:8e29:2763 with SMTP id e3-20020a196903000000b004998e292763mr30993354lfc.137.1670258465111;
        Mon, 05 Dec 2022 08:41:05 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id bk37-20020a05651c23a500b002770eafaafbsm1430093ljb.99.2022.12.05.08.41.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Dec 2022 08:41:04 -0800 (PST)
Message-ID: <bd0dad44-05b2-39fa-aac8-da322b33a535@linaro.org>
Date:   Mon, 5 Dec 2022 17:41:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH 1/2] dt-bindings: Drop Jee Heng Sia
To:     Rob Herring <robh@kernel.org>
Cc:     Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>,
        Vinod Koul <vkoul@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Daniele Alessandrelli <daniele.alessandrelli@intel.com>,
        "Paul J. Murphy" <paul.j.murphy@intel.com>,
        dmaengine@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, alsa-devel@alsa-project.org
References: <20221203162144.99225-1-krzysztof.kozlowski@linaro.org>
 <20221205163453.GA2034441-robh@kernel.org>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221205163453.GA2034441-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/12/2022 17:34, Rob Herring wrote:
> On Sat, Dec 03, 2022 at 05:21:43PM +0100, Krzysztof Kozlowski wrote:
>> Emails to Jee Heng Sia bounce ("550 #5.1.0 Address rejected.").  Add
>> Keembay platform maintainers as Keembay I2S maintainers.
>>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> ---
>>  Documentation/devicetree/bindings/dma/snps,dw-axi-dmac.yaml    | 1 -
>>  Documentation/devicetree/bindings/sound/intel,keembay-i2s.yaml | 3 ++-
>>  2 files changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/dma/snps,dw-axi-dmac.yaml b/Documentation/devicetree/bindings/dma/snps,dw-axi-dmac.yaml
>> index 67aa7bb6d36a..ad107a4d3b33 100644
>> --- a/Documentation/devicetree/bindings/dma/snps,dw-axi-dmac.yaml
>> +++ b/Documentation/devicetree/bindings/dma/snps,dw-axi-dmac.yaml
>> @@ -8,7 +8,6 @@ title: Synopsys DesignWare AXI DMA Controller
>>  
>>  maintainers:
>>    - Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>
>> -  - Jee Heng Sia <jee.heng.sia@intel.com>
>>  
>>  description:
>>    Synopsys DesignWare AXI DMA Controller DT Binding
>> diff --git a/Documentation/devicetree/bindings/sound/intel,keembay-i2s.yaml b/Documentation/devicetree/bindings/sound/intel,keembay-i2s.yaml
>> index 2ac0a4b3cd18..33ab0be036a1 100644
>> --- a/Documentation/devicetree/bindings/sound/intel,keembay-i2s.yaml
>> +++ b/Documentation/devicetree/bindings/sound/intel,keembay-i2s.yaml
>> @@ -8,7 +8,8 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
>>  title: Intel KeemBay I2S
>>  
>>  maintainers:
>> -  - Sia, Jee Heng <jee.heng.sia@intel.com>
>> +  - Daniele Alessandrelli <daniele.alessandrelli@intel.com>
>> +  - Paul J. Murphy <paul.j.murphy@intel.com
> 
> Missing '>'

Indeed, thanks.

Best regards,
Krzysztof

