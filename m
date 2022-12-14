Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5E03B64C66F
	for <lists+devicetree@lfdr.de>; Wed, 14 Dec 2022 10:55:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238023AbiLNJzw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Dec 2022 04:55:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58548 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237956AbiLNJzv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Dec 2022 04:55:51 -0500
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 69753CFE
        for <devicetree@vger.kernel.org>; Wed, 14 Dec 2022 01:55:50 -0800 (PST)
Received: by mail-lf1-x130.google.com with SMTP id x28so9533729lfn.6
        for <devicetree@vger.kernel.org>; Wed, 14 Dec 2022 01:55:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=78QDE5N8RG05qGyTmlxC3eJ9uMj20MpNycm8BPZ87vc=;
        b=T2xF5Pnwy1UdETnRRJ48cDvLHMPBQh+KvMnhODu6q3YNnnRKr5+YYsRpgEXPvNzrJP
         0BQ1r/xPFHlqlMKoEg700GUcxKASwvpUY1ArJ8u+wL1+dY7Bnwc9qENMXy+m3MMfJJL8
         u5VNIX8FyKYW+4adRjHUGd/2U+4TePLzYg/jyxltrvLzXIwVyORc7UhNoZy2Qvnb767s
         2dRuLhZOQDidDjJXBPew2a6WQAyhiA1luVqH6CrtyqYFE4hLEfsNTYon+/utM5m3sxt5
         KbRkm0apsA+OxDcxUTDvqpu2s36X1nxlGW2Pn9w+f1cyv5ZUR+v21kLBn784WWC3I6v6
         KfKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=78QDE5N8RG05qGyTmlxC3eJ9uMj20MpNycm8BPZ87vc=;
        b=NXPrOGnuTje60OyrpZIFmm/CgQq/0NqcGvzao2wWB/u8ntAkEtK2AoP2P23tpRceE/
         Eh3gEWiVugQzmxeU2+inngf7llwCq1+K1q21B3vZIVGQcTvDzAMeBHGFLHJhGhtZpBK3
         iTSBScLFBy3HtwOQ3qN6Qj3zxLKUXrIQG9LtN75cEZHJQ98FmW9AEUsg6ekgAxinDd5L
         GI8L15jz6yUID3uNJRSURi8iK/dHTJ6+u7XjgswrFMpKfje/1w2ZY4PAxAQxGKJR7xXs
         A/PF1orJvWFmavidEDEMCoa3LwDZe1vAvYcxiIQukM17q1wT2rfrRwEJOx6ePjfyUl5R
         8gVw==
X-Gm-Message-State: ANoB5pkkYLq488EzM3adpVi+mw8GUS0ALFnHdTYwmoc0csed/JA/eJC/
        aIfWAW5YgEMCm5Y3NbE5HO66mg==
X-Google-Smtp-Source: AA0mqf6qlshfSCoBXLmODKRloD6ixcJvP+RSYODjp2jUs594sPp8sxPYeBOgmZ5UVEZ7u3Q3c7P+Jw==
X-Received: by 2002:ac2:58d6:0:b0:4b5:799b:6c8b with SMTP id u22-20020ac258d6000000b004b5799b6c8bmr5845150lfo.56.1671011748782;
        Wed, 14 Dec 2022 01:55:48 -0800 (PST)
Received: from [192.168.1.101] (abxh44.neoplus.adsl.tpnet.pl. [83.9.1.44])
        by smtp.gmail.com with ESMTPSA id a16-20020a056512201000b004b40f5e7336sm735576lfb.199.2022.12.14.01.55.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Dec 2022 01:55:48 -0800 (PST)
Message-ID: <005d073c-a937-5ef8-a97b-09bc17d6f354@linaro.org>
Date:   Wed, 14 Dec 2022 10:55:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH 1/2] dt-bindings: reserved-memory: rmtfs: Document
 qcom,assign-to-nav
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-arm-msm@vger.kernel.org, andersson@kernel.org,
        agross@kernel.org
Cc:     marijn.suijten@somainline.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221213170340.456252-1-konrad.dybcio@linaro.org>
 <e79ae240-95ce-1629-70f3-378d98f38841@linaro.org>
Content-Language: en-US
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <e79ae240-95ce-1629-70f3-378d98f38841@linaro.org>
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



On 14.12.2022 09:11, Krzysztof Kozlowski wrote:
> On 13/12/2022 18:03, Konrad Dybcio wrote:
>> Some SoCs mandate that the RMTFS is also assigned to the NAV VM, while
>> others really don't want that. Since it has to be conditional, add a
>> bool property to toggle this behavior.
>>
>> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
>> ---
>>  .../devicetree/bindings/reserved-memory/qcom,rmtfs-mem.yaml  | 5 +++++
>>  1 file changed, 5 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/reserved-memory/qcom,rmtfs-mem.yaml b/Documentation/devicetree/bindings/reserved-memory/qcom,rmtfs-mem.yaml
>> index 2998f1c8f0db..1d8c4621178a 100644
>> --- a/Documentation/devicetree/bindings/reserved-memory/qcom,rmtfs-mem.yaml
>> +++ b/Documentation/devicetree/bindings/reserved-memory/qcom,rmtfs-mem.yaml
>> @@ -31,6 +31,11 @@ properties:
>>      description: >
>>        vmid of the remote processor, to set up memory protection
>>  
>> +  qcom,assign-to-nav:
>> +    type: boolean
>> +    description: >
> 
> No need for '>'
> 
>> +      whether to also assign the region to the NAV VM
> 
> Here and in property name you express desired Linux driver action, but
> it is better to express the property of the hardware. What is
> different/special in these SoCs or their configuration that additional
> assignment is needed?
Honestly, I have no clue.. probably there's something more complex
than was there before connected to GPS..

Konrad
> 
> 
> Best regards,
> Krzysztof
> 
