Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 434B46D975B
	for <lists+devicetree@lfdr.de>; Thu,  6 Apr 2023 14:53:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236599AbjDFMxD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Apr 2023 08:53:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50280 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237993AbjDFMxC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Apr 2023 08:53:02 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AAEA849F1
        for <devicetree@vger.kernel.org>; Thu,  6 Apr 2023 05:53:00 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id br6so50652451lfb.11
        for <devicetree@vger.kernel.org>; Thu, 06 Apr 2023 05:53:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680785579;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lbC+iDQolRLSwOunJ/j7FQP3aZrBUa7C2T5gWVYhv6I=;
        b=zvpzUfUNH0GaukXLBpAPf+hyShEdxGxtOyRluKQdxEtL4QovW/AkW/ylzw1ZaXMDtA
         k/3W7Pick4ECwKGVjnf06RQCkdb0mN2xE5IeE5sv9Gw2IIutccQwQx/++EOHPlzdMsH6
         GsjLFOKt7NNvQhsfj8bEYMC27jBNpDMUcg91xXE1rK0VCaBb+iA0U8R/0NIO1JRQKZ2m
         LPtPSJirHSB05LBpEne3q/R8NhgqnwbqW+Plwu7B8Bst4cKi8Sd/lyZiZVytq/9e9P70
         kPjQK++aERFwC1g5gXjSODs39UIli3d8luM642smqM6GgAauZWGZh+n0ekiDfxoBeyrW
         TNZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680785579;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lbC+iDQolRLSwOunJ/j7FQP3aZrBUa7C2T5gWVYhv6I=;
        b=m0uNdXP++3qfTqkHEh+Ovo1VOS7ijTNn4a+JZc4hVSK3V1T2DA1rceK2NtC21xixD3
         VOiOICPex1rXwsk4hfRQL6rHMkpbTcZ2b1HE0MHMwpnRD8o3wXJ5jsiPfk6UVM22jpxv
         mUdrjCxz75kR9FrXyzIURXoT3IB201YoCrC7lRipdWrQfqEr7g9tE9k3xlnGjQut7p/o
         kRyQepAKgwm8IaOjxGO+7bsRTfTgCnhM/DEPCz2ccFE1UphB3fzkiFgSrLkNIDE7lOb2
         sRb8ZQGkS27nt230bTXEwuHAwzoSaUBl9LnpBnzjaL5N2Jdv5/QrIq8O3MBj2zf3BROo
         NWbg==
X-Gm-Message-State: AAQBX9dqb3/XkD1ZCOlxs7WvdURvgxWdhecNRNjAecuheT1S1TqkTfBc
        UjVS/NhNclAQJXbqlPnsQfFjUw==
X-Google-Smtp-Source: AKy350b/+CKd1ZodmBJD15FdPa3PXTOhvJljgBnSb42oOTa4LlbkXPdGlX4ifOYVKBresOlnli8ugA==
X-Received: by 2002:a19:ae03:0:b0:4ec:5648:70e4 with SMTP id f3-20020a19ae03000000b004ec564870e4mr158178lfc.12.1680785578924;
        Thu, 06 Apr 2023 05:52:58 -0700 (PDT)
Received: from [192.168.1.101] (abxh37.neoplus.adsl.tpnet.pl. [83.9.1.37])
        by smtp.gmail.com with ESMTPSA id y2-20020ac24462000000b004db1a7e6decsm249856lfl.205.2023.04.06.05.52.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Apr 2023 05:52:58 -0700 (PDT)
Message-ID: <857aa6c9-3dcb-d5f7-14bb-6c69c9167b09@linaro.org>
Date:   Thu, 6 Apr 2023 14:52:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v2 1/2] dt-bindings: net: Convert ATH10K to YAML
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>
Cc:     Eric Dumazet <edumazet@google.com>, linux-wireless@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org,
        "David S. Miller" <davem@davemloft.net>,
        linux-kernel@vger.kernel.org, Paolo Abeni <pabeni@redhat.com>,
        Rob Herring <robh+dt@kernel.org>, netdev@vger.kernel.org,
        Bjorn Andersson <andersson@kernel.org>,
        Kalle Valo <kvalo@kernel.org>, Andy Gross <agross@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
        ath10k@lists.infradead.org
References: <20230406-topic-ath10k_bindings-v2-0-557f884a65d1@linaro.org>
 <20230406-topic-ath10k_bindings-v2-1-557f884a65d1@linaro.org>
 <168078494959.2736424.13312532374051031538.robh@kernel.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <168078494959.2736424.13312532374051031538.robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 6.04.2023 14:47, Rob Herring wrote:
> 
> On Thu, 06 Apr 2023 13:54:04 +0200, Konrad Dybcio wrote:
>> Convert the ATH10K bindings to YAML.
>>
>> Dropped properties that are absent at the current state of mainline:
>> - qcom,msi_addr
>> - qcom,msi_base
>>
>> qcom,coexist-support and qcom,coexist-gpio-pin do very little and should
>> be reconsidered on the driver side, especially the latter one.
>>
>> Somewhat based on the ath11k bindings.
>>
>> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
>> ---
>>  .../bindings/net/wireless/qcom,ath10k.txt          | 215 ------------
>>  .../bindings/net/wireless/qcom,ath10k.yaml         | 359 +++++++++++++++++++++
>>  2 files changed, 359 insertions(+), 215 deletions(-)
>>
> 
> My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
> on your patch (DT_CHECKER_FLAGS is new in v5.13):
> 
> yamllint warnings/errors:
> 
> dtschema/dtc warnings/errors:
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/net/wireless/qcom,ath10k.example.dtb: wifi@18800000: wifi-firmware: 'wifi-firmware' does not match any of the regexes: 'pinctrl-[0-9]+'
> 	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/net/wireless/qcom,ath10k.yaml
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/net/wireless/qcom,ath10k.example.dtb: wifi@18800000: wifi-firmware: 'iommus' is a required property
> 	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/net/wireless/qcom,ath10k.yaml
> 
> doc reference errors (make refcheckdocs):
> MAINTAINERS: Documentation/devicetree/bindings/net/wireless/qcom,ath10k.txt
> 
> See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20230406-topic-ath10k_bindings-v2-1-557f884a65d1@linaro.org
Oh, CHECK_DTBS=1 doesn't run dt_binding_check and I didn't run that
explicitly before resending.. my bad..

Konrad
> 
> The base for the series is generally the latest rc1. A different dependency
> should be noted in *this* patch.
> 
> If you already ran 'make dt_binding_check' and didn't see the above
> error(s), then make sure 'yamllint' is installed and dt-schema is up to
> date:
> 
> pip3 install dtschema --upgrade
> 
> Please check and re-submit after running the above command yourself. Note
> that DT_SCHEMA_FILES can be set to your schema file to speed up checking
> your schema. However, it must be unset to test all examples with your schema.
> 
