Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DDE92624D3E
	for <lists+devicetree@lfdr.de>; Thu, 10 Nov 2022 22:45:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229520AbiKJVpJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Nov 2022 16:45:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53886 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231849AbiKJVpI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Nov 2022 16:45:08 -0500
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 57EE545ED4
        for <devicetree@vger.kernel.org>; Thu, 10 Nov 2022 13:45:07 -0800 (PST)
Received: by mail-lj1-x233.google.com with SMTP id t10so2487809ljj.0
        for <devicetree@vger.kernel.org>; Thu, 10 Nov 2022 13:45:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2Ycm4yI7Fjm7qLhACsZB89mJNY3y5LzgYSf1XQcN9Y4=;
        b=Q4bUJgTwdovmX1vqvVMapo117LNmOIzvO0a281XV/F3WwAHILMwd03RHWEq7tlhPDy
         XIVG7SryDYCP6zgWHaO3g9DFIcU235EUJ0uaAYxp5hRpQgYBhu7OUZQBLt0csz+xO1Fv
         vfWuAuMx/h4fIWfkGDciHM7vgG+pTlkikLp0aqPnQu1Qjy3efcr2IhroSpsWrkDiuYAF
         gbcEjP4H7mVo/fkmrf+X1Fyvap2jlyvb8Rubq7o7JKZ9PXGIh1yR8EAw0Ymenu+TGP8k
         fu4eyNFYGzy3qpSOYrNMRals6Rok32PmjtqisdWGueuoWzjFXi0hNAlz3UD+oFHr2DPo
         JVfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2Ycm4yI7Fjm7qLhACsZB89mJNY3y5LzgYSf1XQcN9Y4=;
        b=LEjyI6lYXt7O0Rdcl5EL+8IYnrUVHmPb/pl73xC8ViKKhrM+88yVxln6TdLiBTNSih
         IjQRk6AslKmg1vBFHHgrN2BnasTUBNUk1ApMuhtiauI33EUi2xa78M1aO4FlmdzGPzTm
         Ud1PJj4nndHZgNFG7WIRBEVozyC8jknkXKSnUBBVx9jPWS5mIteX6zNw3Y9a/VVU0D6c
         0cT7X98yrs1Ag3aruD3WpGaUyERaoVhJNVDbOB9pruNsG6/ya0hp4VS+RODflP/ukECA
         vhlo5HsxFbXenwvUqCgESFRKyigvp9tc/jj2385MadsO5UaAK0SRjpEjfmSsd8uwYnQ9
         uQXw==
X-Gm-Message-State: ACrzQf3lXUvfz6D50VvN86sU82KoWpg8OZwlWixsVDRTNo+bhrErB1lV
        LZjDd++98SUxJuK1LmpNOA9gIQ==
X-Google-Smtp-Source: AMsMyM5Yl3UNkJaH9rgIXunnY/WAMaQL8CpcD1fuGcZGK75QSChlvq2RNL7B4AkfY67/O7rs7SCNQw==
X-Received: by 2002:a05:651c:1113:b0:277:515b:3dae with SMTP id e19-20020a05651c111300b00277515b3daemr9577709ljo.487.1668116705580;
        Thu, 10 Nov 2022 13:45:05 -0800 (PST)
Received: from [10.10.15.130] ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id d16-20020ac24c90000000b004949a8df775sm39905lfl.33.2022.11.10.13.45.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Nov 2022 13:45:05 -0800 (PST)
Message-ID: <b62e7239-0fef-e19c-5653-96f72b7b89b5@linaro.org>
Date:   Fri, 11 Nov 2022 00:45:04 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH v9 05/12] dt-bindings: display/msm: move common MDSS
 properties to mdss-common.yaml
Content-Language: en-GB
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, Rob Herring <robh@kernel.org>
References: <20221024164225.3236654-1-dmitry.baryshkov@linaro.org>
 <20221024164225.3236654-6-dmitry.baryshkov@linaro.org>
 <f72aeaa0-0c0a-86d9-0b9b-db3810c35fad@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <f72aeaa0-0c0a-86d9-0b9b-db3810c35fad@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/11/2022 14:05, Krzysztof Kozlowski wrote:
> On 24/10/2022 18:42, Dmitry Baryshkov wrote:
>> Move properties common to all MDSS DT nodes to the mdss-common.yaml.
>>
>> This extends qcom,msm8998-mdss schema to allow interconnect nodes, which
>> will be added later, once msm8998 gains interconnect support.
> 
> 
> (...)
> 
>> +    minItems: 1
>> +    items:
>> +      - description: Interconnect path from mdp0 (or a single mdp) port to the data bus
>> +      - description: Interconnect path from mdp1 port to the data bus
>> +
>> +  interconnect-names:
>> +    minItems: 1
>> +    items:
>> +      - const: mdp0-mem
>> +      - const: mdp1-mem
>> +
>> +  resets:
>> +    items:
>> +      - description: MDSS_CORE reset
>> +
>> +required:
>> +  - compatible
> 
> For consistency this should not be required here, but in schema actually
> defining it.
> 
>> +  - reg
>> +  - reg-names
>> +  - power-domains
>> +  - clocks
>> +  - interrupts
>> +  - interrupt-controller
>> +  - iommus
>> +  - ranges
> 
> Keep the same order as in list of top-level properties.

But the order is the same.

Compare:
   reg:
   reg-names:
   power-domains:
   clocks:
   clock-names:
   interrupts:
   interrupt-controller: true
   iommus:
   ranges: true
   interconnects:
   interconnect-names:
   resets:

I'll add clock-names, but the rest is correct (interconnects and resets 
are optional).

> 
>> +
>> +additionalProperties: true
> 
> Best regards,
> Krzysztof
> 

-- 
With best wishes
Dmitry

